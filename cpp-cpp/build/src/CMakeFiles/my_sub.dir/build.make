# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build

# Include any dependencies generated for this target.
include src/CMakeFiles/my_sub.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/my_sub.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/my_sub.dir/flags.make

src/CMakeFiles/my_sub.dir/my_subscriber.cpp.o: src/CMakeFiles/my_sub.dir/flags.make
src/CMakeFiles/my_sub.dir/my_subscriber.cpp.o: ../src/my_subscriber.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/my_sub.dir/my_subscriber.cpp.o"
	cd /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_sub.dir/my_subscriber.cpp.o -c /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/src/my_subscriber.cpp

src/CMakeFiles/my_sub.dir/my_subscriber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_sub.dir/my_subscriber.cpp.i"
	cd /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/src/my_subscriber.cpp > CMakeFiles/my_sub.dir/my_subscriber.cpp.i

src/CMakeFiles/my_sub.dir/my_subscriber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_sub.dir/my_subscriber.cpp.s"
	cd /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/src/my_subscriber.cpp -o CMakeFiles/my_sub.dir/my_subscriber.cpp.s

# Object files for target my_sub
my_sub_OBJECTS = \
"CMakeFiles/my_sub.dir/my_subscriber.cpp.o"

# External object files for target my_sub
my_sub_EXTERNAL_OBJECTS =

my_sub: src/CMakeFiles/my_sub.dir/my_subscriber.cpp.o
my_sub: src/CMakeFiles/my_sub.dir/build.make
my_sub: src/proto/libmy_proto.a
my_sub: /usr/local/lib/libprotobuf.dylib
my_sub: /usr/local/lib/libzmq.dylib
my_sub: src/CMakeFiles/my_sub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../my_sub"
	cd /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_sub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/my_sub.dir/build: my_sub

.PHONY : src/CMakeFiles/my_sub.dir/build

src/CMakeFiles/my_sub.dir/clean:
	cd /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/src && $(CMAKE_COMMAND) -P CMakeFiles/my_sub.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/my_sub.dir/clean

src/CMakeFiles/my_sub.dir/depend:
	cd /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/src /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/src /Users/junhyeokahn/Repository/zmq-protobuf/cpp-cpp/build/src/CMakeFiles/my_sub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/my_sub.dir/depend

