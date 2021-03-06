#include "planner.h"

using namespace HybridAStar;
//###################################################
//                                        CONSTRUCTOR
//###################################################
Planner::Planner() {
    // _________________
    // TOPICS TO PUBLISH
    pubStart =
        n.advertise<geometry_msgs::PoseStamped>("/move_base_simple/start", 1);

    // ___________________
    // TOPICS TO SUBSCRIBE
    if (Constants::manual) {
        subMap = n.subscribe("/map", 1, &Planner::setMap, this);
    } else {
        subMap = n.subscribe("/occ_map", 1, &Planner::setMap, this);
    }

    subGoal = n.subscribe("/move_base_simple/goal", 1, &Planner::setGoal, this);
    subStart = n.subscribe("/initialpose", 1, &Planner::setStart, this);
};

//###################################################
//                                                MAP
//###################################################
// [m] in map, trans into cellSize
void Planner::setMap(const nav_msgs::OccupancyGrid::Ptr map) {
    grid = map;
    // update the configuration space with the current map
    configurationSpace.updateGrid(grid);
    // create array for Voronoi diagram
    //  ros::Time t0 = ros::Time::now();
    int height = grid->info.height;
    int width = grid->info.width;
    bool **binMap;
    binMap = new bool *[width];

    for (int x = 0; x < width; x++) {
        binMap[x] = new bool[height];
    }

    for (int x = 0; x < width; ++x) {
        for (int y = 0; y < height; ++y) {
            binMap[x][y] = grid->data[y * width + x] ? true : false;
        }
    }

    voronoiDiagram.initializeMap(width, height, binMap);
    voronoiDiagram.update();
    voronoiDiagram.visualize();
    //  ros::Time t1 = ros::Time::now();
    //  ros::Duration d(t1 - t0);
    //  std::cout << "created Voronoi Diagram in ms: " << d * 1000 << std::endl;
}

//###################################################
//                                   INITIALIZE START
//###################################################
void Planner::setStart(
    const geometry_msgs::PoseWithCovarianceStamped::ConstPtr &initial) {
    float x = initial->pose.pose.position.x / Constants::cellSize;
    float y = initial->pose.pose.position.y / Constants::cellSize;
    float t = tf::getYaw(initial->pose.pose.orientation);
    // publish the start without covariance for rviz
    geometry_msgs::PoseStamped startN;
    startN.pose.position = initial->pose.pose.position;
    startN.pose.orientation = initial->pose.pose.orientation;
    startN.header.frame_id = "map";
    startN.header.stamp = ros::Time::now();

    std::cout << "I am seeing a new start x:" << x << " y:" << y
              << " t:" << Helper::toDeg(t) << std::endl;

    if (grid->info.height >= y && y >= 0 && grid->info.width >= x && x >= 0) {
        validStart = true;
        start = *initial;

        if (Constants::manual) {
            plan();
        }

        // publish start for RViz
        pubStart.publish(startN);
    } else {
        std::cout << "invalid start x:" << x << " y:" << y
                  << " t:" << Helper::toDeg(t) << std::endl;
    }
}

//###################################################
//                                    INITIALIZE GOAL
//###################################################
void Planner::setGoal(const geometry_msgs::PoseStamped::ConstPtr &end) {
    // retrieving goal position
    float x = end->pose.position.x / Constants::cellSize;
    float y = end->pose.position.y / Constants::cellSize;
    float t = tf::getYaw(end->pose.orientation);

    std::cout << "I am seeing a new goal x:" << x << " y:" << y
              << " t:" << Helper::toDeg(t) << std::endl;

    if (grid->info.height >= y && y >= 0 && grid->info.width >= x && x >= 0) {
        validGoal = true;
        goal = *end;

        if (Constants::manual) {
            plan();
        }

    } else {
        std::cout << "invalid goal x:" << x << " y:" << y
                  << " t:" << Helper::toDeg(t) << std::endl;
    }
}

//###################################################
//                                      PLAN THE PATH
//###################################################
void Planner::plan() {
    // if a start as well as goal are defined go ahead and plan
    if (validStart && validGoal) {

        // ___________________________
        // LISTS ALLOWCATED ROW MAJOR ORDER
        int width = grid->info.width;
        int height = grid->info.height;
        int depth = Constants::headings;
        int length = width * height * depth;
        // define list pointers and initialize lists
        Node3D *nodes3D = new Node3D[length]();
        Node2D *nodes2D = new Node2D[width * height]();

        // ________________________
        // retrieving goal grid position
        float x = goal.pose.position.x;
        float y = goal.pose.position.y;
        float t = tf::getYaw(goal.pose.orientation);
        // set theta to a value (0,2PI]
        t = Helper::normalizeHeadingRad(t);
        const Node3D nGoal(x, y, t, 0, 0, nullptr);
        // __________
        // DEBUG GOAL
        //    const Node3D nGoal(155.349, 36.1969, 0.7615936, 0, 0, nullptr);

        // _________________________
        // retrieving start grid position
        x = start.pose.pose.position.x;
        y = start.pose.pose.position.y;
        t = tf::getYaw(start.pose.pose.orientation);
        // set theta to a value (0,2PI]
        t = Helper::normalizeHeadingRad(t);
        Node3D nStart(x, y, t, 0, 0, nullptr);
        // ___________
        // DEBUG START
        //    Node3D nStart(108.291, 30.1081, 0, 0, 0, nullptr);

        // ___________________________
        // START AND TIME THE PLANNING
        ros::Time t0 = ros::Time::now();

        // CLEAR THE VISUALIZATION
        // visualization.clear();
        // CLEAR THE PATH
        path.clear();
        smoothedPath.clear();
        // FIND THE PATH
        Node3D *nSolution = Algorithm::hybridAStar(
            nStart, nGoal, nodes3D, nodes2D, width, height, configurationSpace,
            dubinsLookup, visualization);

        // todo : 2021.3 xuy, nSolution check and reverse

        // TRACE THE PATH
        smoother.tracePath(nSolution);

        // 2021.3 xuy
        // CREATE THE UPDATED PATH for rviz
        path.updatePath(smoother.getPath());

        // SMOOTH THE PATH for rviz
        // smoother.smoothPath(voronoiDiagram);
        // CREATE THE UPDATED PATH
        // smoothedPath.updatePath(smoother.getPath());

        ros::Time t1 = ros::Time::now();
        ros::Duration d(t1 - t0);
        std::cout << "TIME in ms: " << d * 1000 << std::endl;

        // _________________________________
        // PUBLISH THE RESULTS OF THE SEARCH
        path.publishPath();
        path.publishPathNodes();
        path.publishPathVehicles();

        // smoothedPath.publishPath();
        // smoothedPath.publishPathNodes();
        // smoothedPath.publishPathVehicles();

        // visualization.publishNode3DCosts(nodes3D, width, height, depth);
        // visualization.publishNode2DCosts(nodes2D, width, height);

        delete[] nodes3D;
        delete[] nodes2D;

    } else {
        std::cout << "missing goal or start" << std::endl;
    }
}
