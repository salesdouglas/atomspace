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
CMAKE_SOURCE_DIR = /root/OPENCOG/atomspace

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/OPENCOG/atomspace/build

# Include any dependencies generated for this target.
include opencog/cython/opencog/CMakeFiles/logger_cython.dir/depend.make

# Include the progress variables for this target.
include opencog/cython/opencog/CMakeFiles/logger_cython.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/cython/opencog/CMakeFiles/logger_cython.dir/flags.make

opencog/cython/opencog/logger.cpp: ../opencog/cython/opencog/logger.pyx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Cythonizing logger.pyx"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/cython -f -I /root/OPENCOG/atomspace/build -o logger.cpp --cplus /root/OPENCOG/atomspace/opencog/cython/opencog/logger.pyx

opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o: opencog/cython/opencog/CMakeFiles/logger_cython.dir/flags.make
opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o: opencog/cython/opencog/logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/logger_cython.dir/logger.cpp.o -c /root/OPENCOG/atomspace/build/opencog/cython/opencog/logger.cpp

opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logger_cython.dir/logger.cpp.i"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/opencog/cython/opencog/logger.cpp > CMakeFiles/logger_cython.dir/logger.cpp.i

opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logger_cython.dir/logger.cpp.s"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/opencog/cython/opencog/logger.cpp -o CMakeFiles/logger_cython.dir/logger.cpp.s

opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o.requires:

.PHONY : opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o.requires

opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o.provides: opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o.requires
	$(MAKE) -f opencog/cython/opencog/CMakeFiles/logger_cython.dir/build.make opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o.provides.build
.PHONY : opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o.provides

opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o.provides.build: opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o


# Object files for target logger_cython
logger_cython_OBJECTS = \
"CMakeFiles/logger_cython.dir/logger.cpp.o"

# External object files for target logger_cython
logger_cython_EXTERNAL_OBJECTS =

opencog/cython/opencog/logger.so: opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o
opencog/cython/opencog/logger.so: opencog/cython/opencog/CMakeFiles/logger_cython.dir/build.make
opencog/cython/opencog/logger.so: /usr/local/lib/libcogutil.so
opencog/cython/opencog/logger.so: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
opencog/cython/opencog/logger.so: opencog/cython/opencog/CMakeFiles/logger_cython.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library logger.so"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logger_cython.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/cython/opencog/CMakeFiles/logger_cython.dir/build: opencog/cython/opencog/logger.so

.PHONY : opencog/cython/opencog/CMakeFiles/logger_cython.dir/build

opencog/cython/opencog/CMakeFiles/logger_cython.dir/requires: opencog/cython/opencog/CMakeFiles/logger_cython.dir/logger.cpp.o.requires

.PHONY : opencog/cython/opencog/CMakeFiles/logger_cython.dir/requires

opencog/cython/opencog/CMakeFiles/logger_cython.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && $(CMAKE_COMMAND) -P CMakeFiles/logger_cython.dir/cmake_clean.cmake
.PHONY : opencog/cython/opencog/CMakeFiles/logger_cython.dir/clean

opencog/cython/opencog/CMakeFiles/logger_cython.dir/depend: opencog/cython/opencog/logger.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/cython/opencog /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/cython/opencog /root/OPENCOG/atomspace/build/opencog/cython/opencog/CMakeFiles/logger_cython.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/cython/opencog/CMakeFiles/logger_cython.dir/depend

