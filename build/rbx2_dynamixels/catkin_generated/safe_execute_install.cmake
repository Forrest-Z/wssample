execute_process(COMMAND "/home/oligay_61/zone3/build/rbx2_dynamixels/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/oligay_61/zone3/build/rbx2_dynamixels/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
