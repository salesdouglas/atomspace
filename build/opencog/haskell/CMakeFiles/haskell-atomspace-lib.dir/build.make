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

# Utility rule file for haskell-atomspace-lib.

# Include the progress variables for this target.
include opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/progress.make

opencog/haskell/CMakeFiles/haskell-atomspace-lib: opencog/haskell/libatomspace-cwrapper.so
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Haskell bindings."
	cd /root/OPENCOG/atomspace/opencog/haskell && bash build.sh /root/OPENCOG/atomspace/build/opencog/haskell

haskell-atomspace-lib: opencog/haskell/CMakeFiles/haskell-atomspace-lib
haskell-atomspace-lib: opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/build.make

.PHONY : haskell-atomspace-lib

# Rule to build all files generated by this target.
opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/build: haskell-atomspace-lib

.PHONY : opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/build

opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/haskell && $(CMAKE_COMMAND) -P CMakeFiles/haskell-atomspace-lib.dir/cmake_clean.cmake
.PHONY : opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/clean

opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/haskell /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/haskell /root/OPENCOG/atomspace/build/opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/haskell/CMakeFiles/haskell-atomspace-lib.dir/depend

