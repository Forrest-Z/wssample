cmake_minimum_required(VERSION 2.8.3)
project(kvaser_interface)

SET(CMAKE_CXX_FLAGS "-std=c++14 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
)

catkin_package(
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_library(ros_${PROJECT_NAME}
  src/kvaser_interface.cpp
)
target_link_libraries(ros_${PROJECT_NAME}
  canlib
  ${catkin_LIBRARIES}
)

add_executable(kvaser_can_bridge
  src/kvaser_can_bridge.cpp
)
target_link_libraries(kvaser_can_bridge
  ros_${PROJECT_NAME}
  ${catkin_LIBRARIES}
)

add_executable(canmonitor
  src/canmonitor.cpp
)
target_link_libraries(canmonitor
  ros_${PROJECT_NAME}
)

add_executable(list_channels
  src/list_channels.cpp
)
target_link_libraries(list_channels
  ros_${PROJECT_NAME}
)

install(TARGETS ros_${PROJECT_NAME}
  kvaser_can_bridge
  canmonitor
  list_channels
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
