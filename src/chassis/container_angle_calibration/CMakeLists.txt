cmake_minimum_required(VERSION 2.8.3)
project(container_angle_calibration)

set(CMAKE_CXX_FLAGS "-std=c++11 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  localization_msgs
  tli65_can_msgs
)

find_package(yaml-cpp REQUIRED)
find_package(Eigen3 REQUIRED)

catkin_package()

include_directories(
  include 
  ${catkin_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIR}
)

link_directories(
  ${YAML_CPP_LIBRARY_DIRS}
)

add_executable(${PROJECT_NAME}
  src/ContainerCalib.cc
)

target_link_libraries(${PROJECT_NAME}
  ${YAML_CPP_LIBRARIES}
  ${catkin_LIBRARIES}
)

add_definitions(${EIGEN_DEFINITIONS})

target_include_directories(${PROJECT_NAME} PRIVATE
  src/include
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