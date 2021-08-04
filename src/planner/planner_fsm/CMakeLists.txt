cmake_minimum_required(VERSION 2.8.3)
project(planner_fsm)

SET(CMAKE_CXX_FLAGS "-std=c++14 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  tli65_can_msgs
  localization_msgs
  planner_msgs
)

catkin_package()

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  src
  src/fsm
  src/struct
)

add_executable(${PROJECT_NAME}
  src/planner_fsm.cc
  src/struct/PlannerStruct.cc
)

target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}
)

target_include_directories(${PROJECT_NAME} PRIVATE
  include
)

target_compile_definitions(${PROJECT_NAME} PRIVATE
  DEBUG_FLAG
)

add_executable(tst_fsm
    src/fsm/tst_fsm.cc
    src/struct/PlannerStruct.cc
)

target_link_libraries(tst_fsm
  ${catkin_LIBRARIES}
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