# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/a1111/Desktop/lab-5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/a1111/Desktop/lab-5/build

# Include any dependencies generated for this target.
include CMakeFiles/blur_app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/blur_app.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/blur_app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/blur_app.dir/flags.make

CMakeFiles/blur_app.dir/src/main.cpp.o: CMakeFiles/blur_app.dir/flags.make
CMakeFiles/blur_app.dir/src/main.cpp.o: /Users/a1111/Desktop/lab-5/src/main.cpp
CMakeFiles/blur_app.dir/src/main.cpp.o: CMakeFiles/blur_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/a1111/Desktop/lab-5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/blur_app.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/blur_app.dir/src/main.cpp.o -MF CMakeFiles/blur_app.dir/src/main.cpp.o.d -o CMakeFiles/blur_app.dir/src/main.cpp.o -c /Users/a1111/Desktop/lab-5/src/main.cpp

CMakeFiles/blur_app.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/blur_app.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/a1111/Desktop/lab-5/src/main.cpp > CMakeFiles/blur_app.dir/src/main.cpp.i

CMakeFiles/blur_app.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/blur_app.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/a1111/Desktop/lab-5/src/main.cpp -o CMakeFiles/blur_app.dir/src/main.cpp.s

CMakeFiles/blur_app.dir/src/blur.cpp.o: CMakeFiles/blur_app.dir/flags.make
CMakeFiles/blur_app.dir/src/blur.cpp.o: /Users/a1111/Desktop/lab-5/src/blur.cpp
CMakeFiles/blur_app.dir/src/blur.cpp.o: CMakeFiles/blur_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/a1111/Desktop/lab-5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/blur_app.dir/src/blur.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/blur_app.dir/src/blur.cpp.o -MF CMakeFiles/blur_app.dir/src/blur.cpp.o.d -o CMakeFiles/blur_app.dir/src/blur.cpp.o -c /Users/a1111/Desktop/lab-5/src/blur.cpp

CMakeFiles/blur_app.dir/src/blur.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/blur_app.dir/src/blur.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/a1111/Desktop/lab-5/src/blur.cpp > CMakeFiles/blur_app.dir/src/blur.cpp.i

CMakeFiles/blur_app.dir/src/blur.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/blur_app.dir/src/blur.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/a1111/Desktop/lab-5/src/blur.cpp -o CMakeFiles/blur_app.dir/src/blur.cpp.s

CMakeFiles/blur_app.dir/src/image_utils.cpp.o: CMakeFiles/blur_app.dir/flags.make
CMakeFiles/blur_app.dir/src/image_utils.cpp.o: /Users/a1111/Desktop/lab-5/src/image_utils.cpp
CMakeFiles/blur_app.dir/src/image_utils.cpp.o: CMakeFiles/blur_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/a1111/Desktop/lab-5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/blur_app.dir/src/image_utils.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/blur_app.dir/src/image_utils.cpp.o -MF CMakeFiles/blur_app.dir/src/image_utils.cpp.o.d -o CMakeFiles/blur_app.dir/src/image_utils.cpp.o -c /Users/a1111/Desktop/lab-5/src/image_utils.cpp

CMakeFiles/blur_app.dir/src/image_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/blur_app.dir/src/image_utils.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/a1111/Desktop/lab-5/src/image_utils.cpp > CMakeFiles/blur_app.dir/src/image_utils.cpp.i

CMakeFiles/blur_app.dir/src/image_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/blur_app.dir/src/image_utils.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/a1111/Desktop/lab-5/src/image_utils.cpp -o CMakeFiles/blur_app.dir/src/image_utils.cpp.s

CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o: CMakeFiles/blur_app.dir/flags.make
CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o: /Users/a1111/Desktop/lab-5/src/atomic_counter.cpp
CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o: CMakeFiles/blur_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/a1111/Desktop/lab-5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o -MF CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o.d -o CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o -c /Users/a1111/Desktop/lab-5/src/atomic_counter.cpp

CMakeFiles/blur_app.dir/src/atomic_counter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/blur_app.dir/src/atomic_counter.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/a1111/Desktop/lab-5/src/atomic_counter.cpp > CMakeFiles/blur_app.dir/src/atomic_counter.cpp.i

CMakeFiles/blur_app.dir/src/atomic_counter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/blur_app.dir/src/atomic_counter.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/a1111/Desktop/lab-5/src/atomic_counter.cpp -o CMakeFiles/blur_app.dir/src/atomic_counter.cpp.s

# Object files for target blur_app
blur_app_OBJECTS = \
"CMakeFiles/blur_app.dir/src/main.cpp.o" \
"CMakeFiles/blur_app.dir/src/blur.cpp.o" \
"CMakeFiles/blur_app.dir/src/image_utils.cpp.o" \
"CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o"

# External object files for target blur_app
blur_app_EXTERNAL_OBJECTS =

blur_app: CMakeFiles/blur_app.dir/src/main.cpp.o
blur_app: CMakeFiles/blur_app.dir/src/blur.cpp.o
blur_app: CMakeFiles/blur_app.dir/src/image_utils.cpp.o
blur_app: CMakeFiles/blur_app.dir/src/atomic_counter.cpp.o
blur_app: CMakeFiles/blur_app.dir/build.make
blur_app: CMakeFiles/blur_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/a1111/Desktop/lab-5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable blur_app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/blur_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/blur_app.dir/build: blur_app
.PHONY : CMakeFiles/blur_app.dir/build

CMakeFiles/blur_app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/blur_app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/blur_app.dir/clean

CMakeFiles/blur_app.dir/depend:
	cd /Users/a1111/Desktop/lab-5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/a1111/Desktop/lab-5 /Users/a1111/Desktop/lab-5 /Users/a1111/Desktop/lab-5/build /Users/a1111/Desktop/lab-5/build /Users/a1111/Desktop/lab-5/build/CMakeFiles/blur_app.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/blur_app.dir/depend

