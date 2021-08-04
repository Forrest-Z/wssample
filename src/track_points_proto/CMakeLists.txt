cmake_minimum_required(VERSION 2.8.3)
project(track_points_proto)

SET(CMAKE_CXX_FLAGS "-std=c++14 -O3 -g -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
)

catkin_package()

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_library(TrackPoints SHARED
  src/TrackPoints.pb.cc
)

#############
## Install ##
#############
install(TARGETS TrackPoints
        ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)