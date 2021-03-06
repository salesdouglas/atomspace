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
include tests/atoms/CMakeFiles/StateLinkUTest.dir/depend.make

# Include the progress variables for this target.
include tests/atoms/CMakeFiles/StateLinkUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/atoms/CMakeFiles/StateLinkUTest.dir/flags.make

tests/atoms/StateLinkUTest.cpp: ../tests/atoms/StateLinkUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating StateLinkUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/atoms/StateLinkUTest.cpp /root/OPENCOG/atomspace/tests/atoms/StateLinkUTest.cxxtest

tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o: tests/atoms/CMakeFiles/StateLinkUTest.dir/flags.make
tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o: tests/atoms/StateLinkUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/atoms/StateLinkUTest.cpp

tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/atoms/StateLinkUTest.cpp > CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.i

tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/atoms && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/atoms/StateLinkUTest.cpp -o CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.s

tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o.requires:

.PHONY : tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o.requires

tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o.provides: tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o.requires
	$(MAKE) -f tests/atoms/CMakeFiles/StateLinkUTest.dir/build.make tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o.provides.build
.PHONY : tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o.provides

tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o.provides.build: tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o


# Object files for target StateLinkUTest
StateLinkUTest_OBJECTS = \
"CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o"

# External object files for target StateLinkUTest
StateLinkUTest_EXTERNAL_OBJECTS =

tests/atoms/StateLinkUTest: tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o
tests/atoms/StateLinkUTest: tests/atoms/CMakeFiles/StateLinkUTest.dir/build.make
tests/atoms/StateLinkUTest: opencog/atoms/execution/libexecution.so
tests/atoms/StateLinkUTest: opencog/query/libquery.so
tests/atoms/StateLinkUTest: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/atoms/StateLinkUTest: opencog/cython/libPythonEval.so
tests/atoms/StateLinkUTest: opencog/guile/libsmob.so
tests/atoms/StateLinkUTest: opencog/atoms/reduct/libclearbox.so
tests/atoms/StateLinkUTest: opencog/atoms/pattern/liblambda.so
tests/atoms/StateLinkUTest: opencog/atomspace/libatomspace.so
tests/atoms/StateLinkUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/atoms/StateLinkUTest: opencog/atoms/core/libatomcore.so
tests/atoms/StateLinkUTest: opencog/atomutils/libatomutils.so
tests/atoms/StateLinkUTest: opencog/atoms/base/libatombase.so
tests/atoms/StateLinkUTest: opencog/truthvalue/libtruthvalue.so
tests/atoms/StateLinkUTest: opencog/atoms/proto/libatomproto.so
tests/atoms/StateLinkUTest: /usr/local/lib/libguile-2.2.so
tests/atoms/StateLinkUTest: /usr/local/lib/libcogutil.so
tests/atoms/StateLinkUTest: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/atoms/StateLinkUTest: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
tests/atoms/StateLinkUTest: tests/atoms/CMakeFiles/StateLinkUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable StateLinkUTest"
	cd /root/OPENCOG/atomspace/build/tests/atoms && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/StateLinkUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/atoms/CMakeFiles/StateLinkUTest.dir/build: tests/atoms/StateLinkUTest

.PHONY : tests/atoms/CMakeFiles/StateLinkUTest.dir/build

tests/atoms/CMakeFiles/StateLinkUTest.dir/requires: tests/atoms/CMakeFiles/StateLinkUTest.dir/StateLinkUTest.cpp.o.requires

.PHONY : tests/atoms/CMakeFiles/StateLinkUTest.dir/requires

tests/atoms/CMakeFiles/StateLinkUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/atoms && $(CMAKE_COMMAND) -P CMakeFiles/StateLinkUTest.dir/cmake_clean.cmake
.PHONY : tests/atoms/CMakeFiles/StateLinkUTest.dir/clean

tests/atoms/CMakeFiles/StateLinkUTest.dir/depend: tests/atoms/StateLinkUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/atoms /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/atoms /root/OPENCOG/atomspace/build/tests/atoms/CMakeFiles/StateLinkUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/atoms/CMakeFiles/StateLinkUTest.dir/depend

