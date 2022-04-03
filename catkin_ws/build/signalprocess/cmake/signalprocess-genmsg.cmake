# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "signalprocess: 2 messages, 0 services")

set(MSG_I_FLAGS "-Isignalprocess:/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(signalprocess_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg" NAME_WE)
add_custom_target(_signalprocess_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "signalprocess" "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg" ""
)

get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg" NAME_WE)
add_custom_target(_signalprocess_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "signalprocess" "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/signalprocess
)
_generate_msg_cpp(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/signalprocess
)

### Generating Services

### Generating Module File
_generate_module_cpp(signalprocess
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/signalprocess
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(signalprocess_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(signalprocess_generate_messages signalprocess_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_cpp _signalprocess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_cpp _signalprocess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(signalprocess_gencpp)
add_dependencies(signalprocess_gencpp signalprocess_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS signalprocess_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/signalprocess
)
_generate_msg_eus(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/signalprocess
)

### Generating Services

### Generating Module File
_generate_module_eus(signalprocess
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/signalprocess
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(signalprocess_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(signalprocess_generate_messages signalprocess_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_eus _signalprocess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_eus _signalprocess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(signalprocess_geneus)
add_dependencies(signalprocess_geneus signalprocess_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS signalprocess_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/signalprocess
)
_generate_msg_lisp(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/signalprocess
)

### Generating Services

### Generating Module File
_generate_module_lisp(signalprocess
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/signalprocess
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(signalprocess_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(signalprocess_generate_messages signalprocess_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_lisp _signalprocess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_lisp _signalprocess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(signalprocess_genlisp)
add_dependencies(signalprocess_genlisp signalprocess_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS signalprocess_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/signalprocess
)
_generate_msg_nodejs(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/signalprocess
)

### Generating Services

### Generating Module File
_generate_module_nodejs(signalprocess
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/signalprocess
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(signalprocess_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(signalprocess_generate_messages signalprocess_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_nodejs _signalprocess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_nodejs _signalprocess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(signalprocess_gennodejs)
add_dependencies(signalprocess_gennodejs signalprocess_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS signalprocess_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/signalprocess
)
_generate_msg_py(signalprocess
  "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/signalprocess
)

### Generating Services

### Generating Module File
_generate_module_py(signalprocess
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/signalprocess
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(signalprocess_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(signalprocess_generate_messages signalprocess_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGdata.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_py _signalprocess_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wx/ROAM_lab/ROAM_ROS/catkin_ws/src/signalprocess/msg/EMGresult.msg" NAME_WE)
add_dependencies(signalprocess_generate_messages_py _signalprocess_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(signalprocess_genpy)
add_dependencies(signalprocess_genpy signalprocess_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS signalprocess_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/signalprocess)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/signalprocess
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(signalprocess_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/signalprocess)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/signalprocess
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(signalprocess_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/signalprocess)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/signalprocess
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(signalprocess_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/signalprocess)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/signalprocess
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(signalprocess_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/signalprocess)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/signalprocess\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/signalprocess
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(signalprocess_generate_messages_py geometry_msgs_generate_messages_py)
endif()
