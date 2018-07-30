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
include tests/query/CMakeFiles/ExecutionOutputUTest.dir/depend.make

# Include the progress variables for this target.
include tests/query/CMakeFiles/ExecutionOutputUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/query/CMakeFiles/ExecutionOutputUTest.dir/flags.make

tests/query/ExecutionOutputUTest.cpp: ../tests/query/ExecutionOutputUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ExecutionOutputUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/query/ExecutionOutputUTest.cpp /root/OPENCOG/atomspace/tests/query/ExecutionOutputUTest.cxxtest

tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o: tests/query/CMakeFiles/ExecutionOutputUTest.dir/flags.make
tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o: tests/query/ExecutionOutputUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/query/ExecutionOutputUTest.cpp

tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/query/ExecutionOutputUTest.cpp > CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.i

tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/query && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/query/ExecutionOutputUTest.cpp -o CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.s

tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o.requires:

.PHONY : tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o.requires

tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o.provides: tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o.requires
	$(MAKE) -f tests/query/CMakeFiles/ExecutionOutputUTest.dir/build.make tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o.provides.build
.PHONY : tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o.provides

tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o.provides.build: tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o


# Object files for target ExecutionOutputUTest
ExecutionOutputUTest_OBJECTS = \
"CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o"

# External object files for target ExecutionOutputUTest
ExecutionOutputUTest_EXTERNAL_OBJECTS =

tests/query/ExecutionOutputUTest: tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o
tests/query/ExecutionOutputUTest: tests/query/CMakeFiles/ExecutionOutputUTest.dir/build.make
tests/query/ExecutionOutputUTest: opencog/atoms/execution/libexecution.so
tests/query/ExecutionOutputUTest: opencog/query/libquery.so
tests/query/ExecutionOutputUTest: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/query/ExecutionOutputUTest: opencog/cython/libPythonEval.so
tests/query/ExecutionOutputUTest: opencog/guile/libsmob.so
tests/query/ExecutionOutputUTest: opencog/atoms/pattern/liblambda.so
tests/query/ExecutionOutputUTest: opencog/atoms/reduct/libclearbox.so
tests/query/ExecutionOutputUTest: opencog/atomspace/libatomspace.so
tests/query/ExecutionOutputUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/query/ExecutionOutputUTest: opencog/atoms/core/libatomcore.so
tests/query/ExecutionOutputUTest: opencog/atomutils/libatomutils.so
tests/query/ExecutionOutputUTest: /usr/local/lib/libguile-2.2.so
tests/query/ExecutionOutputUTest: opencog/atoms/base/libatombase.so
tests/query/ExecutionOutputUTest: opencog/atoms/proto/libatomproto.so
tests/query/ExecutionOutputUTest: opencog/truthvalue/libtruthvalue.so
tests/query/ExecutionOutputUTest: /usr/local/lib/libcogutil.so
tests/query/ExecutionOutputUTest: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/query/ExecutionOutputUTest: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
tests/query/ExecutionOutputUTest: tests/query/CMakeFiles/ExecutionOutputUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ExecutionOutputUTest"
	cd /root/OPENCOG/atomspace/build/tests/query && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ExecutionOutputUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/query/CMakeFiles/ExecutionOutputUTest.dir/build: tests/query/ExecutionOutputUTest

.PHONY : tests/query/CMakeFiles/ExecutionOutputUTest.dir/build

tests/query/CMakeFiles/ExecutionOutputUTest.dir/requires: tests/query/CMakeFiles/ExecutionOutputUTest.dir/ExecutionOutputUTest.cpp.o.requires

.PHONY : tests/query/CMakeFiles/ExecutionOutputUTest.dir/requires

tests/query/CMakeFiles/ExecutionOutputUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/query && $(CMAKE_COMMAND) -P CMakeFiles/ExecutionOutputUTest.dir/cmake_clean.cmake
.PHONY : tests/query/CMakeFiles/ExecutionOutputUTest.dir/clean

tests/query/CMakeFiles/ExecutionOutputUTest.dir/depend: tests/query/ExecutionOutputUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/query /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/query /root/OPENCOG/atomspace/build/tests/query/CMakeFiles/ExecutionOutputUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/query/CMakeFiles/ExecutionOutputUTest.dir/depend
