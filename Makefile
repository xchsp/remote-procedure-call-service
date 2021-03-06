# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/vincenthuang/COMP310/remote-procedure-call-service

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vincenthuang/COMP310/remote-procedure-call-service

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/cmake-gui -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/vincenthuang/COMP310/remote-procedure-call-service/CMakeFiles /home/vincenthuang/COMP310/remote-procedure-call-service/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/vincenthuang/COMP310/remote-procedure-call-service/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named frontend

# Build rule for target.
frontend: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 frontend
.PHONY : frontend

# fast build rule for target.
frontend/fast:
	$(MAKE) -f CMakeFiles/frontend.dir/build.make CMakeFiles/frontend.dir/build
.PHONY : frontend/fast

#=============================================================================
# Target rules for targets named backend

# Build rule for target.
backend: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 backend
.PHONY : backend

# fast build rule for target.
backend/fast:
	$(MAKE) -f CMakeFiles/backend.dir/build.make CMakeFiles/backend.dir/build
.PHONY : backend/fast

a1_lib.o: a1_lib.c.o

.PHONY : a1_lib.o

# target to build an object file
a1_lib.c.o:
	$(MAKE) -f CMakeFiles/frontend.dir/build.make CMakeFiles/frontend.dir/a1_lib.c.o
	$(MAKE) -f CMakeFiles/backend.dir/build.make CMakeFiles/backend.dir/a1_lib.c.o
.PHONY : a1_lib.c.o

a1_lib.i: a1_lib.c.i

.PHONY : a1_lib.i

# target to preprocess a source file
a1_lib.c.i:
	$(MAKE) -f CMakeFiles/frontend.dir/build.make CMakeFiles/frontend.dir/a1_lib.c.i
	$(MAKE) -f CMakeFiles/backend.dir/build.make CMakeFiles/backend.dir/a1_lib.c.i
.PHONY : a1_lib.c.i

a1_lib.s: a1_lib.c.s

.PHONY : a1_lib.s

# target to generate assembly for a file
a1_lib.c.s:
	$(MAKE) -f CMakeFiles/frontend.dir/build.make CMakeFiles/frontend.dir/a1_lib.c.s
	$(MAKE) -f CMakeFiles/backend.dir/build.make CMakeFiles/backend.dir/a1_lib.c.s
.PHONY : a1_lib.c.s

backend.o: backend.c.o

.PHONY : backend.o

# target to build an object file
backend.c.o:
	$(MAKE) -f CMakeFiles/backend.dir/build.make CMakeFiles/backend.dir/backend.c.o
.PHONY : backend.c.o

backend.i: backend.c.i

.PHONY : backend.i

# target to preprocess a source file
backend.c.i:
	$(MAKE) -f CMakeFiles/backend.dir/build.make CMakeFiles/backend.dir/backend.c.i
.PHONY : backend.c.i

backend.s: backend.c.s

.PHONY : backend.s

# target to generate assembly for a file
backend.c.s:
	$(MAKE) -f CMakeFiles/backend.dir/build.make CMakeFiles/backend.dir/backend.c.s
.PHONY : backend.c.s

frontend.o: frontend.c.o

.PHONY : frontend.o

# target to build an object file
frontend.c.o:
	$(MAKE) -f CMakeFiles/frontend.dir/build.make CMakeFiles/frontend.dir/frontend.c.o
.PHONY : frontend.c.o

frontend.i: frontend.c.i

.PHONY : frontend.i

# target to preprocess a source file
frontend.c.i:
	$(MAKE) -f CMakeFiles/frontend.dir/build.make CMakeFiles/frontend.dir/frontend.c.i
.PHONY : frontend.c.i

frontend.s: frontend.c.s

.PHONY : frontend.s

# target to generate assembly for a file
frontend.c.s:
	$(MAKE) -f CMakeFiles/frontend.dir/build.make CMakeFiles/frontend.dir/frontend.c.s
.PHONY : frontend.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... frontend"
	@echo "... backend"
	@echo "... a1_lib.o"
	@echo "... a1_lib.i"
	@echo "... a1_lib.s"
	@echo "... backend.o"
	@echo "... backend.i"
	@echo "... backend.s"
	@echo "... frontend.o"
	@echo "... frontend.i"
	@echo "... frontend.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

