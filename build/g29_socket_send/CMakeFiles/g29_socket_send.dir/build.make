# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/oligay_61/zone3/src/teledrive/g29_socket_send

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oligay_61/zone3/build/g29_socket_send

# Include any dependencies generated for this target.
include CMakeFiles/g29_socket_send.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/g29_socket_send.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/g29_socket_send.dir/flags.make

CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o: CMakeFiles/g29_socket_send.dir/flags.make
CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o: /home/oligay_61/zone3/src/teledrive/g29_socket_send/src/g29_socket_send.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oligay_61/zone3/build/g29_socket_send/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o -c /home/oligay_61/zone3/src/teledrive/g29_socket_send/src/g29_socket_send.cpp

CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oligay_61/zone3/src/teledrive/g29_socket_send/src/g29_socket_send.cpp > CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.i

CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oligay_61/zone3/src/teledrive/g29_socket_send/src/g29_socket_send.cpp -o CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.s

CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o.requires:

.PHONY : CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o.requires

CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o.provides: CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o.requires
	$(MAKE) -f CMakeFiles/g29_socket_send.dir/build.make CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o.provides.build
.PHONY : CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o.provides

CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o.provides.build: CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o


# Object files for target g29_socket_send
g29_socket_send_OBJECTS = \
"CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o"

# External object files for target g29_socket_send
g29_socket_send_EXTERNAL_OBJECTS =

/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: CMakeFiles/g29_socket_send.dir/build.make
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /home/oligay_61/zone3/devel/lib/libG29Socket.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /opt/ros/kinetic/lib/libroscpp.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /opt/ros/kinetic/lib/librosconsole.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /opt/ros/kinetic/lib/librostime.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /opt/ros/kinetic/lib/libcpp_common.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: /usr/local/lib/libprotobuf.so
/home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send: CMakeFiles/g29_socket_send.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/oligay_61/zone3/build/g29_socket_send/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/g29_socket_send.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/g29_socket_send.dir/build: /home/oligay_61/zone3/devel/.private/g29_socket_send/lib/g29_socket_send/g29_socket_send

.PHONY : CMakeFiles/g29_socket_send.dir/build

CMakeFiles/g29_socket_send.dir/requires: CMakeFiles/g29_socket_send.dir/src/g29_socket_send.cpp.o.requires

.PHONY : CMakeFiles/g29_socket_send.dir/requires

CMakeFiles/g29_socket_send.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/g29_socket_send.dir/cmake_clean.cmake
.PHONY : CMakeFiles/g29_socket_send.dir/clean

CMakeFiles/g29_socket_send.dir/depend:
	cd /home/oligay_61/zone3/build/g29_socket_send && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oligay_61/zone3/src/teledrive/g29_socket_send /home/oligay_61/zone3/src/teledrive/g29_socket_send /home/oligay_61/zone3/build/g29_socket_send /home/oligay_61/zone3/build/g29_socket_send /home/oligay_61/zone3/build/g29_socket_send/CMakeFiles/g29_socket_send.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/g29_socket_send.dir/depend

