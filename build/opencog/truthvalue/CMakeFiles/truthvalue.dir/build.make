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
include opencog/truthvalue/CMakeFiles/truthvalue.dir/depend.make

# Include the progress variables for this target.
include opencog/truthvalue/CMakeFiles/truthvalue.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make

opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o: opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make
opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o: ../opencog/truthvalue/AttentionValue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/truthvalue.dir/AttentionValue.cc.o -c /root/OPENCOG/atomspace/opencog/truthvalue/AttentionValue.cc

opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truthvalue.dir/AttentionValue.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/truthvalue/AttentionValue.cc > CMakeFiles/truthvalue.dir/AttentionValue.cc.i

opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truthvalue.dir/AttentionValue.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/truthvalue/AttentionValue.cc -o CMakeFiles/truthvalue.dir/AttentionValue.cc.s

opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o.requires:

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o.requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o.provides: opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o.requires
	$(MAKE) -f opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o.provides.build
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o.provides

opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o.provides.build: opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o


opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o: opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make
opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o: ../opencog/truthvalue/CountTruthValue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/truthvalue.dir/CountTruthValue.cc.o -c /root/OPENCOG/atomspace/opencog/truthvalue/CountTruthValue.cc

opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truthvalue.dir/CountTruthValue.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/truthvalue/CountTruthValue.cc > CMakeFiles/truthvalue.dir/CountTruthValue.cc.i

opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truthvalue.dir/CountTruthValue.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/truthvalue/CountTruthValue.cc -o CMakeFiles/truthvalue.dir/CountTruthValue.cc.s

opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o.requires:

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o.requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o.provides: opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o.requires
	$(MAKE) -f opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o.provides.build
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o.provides

opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o.provides.build: opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o


opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o: opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make
opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o: ../opencog/truthvalue/EvidenceCountTruthValue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o -c /root/OPENCOG/atomspace/opencog/truthvalue/EvidenceCountTruthValue.cc

opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/truthvalue/EvidenceCountTruthValue.cc > CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.i

opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/truthvalue/EvidenceCountTruthValue.cc -o CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.s

opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o.requires:

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o.requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o.provides: opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o.requires
	$(MAKE) -f opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o.provides.build
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o.provides

opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o.provides.build: opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o


opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o: opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make
opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o: ../opencog/truthvalue/FuzzyTruthValue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o -c /root/OPENCOG/atomspace/opencog/truthvalue/FuzzyTruthValue.cc

opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/truthvalue/FuzzyTruthValue.cc > CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.i

opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/truthvalue/FuzzyTruthValue.cc -o CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.s

opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o.requires:

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o.requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o.provides: opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o.requires
	$(MAKE) -f opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o.provides.build
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o.provides

opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o.provides.build: opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o


opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o: opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make
opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o: ../opencog/truthvalue/IndefiniteTruthValue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o -c /root/OPENCOG/atomspace/opencog/truthvalue/IndefiniteTruthValue.cc

opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/truthvalue/IndefiniteTruthValue.cc > CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.i

opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/truthvalue/IndefiniteTruthValue.cc -o CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.s

opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o.requires:

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o.requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o.provides: opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o.requires
	$(MAKE) -f opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o.provides.build
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o.provides

opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o.provides.build: opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o


opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o: opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make
opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o: ../opencog/truthvalue/ProbabilisticTruthValue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o -c /root/OPENCOG/atomspace/opencog/truthvalue/ProbabilisticTruthValue.cc

opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/truthvalue/ProbabilisticTruthValue.cc > CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.i

opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/truthvalue/ProbabilisticTruthValue.cc -o CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.s

opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o.requires:

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o.requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o.provides: opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o.requires
	$(MAKE) -f opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o.provides.build
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o.provides

opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o.provides.build: opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o


opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o: opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make
opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o: ../opencog/truthvalue/SimpleTruthValue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o -c /root/OPENCOG/atomspace/opencog/truthvalue/SimpleTruthValue.cc

opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/truthvalue/SimpleTruthValue.cc > CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.i

opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/truthvalue/SimpleTruthValue.cc -o CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.s

opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o.requires:

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o.requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o.provides: opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o.requires
	$(MAKE) -f opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o.provides.build
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o.provides

opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o.provides.build: opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o


opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o: opencog/truthvalue/CMakeFiles/truthvalue.dir/flags.make
opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o: ../opencog/truthvalue/TruthValue.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/truthvalue.dir/TruthValue.cc.o -c /root/OPENCOG/atomspace/opencog/truthvalue/TruthValue.cc

opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/truthvalue.dir/TruthValue.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/truthvalue/TruthValue.cc > CMakeFiles/truthvalue.dir/TruthValue.cc.i

opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/truthvalue.dir/TruthValue.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/truthvalue/TruthValue.cc -o CMakeFiles/truthvalue.dir/TruthValue.cc.s

opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o.requires:

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o.requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o.provides: opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o.requires
	$(MAKE) -f opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o.provides.build
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o.provides

opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o.provides.build: opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o


# Object files for target truthvalue
truthvalue_OBJECTS = \
"CMakeFiles/truthvalue.dir/AttentionValue.cc.o" \
"CMakeFiles/truthvalue.dir/CountTruthValue.cc.o" \
"CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o" \
"CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o" \
"CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o" \
"CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o" \
"CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o" \
"CMakeFiles/truthvalue.dir/TruthValue.cc.o"

# External object files for target truthvalue
truthvalue_EXTERNAL_OBJECTS =

opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/build.make
opencog/truthvalue/libtruthvalue.so: /usr/local/lib/libcogutil.so
opencog/truthvalue/libtruthvalue.so: opencog/truthvalue/CMakeFiles/truthvalue.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX shared library libtruthvalue.so"
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/truthvalue.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/truthvalue/CMakeFiles/truthvalue.dir/build: opencog/truthvalue/libtruthvalue.so

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/build

opencog/truthvalue/CMakeFiles/truthvalue.dir/requires: opencog/truthvalue/CMakeFiles/truthvalue.dir/AttentionValue.cc.o.requires
opencog/truthvalue/CMakeFiles/truthvalue.dir/requires: opencog/truthvalue/CMakeFiles/truthvalue.dir/CountTruthValue.cc.o.requires
opencog/truthvalue/CMakeFiles/truthvalue.dir/requires: opencog/truthvalue/CMakeFiles/truthvalue.dir/EvidenceCountTruthValue.cc.o.requires
opencog/truthvalue/CMakeFiles/truthvalue.dir/requires: opencog/truthvalue/CMakeFiles/truthvalue.dir/FuzzyTruthValue.cc.o.requires
opencog/truthvalue/CMakeFiles/truthvalue.dir/requires: opencog/truthvalue/CMakeFiles/truthvalue.dir/IndefiniteTruthValue.cc.o.requires
opencog/truthvalue/CMakeFiles/truthvalue.dir/requires: opencog/truthvalue/CMakeFiles/truthvalue.dir/ProbabilisticTruthValue.cc.o.requires
opencog/truthvalue/CMakeFiles/truthvalue.dir/requires: opencog/truthvalue/CMakeFiles/truthvalue.dir/SimpleTruthValue.cc.o.requires
opencog/truthvalue/CMakeFiles/truthvalue.dir/requires: opencog/truthvalue/CMakeFiles/truthvalue.dir/TruthValue.cc.o.requires

.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/requires

opencog/truthvalue/CMakeFiles/truthvalue.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/truthvalue && $(CMAKE_COMMAND) -P CMakeFiles/truthvalue.dir/cmake_clean.cmake
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/clean

opencog/truthvalue/CMakeFiles/truthvalue.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/truthvalue /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/truthvalue /root/OPENCOG/atomspace/build/opencog/truthvalue/CMakeFiles/truthvalue.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/truthvalue/CMakeFiles/truthvalue.dir/depend

