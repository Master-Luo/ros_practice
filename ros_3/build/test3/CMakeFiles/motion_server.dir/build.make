# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/monster/ROS/ros_hw3/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/monster/ROS/ros_hw3/build

# Include any dependencies generated for this target.
include test3/CMakeFiles/motion_server.dir/depend.make

# Include the progress variables for this target.
include test3/CMakeFiles/motion_server.dir/progress.make

# Include the compile flags for this target's objects.
include test3/CMakeFiles/motion_server.dir/flags.make

test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o: test3/CMakeFiles/motion_server.dir/flags.make
test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o: /home/monster/ROS/ros_hw3/src/test3/src/motion_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/monster/ROS/ros_hw3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o"
	cd /home/monster/ROS/ros_hw3/build/test3 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/motion_server.dir/src/motion_server.cpp.o -c /home/monster/ROS/ros_hw3/src/test3/src/motion_server.cpp

test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/motion_server.dir/src/motion_server.cpp.i"
	cd /home/monster/ROS/ros_hw3/build/test3 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/monster/ROS/ros_hw3/src/test3/src/motion_server.cpp > CMakeFiles/motion_server.dir/src/motion_server.cpp.i

test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/motion_server.dir/src/motion_server.cpp.s"
	cd /home/monster/ROS/ros_hw3/build/test3 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/monster/ROS/ros_hw3/src/test3/src/motion_server.cpp -o CMakeFiles/motion_server.dir/src/motion_server.cpp.s

test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o.requires:

.PHONY : test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o.requires

test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o.provides: test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o.requires
	$(MAKE) -f test3/CMakeFiles/motion_server.dir/build.make test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o.provides.build
.PHONY : test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o.provides

test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o.provides.build: test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o


# Object files for target motion_server
motion_server_OBJECTS = \
"CMakeFiles/motion_server.dir/src/motion_server.cpp.o"

# External object files for target motion_server
motion_server_EXTERNAL_OBJECTS =

/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: test3/CMakeFiles/motion_server.dir/build.make
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /opt/ros/melodic/lib/libroscpp.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /opt/ros/melodic/lib/librosconsole.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /opt/ros/melodic/lib/librostime.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /opt/ros/melodic/lib/libcpp_common.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/monster/ROS/ros_hw3/devel/lib/test3/motion_server: test3/CMakeFiles/motion_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/monster/ROS/ros_hw3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/monster/ROS/ros_hw3/devel/lib/test3/motion_server"
	cd /home/monster/ROS/ros_hw3/build/test3 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/motion_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test3/CMakeFiles/motion_server.dir/build: /home/monster/ROS/ros_hw3/devel/lib/test3/motion_server

.PHONY : test3/CMakeFiles/motion_server.dir/build

test3/CMakeFiles/motion_server.dir/requires: test3/CMakeFiles/motion_server.dir/src/motion_server.cpp.o.requires

.PHONY : test3/CMakeFiles/motion_server.dir/requires

test3/CMakeFiles/motion_server.dir/clean:
	cd /home/monster/ROS/ros_hw3/build/test3 && $(CMAKE_COMMAND) -P CMakeFiles/motion_server.dir/cmake_clean.cmake
.PHONY : test3/CMakeFiles/motion_server.dir/clean

test3/CMakeFiles/motion_server.dir/depend:
	cd /home/monster/ROS/ros_hw3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/monster/ROS/ros_hw3/src /home/monster/ROS/ros_hw3/src/test3 /home/monster/ROS/ros_hw3/build /home/monster/ROS/ros_hw3/build/test3 /home/monster/ROS/ros_hw3/build/test3/CMakeFiles/motion_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test3/CMakeFiles/motion_server.dir/depend

