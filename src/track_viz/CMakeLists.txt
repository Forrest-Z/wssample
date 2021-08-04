cmake_minimum_required(VERSION 2.8.3)
project(track_viz)

SET(CMAKE_CXX_FLAGS "-std=c++14 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  planner_msgs
  localization_msgs
  tf
  geometry_msgs
  control_msgs
  tli65_can_msgs
)

find_package(Protobuf REQUIRED)
find_package(Eigen3 REQUIRED)

catkin_package()

find_path(pb_head
  NAMES TrackPoints.pb.h
  PATHS ~/zone3/src/track_points_proto/src
)

find_library(TrackPoints_LIBRARY 
  libTrackPoints.so
)

include_directories(
  include
  ${pb_head}
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}
  src/${PROJECT_NAME}.cc
)

target_link_libraries(${PROJECT_NAME}
  ${TrackPoints_LIBRARY}
  ${catkin_LIBRARIES}
  ${PROTOBUF_LIBRARY}
)

add_executable(tf 
  src/tf.cc
)

target_link_libraries(tf
  ${catkin_LIBRARIES}
)

add_executable(pose_viz
  src/pose.cc
)

target_link_libraries(pose_viz
  ${catkin_LIBRARIES}
)

add_executable(ego_box_viz
  src/ego_box.cc
)

target_link_libraries(ego_box_viz
  ${catkin_LIBRARIES}
)

add_executable(waypoints_viz
  src/waypoints.cc
)

target_link_libraries(waypoints_viz
  ${catkin_LIBRARIES}
)

target_compile_definitions(${PROJECT_NAME} PRIVATE
  DEBUG_FLAG
)

add_dependencies(${PROJECT_NAME}
  ${${PROJECT_NAME}_EXPORTED_TARGETS}
  ${catkin_EXPORTED_TARGETS}
)

#############
## Install ##
#############
install(TARGETS ${PROJECT_NAME}
        ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(TARGETS tf
        ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(TARGETS pose_viz
        ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(TARGETS ego_box_viz
        ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(TARGETS waypoints_viz
        ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)