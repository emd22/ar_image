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
CMAKE_SOURCE_DIR = /home/ethan/Projects/f3d-img/libjpeg-turbo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ethan/Projects/f3d-img/libjpeg-turbo/build

# Include any dependencies generated for this target.
include sharedlib/CMakeFiles/djpeg.dir/depend.make

# Include the progress variables for this target.
include sharedlib/CMakeFiles/djpeg.dir/progress.make

# Include the compile flags for this target's objects.
include sharedlib/CMakeFiles/djpeg.dir/flags.make

sharedlib/CMakeFiles/djpeg.dir/__/djpeg.c.o: sharedlib/CMakeFiles/djpeg.dir/flags.make
sharedlib/CMakeFiles/djpeg.dir/__/djpeg.c.o: ../djpeg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sharedlib/CMakeFiles/djpeg.dir/__/djpeg.c.o"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/djpeg.dir/__/djpeg.c.o   -c /home/ethan/Projects/f3d-img/libjpeg-turbo/djpeg.c

sharedlib/CMakeFiles/djpeg.dir/__/djpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/djpeg.dir/__/djpeg.c.i"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libjpeg-turbo/djpeg.c > CMakeFiles/djpeg.dir/__/djpeg.c.i

sharedlib/CMakeFiles/djpeg.dir/__/djpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/djpeg.dir/__/djpeg.c.s"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libjpeg-turbo/djpeg.c -o CMakeFiles/djpeg.dir/__/djpeg.c.s

sharedlib/CMakeFiles/djpeg.dir/__/cdjpeg.c.o: sharedlib/CMakeFiles/djpeg.dir/flags.make
sharedlib/CMakeFiles/djpeg.dir/__/cdjpeg.c.o: ../cdjpeg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object sharedlib/CMakeFiles/djpeg.dir/__/cdjpeg.c.o"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/djpeg.dir/__/cdjpeg.c.o   -c /home/ethan/Projects/f3d-img/libjpeg-turbo/cdjpeg.c

sharedlib/CMakeFiles/djpeg.dir/__/cdjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/djpeg.dir/__/cdjpeg.c.i"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libjpeg-turbo/cdjpeg.c > CMakeFiles/djpeg.dir/__/cdjpeg.c.i

sharedlib/CMakeFiles/djpeg.dir/__/cdjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/djpeg.dir/__/cdjpeg.c.s"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libjpeg-turbo/cdjpeg.c -o CMakeFiles/djpeg.dir/__/cdjpeg.c.s

sharedlib/CMakeFiles/djpeg.dir/__/rdcolmap.c.o: sharedlib/CMakeFiles/djpeg.dir/flags.make
sharedlib/CMakeFiles/djpeg.dir/__/rdcolmap.c.o: ../rdcolmap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object sharedlib/CMakeFiles/djpeg.dir/__/rdcolmap.c.o"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/djpeg.dir/__/rdcolmap.c.o   -c /home/ethan/Projects/f3d-img/libjpeg-turbo/rdcolmap.c

sharedlib/CMakeFiles/djpeg.dir/__/rdcolmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/djpeg.dir/__/rdcolmap.c.i"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libjpeg-turbo/rdcolmap.c > CMakeFiles/djpeg.dir/__/rdcolmap.c.i

sharedlib/CMakeFiles/djpeg.dir/__/rdcolmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/djpeg.dir/__/rdcolmap.c.s"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libjpeg-turbo/rdcolmap.c -o CMakeFiles/djpeg.dir/__/rdcolmap.c.s

sharedlib/CMakeFiles/djpeg.dir/__/rdswitch.c.o: sharedlib/CMakeFiles/djpeg.dir/flags.make
sharedlib/CMakeFiles/djpeg.dir/__/rdswitch.c.o: ../rdswitch.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object sharedlib/CMakeFiles/djpeg.dir/__/rdswitch.c.o"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/djpeg.dir/__/rdswitch.c.o   -c /home/ethan/Projects/f3d-img/libjpeg-turbo/rdswitch.c

sharedlib/CMakeFiles/djpeg.dir/__/rdswitch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/djpeg.dir/__/rdswitch.c.i"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libjpeg-turbo/rdswitch.c > CMakeFiles/djpeg.dir/__/rdswitch.c.i

sharedlib/CMakeFiles/djpeg.dir/__/rdswitch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/djpeg.dir/__/rdswitch.c.s"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libjpeg-turbo/rdswitch.c -o CMakeFiles/djpeg.dir/__/rdswitch.c.s

sharedlib/CMakeFiles/djpeg.dir/__/wrgif.c.o: sharedlib/CMakeFiles/djpeg.dir/flags.make
sharedlib/CMakeFiles/djpeg.dir/__/wrgif.c.o: ../wrgif.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object sharedlib/CMakeFiles/djpeg.dir/__/wrgif.c.o"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/djpeg.dir/__/wrgif.c.o   -c /home/ethan/Projects/f3d-img/libjpeg-turbo/wrgif.c

sharedlib/CMakeFiles/djpeg.dir/__/wrgif.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/djpeg.dir/__/wrgif.c.i"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libjpeg-turbo/wrgif.c > CMakeFiles/djpeg.dir/__/wrgif.c.i

sharedlib/CMakeFiles/djpeg.dir/__/wrgif.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/djpeg.dir/__/wrgif.c.s"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libjpeg-turbo/wrgif.c -o CMakeFiles/djpeg.dir/__/wrgif.c.s

sharedlib/CMakeFiles/djpeg.dir/__/wrppm.c.o: sharedlib/CMakeFiles/djpeg.dir/flags.make
sharedlib/CMakeFiles/djpeg.dir/__/wrppm.c.o: ../wrppm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object sharedlib/CMakeFiles/djpeg.dir/__/wrppm.c.o"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/djpeg.dir/__/wrppm.c.o   -c /home/ethan/Projects/f3d-img/libjpeg-turbo/wrppm.c

sharedlib/CMakeFiles/djpeg.dir/__/wrppm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/djpeg.dir/__/wrppm.c.i"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libjpeg-turbo/wrppm.c > CMakeFiles/djpeg.dir/__/wrppm.c.i

sharedlib/CMakeFiles/djpeg.dir/__/wrppm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/djpeg.dir/__/wrppm.c.s"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libjpeg-turbo/wrppm.c -o CMakeFiles/djpeg.dir/__/wrppm.c.s

sharedlib/CMakeFiles/djpeg.dir/__/wrbmp.c.o: sharedlib/CMakeFiles/djpeg.dir/flags.make
sharedlib/CMakeFiles/djpeg.dir/__/wrbmp.c.o: ../wrbmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object sharedlib/CMakeFiles/djpeg.dir/__/wrbmp.c.o"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/djpeg.dir/__/wrbmp.c.o   -c /home/ethan/Projects/f3d-img/libjpeg-turbo/wrbmp.c

sharedlib/CMakeFiles/djpeg.dir/__/wrbmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/djpeg.dir/__/wrbmp.c.i"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libjpeg-turbo/wrbmp.c > CMakeFiles/djpeg.dir/__/wrbmp.c.i

sharedlib/CMakeFiles/djpeg.dir/__/wrbmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/djpeg.dir/__/wrbmp.c.s"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libjpeg-turbo/wrbmp.c -o CMakeFiles/djpeg.dir/__/wrbmp.c.s

sharedlib/CMakeFiles/djpeg.dir/__/wrtarga.c.o: sharedlib/CMakeFiles/djpeg.dir/flags.make
sharedlib/CMakeFiles/djpeg.dir/__/wrtarga.c.o: ../wrtarga.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object sharedlib/CMakeFiles/djpeg.dir/__/wrtarga.c.o"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/djpeg.dir/__/wrtarga.c.o   -c /home/ethan/Projects/f3d-img/libjpeg-turbo/wrtarga.c

sharedlib/CMakeFiles/djpeg.dir/__/wrtarga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/djpeg.dir/__/wrtarga.c.i"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Projects/f3d-img/libjpeg-turbo/wrtarga.c > CMakeFiles/djpeg.dir/__/wrtarga.c.i

sharedlib/CMakeFiles/djpeg.dir/__/wrtarga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/djpeg.dir/__/wrtarga.c.s"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Projects/f3d-img/libjpeg-turbo/wrtarga.c -o CMakeFiles/djpeg.dir/__/wrtarga.c.s

# Object files for target djpeg
djpeg_OBJECTS = \
"CMakeFiles/djpeg.dir/__/djpeg.c.o" \
"CMakeFiles/djpeg.dir/__/cdjpeg.c.o" \
"CMakeFiles/djpeg.dir/__/rdcolmap.c.o" \
"CMakeFiles/djpeg.dir/__/rdswitch.c.o" \
"CMakeFiles/djpeg.dir/__/wrgif.c.o" \
"CMakeFiles/djpeg.dir/__/wrppm.c.o" \
"CMakeFiles/djpeg.dir/__/wrbmp.c.o" \
"CMakeFiles/djpeg.dir/__/wrtarga.c.o"

# External object files for target djpeg
djpeg_EXTERNAL_OBJECTS =

djpeg: sharedlib/CMakeFiles/djpeg.dir/__/djpeg.c.o
djpeg: sharedlib/CMakeFiles/djpeg.dir/__/cdjpeg.c.o
djpeg: sharedlib/CMakeFiles/djpeg.dir/__/rdcolmap.c.o
djpeg: sharedlib/CMakeFiles/djpeg.dir/__/rdswitch.c.o
djpeg: sharedlib/CMakeFiles/djpeg.dir/__/wrgif.c.o
djpeg: sharedlib/CMakeFiles/djpeg.dir/__/wrppm.c.o
djpeg: sharedlib/CMakeFiles/djpeg.dir/__/wrbmp.c.o
djpeg: sharedlib/CMakeFiles/djpeg.dir/__/wrtarga.c.o
djpeg: sharedlib/CMakeFiles/djpeg.dir/build.make
djpeg: libjpeg.so.62.3.0
djpeg: sharedlib/CMakeFiles/djpeg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ethan/Projects/f3d-img/libjpeg-turbo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C executable ../djpeg"
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/djpeg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sharedlib/CMakeFiles/djpeg.dir/build: djpeg

.PHONY : sharedlib/CMakeFiles/djpeg.dir/build

sharedlib/CMakeFiles/djpeg.dir/clean:
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib && $(CMAKE_COMMAND) -P CMakeFiles/djpeg.dir/cmake_clean.cmake
.PHONY : sharedlib/CMakeFiles/djpeg.dir/clean

sharedlib/CMakeFiles/djpeg.dir/depend:
	cd /home/ethan/Projects/f3d-img/libjpeg-turbo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ethan/Projects/f3d-img/libjpeg-turbo /home/ethan/Projects/f3d-img/libjpeg-turbo/sharedlib /home/ethan/Projects/f3d-img/libjpeg-turbo/build /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib /home/ethan/Projects/f3d-img/libjpeg-turbo/build/sharedlib/CMakeFiles/djpeg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sharedlib/CMakeFiles/djpeg.dir/depend
