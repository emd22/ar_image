# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ethan/Projects/f3d-img/libpng

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ethan/Projects/f3d-img/libpng

# Include any dependencies generated for this target.
include CMakeFiles/pngstest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pngstest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pngstest.dir/flags.make

CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.o: CMakeFiles/pngstest.dir/flags.make
CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.o: contrib/libtests/pngstest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.o   -c /home/ethan/Projects/f3d-img/libpng/contrib/libtests/pngstest.c

CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libpng/contrib/libtests/pngstest.c > CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.i

CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libpng/contrib/libtests/pngstest.c -o CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.s

# Object files for target pngstest
pngstest_OBJECTS = \
"CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.o"

# External object files for target pngstest
pngstest_EXTERNAL_OBJECTS =

pngstest: CMakeFiles/pngstest.dir/contrib/libtests/pngstest.c.o
pngstest: CMakeFiles/pngstest.dir/build.make
pngstest: libpng16.so.16.37.0
pngstest: /usr/lib64/libz.so
pngstest: /usr/lib64/libm.so
pngstest: CMakeFiles/pngstest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ethan/Projects/f3d-img/libpng/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pngstest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pngstest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pngstest.dir/build: pngstest

.PHONY : CMakeFiles/pngstest.dir/build

CMakeFiles/pngstest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pngstest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pngstest.dir/clean

CMakeFiles/pngstest.dir/depend:
	cd /home/ethan/Projects/f3d-img/libpng && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ethan/Projects/f3d-img/libpng /home/ethan/Projects/f3d-img/libpng /home/ethan/Projects/f3d-img/libpng /home/ethan/Projects/f3d-img/libpng /home/ethan/Projects/f3d-img/libpng/CMakeFiles/pngstest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pngstest.dir/depend
