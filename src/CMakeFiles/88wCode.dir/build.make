# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/nidb/88wCode/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nidb/88wCode/src

# Include any dependencies generated for this target.
include CMakeFiles/88wCode.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/88wCode.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/88wCode.dir/flags.make

CMakeFiles/88wCode.dir/code.cpp.o: CMakeFiles/88wCode.dir/flags.make
CMakeFiles/88wCode.dir/code.cpp.o: code.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nidb/88wCode/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/88wCode.dir/code.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/88wCode.dir/code.cpp.o -c /home/nidb/88wCode/src/code.cpp

CMakeFiles/88wCode.dir/code.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/88wCode.dir/code.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nidb/88wCode/src/code.cpp > CMakeFiles/88wCode.dir/code.cpp.i

CMakeFiles/88wCode.dir/code.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/88wCode.dir/code.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nidb/88wCode/src/code.cpp -o CMakeFiles/88wCode.dir/code.cpp.s

# Object files for target 88wCode
88wCode_OBJECTS = \
"CMakeFiles/88wCode.dir/code.cpp.o"

# External object files for target 88wCode
88wCode_EXTERNAL_OBJECTS =

88wCode: CMakeFiles/88wCode.dir/code.cpp.o
88wCode: CMakeFiles/88wCode.dir/build.make
88wCode: CMakeFiles/88wCode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nidb/88wCode/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 88wCode"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/88wCode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/88wCode.dir/build: 88wCode

.PHONY : CMakeFiles/88wCode.dir/build

CMakeFiles/88wCode.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/88wCode.dir/cmake_clean.cmake
.PHONY : CMakeFiles/88wCode.dir/clean

CMakeFiles/88wCode.dir/depend:
	cd /home/nidb/88wCode/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nidb/88wCode/src /home/nidb/88wCode/src /home/nidb/88wCode/src /home/nidb/88wCode/src /home/nidb/88wCode/src/CMakeFiles/88wCode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/88wCode.dir/depend

