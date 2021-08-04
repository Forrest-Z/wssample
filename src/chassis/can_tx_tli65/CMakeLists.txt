cmake_minimum_required(VERSION 2.8.3)
project(can_tx_tli65)

set(CMAKE_CXX_FLAGS "-std=c++11 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  can_msgs
  tli65_can_msgs
  control_msgs
)

find_package(yaml-cpp REQUIRED)

catkin_package()

include_directories(
  include 
  ${catkin_INCLUDE_DIRS}
)

link_directories(
  ${YAML_CPP_LIBRARY_DIRS}
)

add_executable(${PROJECT_NAME}
  src/node.cc
  src/CanTxTli65.cc
)

target_include_directories(${PROJECT_NAME} PRIVATE
  src/include
  include
)

target_link_libraries(${PROJECT_NAME}
  ${YAML_CPP_LIBRARIES}
  ${catkin_LIBRARIES}
)

add_executable(shake_hands
  src/shake_hands.cc
)

target_link_libraries(shake_hands
  ${YAML_CPP_LIBRARIES}
  ${catkin_LIBRARIES}
)

add_executable(test_can_tx
  src/test_can_tx.cc
)

target_link_libraries(test_can_tx
  ${YAML_CPP_LIBRARIES}
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