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
include tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/depend.make

# Include the progress variables for this target.
include tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/flags.make

tests/truthvalue/EvidenceCountTruthValueUTest.cpp: ../tests/truthvalue/EvidenceCountTruthValueUTest.cxxtest
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating EvidenceCountTruthValueUTest.cpp"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && /usr/bin/cxxtestgen --runner=ErrorPrinter --have-eh -o /root/OPENCOG/atomspace/build/tests/truthvalue/EvidenceCountTruthValueUTest.cpp /root/OPENCOG/atomspace/tests/truthvalue/EvidenceCountTruthValueUTest.cxxtest

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o: tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/flags.make
tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o: tests/truthvalue/EvidenceCountTruthValueUTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o -c /root/OPENCOG/atomspace/build/tests/truthvalue/EvidenceCountTruthValueUTest.cpp

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.i"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/tests/truthvalue/EvidenceCountTruthValueUTest.cpp > CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.i

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.s"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/tests/truthvalue/EvidenceCountTruthValueUTest.cpp -o CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.s

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o.requires:

.PHONY : tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o.requires

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o.provides: tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o.requires
	$(MAKE) -f tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/build.make tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o.provides.build
.PHONY : tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o.provides

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o.provides.build: tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o


# Object files for target EvidenceCountTruthValueUTest
EvidenceCountTruthValueUTest_OBJECTS = \
"CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o"

# External object files for target EvidenceCountTruthValueUTest
EvidenceCountTruthValueUTest_EXTERNAL_OBJECTS =

tests/truthvalue/EvidenceCountTruthValueUTest: tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o
tests/truthvalue/EvidenceCountTruthValueUTest: tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/build.make
tests/truthvalue/EvidenceCountTruthValueUTest: opencog/atomspace/libatomspace.so
tests/truthvalue/EvidenceCountTruthValueUTest: opencog/atoms/core/libatomcore.so
tests/truthvalue/EvidenceCountTruthValueUTest: opencog/atomutils/libatomutils.so
tests/truthvalue/EvidenceCountTruthValueUTest: opencog/atoms/base/libatombase.so
tests/truthvalue/EvidenceCountTruthValueUTest: opencog/atoms/proto/libatomproto.so
tests/truthvalue/EvidenceCountTruthValueUTest: opencog/truthvalue/libtruthvalue.so
tests/truthvalue/EvidenceCountTruthValueUTest: /usr/local/lib/libcogutil.so
tests/truthvalue/EvidenceCountTruthValueUTest: /usr/lib/x86_64-linux-gnu/libboost_thread.so
tests/truthvalue/EvidenceCountTruthValueUTest: tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable EvidenceCountTruthValueUTest"
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/EvidenceCountTruthValueUTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/build: tests/truthvalue/EvidenceCountTruthValueUTest

.PHONY : tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/build

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/requires: tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/EvidenceCountTruthValueUTest.cpp.o.requires

.PHONY : tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/requires

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/clean:
	cd /root/OPENCOG/atomspace/build/tests/truthvalue && $(CMAKE_COMMAND) -P CMakeFiles/EvidenceCountTruthValueUTest.dir/cmake_clean.cmake
.PHONY : tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/clean

tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/depend: tests/truthvalue/EvidenceCountTruthValueUTest.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/tests/truthvalue /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/tests/truthvalue /root/OPENCOG/atomspace/build/tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/truthvalue/CMakeFiles/EvidenceCountTruthValueUTest.dir/depend
