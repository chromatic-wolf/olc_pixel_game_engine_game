# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/pi/Desktop/game/pixelGameEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/game/pixelGameEngine

# Include any dependencies generated for this target.
include CMakeFiles/pixelGameEngine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pixelGameEngine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pixelGameEngine.dir/flags.make

CMakeFiles/pixelGameEngine.dir/main.cpp.o: CMakeFiles/pixelGameEngine.dir/flags.make
CMakeFiles/pixelGameEngine.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/game/pixelGameEngine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pixelGameEngine.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pixelGameEngine.dir/main.cpp.o -c /home/pi/Desktop/game/pixelGameEngine/main.cpp

CMakeFiles/pixelGameEngine.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pixelGameEngine.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/game/pixelGameEngine/main.cpp > CMakeFiles/pixelGameEngine.dir/main.cpp.i

CMakeFiles/pixelGameEngine.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pixelGameEngine.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/game/pixelGameEngine/main.cpp -o CMakeFiles/pixelGameEngine.dir/main.cpp.s

CMakeFiles/pixelGameEngine.dir/player.cpp.o: CMakeFiles/pixelGameEngine.dir/flags.make
CMakeFiles/pixelGameEngine.dir/player.cpp.o: player.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/game/pixelGameEngine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pixelGameEngine.dir/player.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pixelGameEngine.dir/player.cpp.o -c /home/pi/Desktop/game/pixelGameEngine/player.cpp

CMakeFiles/pixelGameEngine.dir/player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pixelGameEngine.dir/player.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/game/pixelGameEngine/player.cpp > CMakeFiles/pixelGameEngine.dir/player.cpp.i

CMakeFiles/pixelGameEngine.dir/player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pixelGameEngine.dir/player.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/game/pixelGameEngine/player.cpp -o CMakeFiles/pixelGameEngine.dir/player.cpp.s

# Object files for target pixelGameEngine
pixelGameEngine_OBJECTS = \
"CMakeFiles/pixelGameEngine.dir/main.cpp.o" \
"CMakeFiles/pixelGameEngine.dir/player.cpp.o"

# External object files for target pixelGameEngine
pixelGameEngine_EXTERNAL_OBJECTS =

pixelGameEngine: CMakeFiles/pixelGameEngine.dir/main.cpp.o
pixelGameEngine: CMakeFiles/pixelGameEngine.dir/player.cpp.o
pixelGameEngine: CMakeFiles/pixelGameEngine.dir/build.make
pixelGameEngine: /usr/lib/arm-linux-gnueabihf/libGL.so
pixelGameEngine: CMakeFiles/pixelGameEngine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/game/pixelGameEngine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable pixelGameEngine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pixelGameEngine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pixelGameEngine.dir/build: pixelGameEngine

.PHONY : CMakeFiles/pixelGameEngine.dir/build

CMakeFiles/pixelGameEngine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pixelGameEngine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pixelGameEngine.dir/clean

CMakeFiles/pixelGameEngine.dir/depend:
	cd /home/pi/Desktop/game/pixelGameEngine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/game/pixelGameEngine /home/pi/Desktop/game/pixelGameEngine /home/pi/Desktop/game/pixelGameEngine /home/pi/Desktop/game/pixelGameEngine /home/pi/Desktop/game/pixelGameEngine/CMakeFiles/pixelGameEngine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pixelGameEngine.dir/depend

