# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kalman_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikalman_msgs:/home/oligay_61/zone3/src/message/kalman_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kalman_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg" NAME_WE)
add_custom_target(_kalman_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kalman_msgs" "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kalman_msgs
  "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(kalman_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kalman_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kalman_msgs_generate_messages kalman_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg" NAME_WE)
add_dependencies(kalman_msgs_generate_messages_cpp _kalman_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_msgs_gencpp)
add_dependencies(kalman_msgs_gencpp kalman_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kalman_msgs
  "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(kalman_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kalman_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kalman_msgs_generate_messages kalman_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg" NAME_WE)
add_dependencies(kalman_msgs_generate_messages_eus _kalman_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_msgs_geneus)
add_dependencies(kalman_msgs_geneus kalman_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kalman_msgs
  "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(kalman_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kalman_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kalman_msgs_generate_messages kalman_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg" NAME_WE)
add_dependencies(kalman_msgs_generate_messages_lisp _kalman_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_msgs_genlisp)
add_dependencies(kalman_msgs_genlisp kalman_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kalman_msgs
  "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(kalman_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kalman_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kalman_msgs_generate_messages kalman_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg" NAME_WE)
add_dependencies(kalman_msgs_generate_messages_nodejs _kalman_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_msgs_gennodejs)
add_dependencies(kalman_msgs_gennodejs kalman_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kalman_msgs
  "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(kalman_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kalman_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kalman_msgs_generate_messages kalman_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/oligay_61/zone3/src/message/kalman_msgs/msg/Kinematics.msg" NAME_WE)
add_dependencies(kalman_msgs_generate_messages_py _kalman_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kalman_msgs_genpy)
add_dependencies(kalman_msgs_genpy kalman_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kalman_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kalman_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kalman_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kalman_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kalman_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kalman_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kalman_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kalman_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kalman_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kalman_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kalman_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
