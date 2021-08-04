cmake_minimum_required(VERSION 2.8.3)
project(record_tracks)

SET(CMAKE_CXX_FLAGS "-std=c++14 -O3 -g -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  message_filters
  localization_msgs
  kalman_msgs
  tli65_can_msgs
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

include_directories(
  include
  ${pb_head}
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}
  src/record_tracks.cc
)

target_include_directories(${PROJECT_NAME} PRIVATE
  src/include
  include
)

target_link_libraries(${PROJECT_NAME}
  ${TrackPoints_LIBRARY}
  ${catkin_LIBRARIES}
  ${YAML_CPP_LIBRARIES}
  ${Boost_FILESYSTEM_LIBRARY}
  ${Boost_SYSTEM_LIBRARY}
  ${PROTOBUF_LIBRARY}
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