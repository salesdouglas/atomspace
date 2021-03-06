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
include tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/depend.make

# Include the progress variables for this target.
include tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/flags.make

tests/rule-engine/backwardchainer/ActionSelectionUTest.cpp: ../tests/rule-engine/backwardchainer/ActionSelectionUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ActionSelectionUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer/ActionSelectionUTest.cpp /root/OPENCOG/atomspace/tests/rule-engine/backwardchainer/ActionSelectionUTest.cxxtest

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o: tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/flags.make
tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o: tests/rule-engine/backwardchainer/ActionSelectionUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer/ActionSelectionUTest.cpp

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer/ActionSelectionUTest.cpp > CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.i

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer/ActionSelectionUTest.cpp -o CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.s

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o.requires:

.PHONY : tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o.requires

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o.provides: tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o.requires
	$(MAKE) -f tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/build.make tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o.provides.build
.PHONY : tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o.provides

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o.provides.build: tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o


# Object files for target ActionSelectionUTest
ActionSelectionUTest_OBJECTS = \
"CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o"

# External object files for target ActionSelectionUTest
ActionSelectionUTest_EXTERNAL_OBJECTS =

tests/rule-engine/backwardchainer/ActionSelectionUTest: tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o
tests/rule-engine/backwardchainer/ActionSelectionUTest: tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/build.make
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/rule-engine/libruleengine.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atoms/execution/libexecution.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/query/libquery.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: /usr/lib/x86_64-linux-gnu/libboost_system.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/cython/libPythonEval.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atomspaceutils/libatomspaceutils.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/unify/libunify.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/guile/libsmob.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atoms/reduct/libclearbox.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atoms/pattern/liblambda.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atomspace/libatomspace.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atoms/core/libatomcore.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atomutils/libatomutils.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atoms/base/libatombase.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/truthvalue/libtruthvalue.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: opencog/atoms/proto/libatomproto.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: /usr/local/lib/libguile-2.2.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: /usr/local/lib/libcogutil.so
tests/rule-engine/backwardchainer/ActionSelectionUTest: tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ActionSelectionUTest"
	cd /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ActionSelectionUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/build: tests/rule-engine/backwardchainer/ActionSelectionUTest

.PHONY : tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/build

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/requires: tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/ActionSelectionUTest.cpp.o.requires

.PHONY : tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/requires

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer && $(CMAKE_COMMAND) -P CMakeFiles/ActionSelectionUTest.dir/cmake_clean.cmake
.PHONY : tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/clean

tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/depend: tests/rule-engine/backwardchainer/ActionSelectionUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/rule-engine/backwardchainer /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer /root/OPENCOG/atomspace/build/tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/rule-engine/backwardchainer/CMakeFiles/ActionSelectionUTest.dir/depend

