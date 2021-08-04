cmake_minimum_required(VERSION 2.8.3)
project(control_fsm)

set(CMAK_CXX_FLAGS "-std=c++11 -03 -g -Wall ${CMAKE_CXX_FLAGS}")

add_compile_options(-std=c++11)
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  can_msgs
  tli65_can_msgs
  control_msgs
  localization_msgs
  planner_msgs
  teledrive_msgs
  kalman_msgs
)

find_package(yaml-cpp REQUIRED)

catkin_package()

find_path(plannerstruct_head
  NAMES PlannerStruct.h
  PATHS ~/zone3/src/planner/planner_fsm/src/struct
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${plannerstruct_head}
  src
  src/fsm
  src/struct
)

link_directories(
  ${YAML_CPP_LIBRARY_DIRS}
)

add_executable(${PROJECT_NAME}
    src/control_fsm.cc
    src/struct/ControlStruct.cc
)                                    

target_include_directories(${PROJECT_NAME} PRIVATE
  include
  ${plannerstruct_head}
)

target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}
  ${YAML_CPP_LIBRARIES}
)

target_compile_definitions(${PROJECT_NAME} PRIVATE
  DEBUG_FLAG
)

add_dependencies(${PROJECT_NAME}
  ${${PROJECT_NAME}_EXPORTED_TARGETS} 
  ${catkin_EXPORTED_TARGETS} 
)

add_executable(tst_fsm
    src/fsm/tst_fsm.cc
    src/struct/ControlStruct.cc
)

target_link_libraries(tst_fsm
  ${catkin_LIBRARIES}
)   

add_dependencies(tst_fsm
  ${tst_fsm_EXPORTED_TARGETS} 
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