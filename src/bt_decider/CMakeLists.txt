cmake_minimum_required(VERSION 2.8.3)
project(bt_decider)

SET(CMAKE_CXX_FLAGS "-std=c++14 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  behaviortree_cpp_v3
  teledrive_msgs
  perception_msgs
  planner_msgs
  track_points_proto
  decider_msgs
)

catkin_package()

include_directories(
  include
  src/action
  src/check
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}
  src/bt_decider.cc
  src/check/CheckLaneFrontClear.cc
  src/check/CheckLaneBackClear.cc
)

target_include_directories(${PROJECT_NAME} PRIVATE
  include
)

target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}
)

add_executable(tst_bt
  src/tst_bt.cc
)

target_include_directories(tst_bt PRIVATE
  include
)

target_link_libraries(tst_bt
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

install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)