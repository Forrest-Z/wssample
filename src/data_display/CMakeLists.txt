cmake_minimum_required(VERSION 2.8.3)
project(data_display)

set(CMAKE_CXX_FLAGS "-std=c++11 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  displaydata_msgs
  control_msgs
  roscpp
  rospy
  tli65_can_msgs
  planner_msgs
  localization_msgs
  kalman_msgs
)

catkin_package()

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME} 
  src/datadisplay.cpp
)

target_link_libraries(${PROJECT_NAME} 
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