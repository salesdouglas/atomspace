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

# Utility rule file for haskell-atomspace-executionlib.

# Include the progress variables for this target.
include tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/progress.make

tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib: opencog/haskell/libatomspace-cwrapper.so
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Haskell Execution-Test."
	cd /root/OPENCOG/atomspace/tests/haskell/executionTestLib && sh buildTest.sh /root/OPENCOG/atomspace/build/opencog/haskell /root/OPENCOG/atomspace/tests/haskell/executionTestLib

haskell-atomspace-executionlib: tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib
haskell-atomspace-executionlib: tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/build.make

.PHONY : haskell-atomspace-executionlib

# Rule to build all files generated by this target.
tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/build: haskell-atomspace-executionlib

.PHONY : tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/build

tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/haskell/executionTestLib && $(CMAKE_COMMAND) -P CMakeFiles/haskell-atomspace-executionlib.dir/cmake_clean.cmake
.PHONY : tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/clean

tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/haskell/executionTestLib /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/haskell/executionTestLib /root/OPENCOG/atomspace/build/tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/haskell/executionTestLib/CMakeFiles/haskell-atomspace-executionlib.dir/depend

