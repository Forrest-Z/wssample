cmake_minimum_required(VERSION 2.8.3)
project(g29_socket_recv)

set(CMAKE_CXX_FLAGS "-std=c++11 -O3 -Wall ${CMAKE_CXX_FLAGS}")
add_compile_options(-DCMAKE_BUILD_TYPE=Release)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  g29_socket_msgs
)

find_package(Protobuf REQUIRED)

catkin_package()

find_path(G29_socket_head
  NAMES G29Socket.pb.h
  PATHS ~/zone3/src/g29_socket_proto/src
)

find_library(G29_socket_lib 
  libG29Socket.so
)

include_directories(
  include
  ${G29_socket_head}
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}
  src/${PROJECT_NAME}.cpp
)

target_include_directories(${PROJECT_NAME} PRIVATE
  include
  src/include
)

target_link_libraries(${PROJECT_NAME}
  ${G29_socket_lib}
  ${catkin_LIBRARIES}
  ${PROTOBUF_LIBRARY}
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