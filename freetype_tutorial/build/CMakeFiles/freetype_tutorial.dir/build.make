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
CMAKE_SOURCE_DIR = /home/rian-mst/dev/cplusplus/freetype_tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rian-mst/dev/cplusplus/freetype_tutorial/build

# Include any dependencies generated for this target.
include CMakeFiles/freetype_tutorial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/freetype_tutorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/freetype_tutorial.dir/flags.make

CMakeFiles/freetype_tutorial.dir/main.cpp.o: CMakeFiles/freetype_tutorial.dir/flags.make
CMakeFiles/freetype_tutorial.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rian-mst/dev/cplusplus/freetype_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/freetype_tutorial.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/freetype_tutorial.dir/main.cpp.o -c /home/rian-mst/dev/cplusplus/freetype_tutorial/main.cpp

CMakeFiles/freetype_tutorial.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/freetype_tutorial.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rian-mst/dev/cplusplus/freetype_tutorial/main.cpp > CMakeFiles/freetype_tutorial.dir/main.cpp.i

CMakeFiles/freetype_tutorial.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/freetype_tutorial.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rian-mst/dev/cplusplus/freetype_tutorial/main.cpp -o CMakeFiles/freetype_tutorial.dir/main.cpp.s

CMakeFiles/freetype_tutorial.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/freetype_tutorial.dir/main.cpp.o.requires

CMakeFiles/freetype_tutorial.dir/main.cpp.o.provides: CMakeFiles/freetype_tutorial.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/freetype_tutorial.dir/build.make CMakeFiles/freetype_tutorial.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/freetype_tutorial.dir/main.cpp.o.provides

CMakeFiles/freetype_tutorial.dir/main.cpp.o.provides.build: CMakeFiles/freetype_tutorial.dir/main.cpp.o


# Object files for target freetype_tutorial
freetype_tutorial_OBJECTS = \
"CMakeFiles/freetype_tutorial.dir/main.cpp.o"

# External object files for target freetype_tutorial
freetype_tutorial_EXTERNAL_OBJECTS =

freetype_tutorial: CMakeFiles/freetype_tutorial.dir/main.cpp.o
freetype_tutorial: CMakeFiles/freetype_tutorial.dir/build.make
freetype_tutorial: /usr/local/lib/libopencv_dnn.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_gapi.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_highgui.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_ml.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_objdetect.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_photo.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_stitching.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_video.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_videoio.so.4.1.1
freetype_tutorial: /usr/lib/x86_64-linux-gnu/libcpprest.so
freetype_tutorial: /usr/local/lib/libopencv_imgcodecs.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_calib3d.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_features2d.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_flann.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_imgproc.so.4.1.1
freetype_tutorial: /usr/local/lib/libopencv_core.so.4.1.1
freetype_tutorial: CMakeFiles/freetype_tutorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rian-mst/dev/cplusplus/freetype_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable freetype_tutorial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/freetype_tutorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/freetype_tutorial.dir/build: freetype_tutorial

.PHONY : CMakeFiles/freetype_tutorial.dir/build

CMakeFiles/freetype_tutorial.dir/requires: CMakeFiles/freetype_tutorial.dir/main.cpp.o.requires

.PHONY : CMakeFiles/freetype_tutorial.dir/requires

CMakeFiles/freetype_tutorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/freetype_tutorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/freetype_tutorial.dir/clean

CMakeFiles/freetype_tutorial.dir/depend:
	cd /home/rian-mst/dev/cplusplus/freetype_tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rian-mst/dev/cplusplus/freetype_tutorial /home/rian-mst/dev/cplusplus/freetype_tutorial /home/rian-mst/dev/cplusplus/freetype_tutorial/build /home/rian-mst/dev/cplusplus/freetype_tutorial/build /home/rian-mst/dev/cplusplus/freetype_tutorial/build/CMakeFiles/freetype_tutorial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/freetype_tutorial.dir/depend
