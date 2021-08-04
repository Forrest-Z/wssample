cmake_minimum_required(VERSION 2.8.3)
project(follow_tracks)

SET(CMAKE_CXX_FLAGS "-std=c++14 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  tli65_can_msgs
  localization_msgs
  control_msgs
  planner_msgs
  track_points_proto
)

find_package(Protobuf REQUIRED)

catkin_package()

find_path(pb_head
  NAMES TrackPoints.pb.h
  PATHS ~/zone3/src/track_points_proto/src
)

find_library(TrackPoints_LIBRARY 
  libTrackPoints.so
)

find_path(plannerstruct_head
  NAMES PlannerStruct.h
  PATHS ~/zone3/src/planner/planner_fsm/src/struct
)

find_path(controlstruct_head
  NAMES ControlStruct.h
  PATHS ~/zone3/src/control/control_fsm/src/struct
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${pb_head}
  ${plannerstruct_head}
  ${controlstruct_head}
  src
)

add_executable(${PROJECT_NAME}
  src/follow_tracks.cc
  ${plannerstruct_head}/PlannerStruct.cc
)

target_link_libraries(${PROJECT_NAME}
  ${TrackPoints_LIBRARY}
  ${catkin_LIBRARIES}
  ${PROTOBUF_LIBRARY}
)

target_include_directories(${PROJECT_NAME} PRIVATE
  include
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