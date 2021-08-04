cmake_minimum_required(VERSION 2.8.3)
project(control_action)

set(CMAK_CXX_FLAGS "-std=c++11 -03 -g -Wall ${CMAKE_CXX_FLAGS}")

add_compile_options(-std=c++11)
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  can_msgs
  control_msgs
  kalman_msgs
  planner_msgs
  teledrive_msgs
)

find_package(yaml-cpp REQUIRED)

catkin_package()

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
  src
  src/lat_controller1
  src/lng_controller1
  src/low_pass_filter
  src/pid
  src/pure_pursuit
  src/safe_logic
  src/slip_window_filter
  ${plannerstruct_head}
  ${controlstruct_head}
)

link_directories(
  ${YAML_CPP_LIBRARY_DIRS}
)

add_executable(${PROJECT_NAME}
    src/control_action.cc
    src/lat_controller1/LatController1.cc
    src/lng_controller1/LngController1.cc
    src/pid/Pid.cc
    src/pure_pursuit/PurePursuit.cc
    src/safe_logic/SafeLogic.cc
    src/slip_window_filter/SlipWindowFilter.cc
    src/low_pass_filter/LowPassFilter.cc
)                                    

target_include_directories(${PROJECT_NAME} PRIVATE
  src/include
  include
  ${plannerstruct_head}
  ${controlstruct_head}
)

target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}
  ${YAML_CPP_LIBRARIES}
  ipopt
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