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
include opencog/atoms/execution/CMakeFiles/execution.dir/depend.make

# Include the progress variables for this target.
include opencog/atoms/execution/CMakeFiles/execution.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/atoms/execution/CMakeFiles/execution.dir/flags.make

opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o: opencog/atoms/execution/CMakeFiles/execution.dir/flags.make
opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o: ../opencog/atoms/execution/Force.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/execution.dir/Force.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/execution/Force.cc

opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/execution.dir/Force.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/execution/Force.cc > CMakeFiles/execution.dir/Force.cc.i

opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/execution.dir/Force.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/execution/Force.cc -o CMakeFiles/execution.dir/Force.cc.s

opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o.requires:

.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o.requires

opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o.provides: opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o.requires
	$(MAKE) -f opencog/atoms/execution/CMakeFiles/execution.dir/build.make opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o.provides.build
.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o.provides

opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o.provides.build: opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o


opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o: opencog/atoms/execution/CMakeFiles/execution.dir/flags.make
opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o: ../opencog/atoms/execution/EvaluationLink.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/execution.dir/EvaluationLink.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/execution/EvaluationLink.cc

opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/execution.dir/EvaluationLink.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/execution/EvaluationLink.cc > CMakeFiles/execution.dir/EvaluationLink.cc.i

opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/execution.dir/EvaluationLink.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/execution/EvaluationLink.cc -o CMakeFiles/execution.dir/EvaluationLink.cc.s

opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o.requires:

.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o.requires

opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o.provides: opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o.requires
	$(MAKE) -f opencog/atoms/execution/CMakeFiles/execution.dir/build.make opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o.provides.build
.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o.provides

opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o.provides.build: opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o


opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o: opencog/atoms/execution/CMakeFiles/execution.dir/flags.make
opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o: ../opencog/atoms/execution/ExecutionOutputLink.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/execution.dir/ExecutionOutputLink.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/execution/ExecutionOutputLink.cc

opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/execution.dir/ExecutionOutputLink.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/execution/ExecutionOutputLink.cc > CMakeFiles/execution.dir/ExecutionOutputLink.cc.i

opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/execution.dir/ExecutionOutputLink.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/execution/ExecutionOutputLink.cc -o CMakeFiles/execution.dir/ExecutionOutputLink.cc.s

opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o.requires:

.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o.requires

opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o.provides: opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o.requires
	$(MAKE) -f opencog/atoms/execution/CMakeFiles/execution.dir/build.make opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o.provides.build
.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o.provides

opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o.provides.build: opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o


opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o: opencog/atoms/execution/CMakeFiles/execution.dir/flags.make
opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o: ../opencog/atoms/execution/Instantiator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/execution.dir/Instantiator.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/execution/Instantiator.cc

opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/execution.dir/Instantiator.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/execution/Instantiator.cc > CMakeFiles/execution.dir/Instantiator.cc.i

opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/execution.dir/Instantiator.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/execution/Instantiator.cc -o CMakeFiles/execution.dir/Instantiator.cc.s

opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o.requires:

.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o.requires

opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o.provides: opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o.requires
	$(MAKE) -f opencog/atoms/execution/CMakeFiles/execution.dir/build.make opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o.provides.build
.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o.provides

opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o.provides.build: opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o


opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o: opencog/atoms/execution/CMakeFiles/execution.dir/flags.make
opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o: ../opencog/atoms/execution/MapLink.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/execution.dir/MapLink.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/execution/MapLink.cc

opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/execution.dir/MapLink.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/execution/MapLink.cc > CMakeFiles/execution.dir/MapLink.cc.i

opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/execution.dir/MapLink.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/execution/MapLink.cc -o CMakeFiles/execution.dir/MapLink.cc.s

opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o.requires:

.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o.requires

opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o.provides: opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o.requires
	$(MAKE) -f opencog/atoms/execution/CMakeFiles/execution.dir/build.make opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o.provides.build
.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o.provides

opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o.provides.build: opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o


opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o: opencog/atoms/execution/CMakeFiles/execution.dir/flags.make
opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o: ../opencog/atoms/execution/ExecSCM.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/execution.dir/ExecSCM.cc.o -c /root/OPENCOG/atomspace/opencog/atoms/execution/ExecSCM.cc

opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/execution.dir/ExecSCM.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/atoms/execution/ExecSCM.cc > CMakeFiles/execution.dir/ExecSCM.cc.i

opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/execution.dir/ExecSCM.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/atoms/execution/ExecSCM.cc -o CMakeFiles/execution.dir/ExecSCM.cc.s

opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o.requires:

.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o.requires

opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o.provides: opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o.requires
	$(MAKE) -f opencog/atoms/execution/CMakeFiles/execution.dir/build.make opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o.provides.build
.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o.provides

opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o.provides.build: opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o


# Object files for target execution
execution_OBJECTS = \
"CMakeFiles/execution.dir/Force.cc.o" \
"CMakeFiles/execution.dir/EvaluationLink.cc.o" \
"CMakeFiles/execution.dir/ExecutionOutputLink.cc.o" \
"CMakeFiles/execution.dir/Instantiator.cc.o" \
"CMakeFiles/execution.dir/MapLink.cc.o" \
"CMakeFiles/execution.dir/ExecSCM.cc.o"

# External object files for target execution
execution_EXTERNAL_OBJECTS =

opencog/atoms/execution/libexecution.so: opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o
opencog/atoms/execution/libexecution.so: opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o
opencog/atoms/execution/libexecution.so: opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o
opencog/atoms/execution/libexecution.so: opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o
opencog/atoms/execution/libexecution.so: opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o
opencog/atoms/execution/libexecution.so: opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o
opencog/atoms/execution/libexecution.so: opencog/atoms/execution/CMakeFiles/execution.dir/build.make
opencog/atoms/execution/libexecution.so: opencog/query/libquery.so
opencog/atoms/execution/libexecution.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
opencog/atoms/execution/libexecution.so: opencog/cython/libPythonEval.so
opencog/atoms/execution/libexecution.so: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
opencog/atoms/execution/libexecution.so: opencog/guile/libsmob.so
opencog/atoms/execution/libexecution.so: opencog/atoms/reduct/libclearbox.so
opencog/atoms/execution/libexecution.so: opencog/atoms/pattern/liblambda.so
opencog/atoms/execution/libexecution.so: opencog/atomspace/libatomspace.so
opencog/atoms/execution/libexecution.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
opencog/atoms/execution/libexecution.so: opencog/atoms/core/libatomcore.so
opencog/atoms/execution/libexecution.so: opencog/atomutils/libatomutils.so
opencog/atoms/execution/libexecution.so: opencog/atoms/base/libatombase.so
opencog/atoms/execution/libexecution.so: opencog/atoms/proto/libatomproto.so
opencog/atoms/execution/libexecution.so: opencog/truthvalue/libtruthvalue.so
opencog/atoms/execution/libexecution.so: /usr/local/lib/libguile-2.2.so
opencog/atoms/execution/libexecution.so: /usr/local/lib/libcogutil.so
opencog/atoms/execution/libexecution.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
opencog/atoms/execution/libexecution.so: opencog/atoms/execution/CMakeFiles/execution.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX shared library libexecution.so"
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/execution.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/atoms/execution/CMakeFiles/execution.dir/build: opencog/atoms/execution/libexecution.so

.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/build

opencog/atoms/execution/CMakeFiles/execution.dir/requires: opencog/atoms/execution/CMakeFiles/execution.dir/Force.cc.o.requires
opencog/atoms/execution/CMakeFiles/execution.dir/requires: opencog/atoms/execution/CMakeFiles/execution.dir/EvaluationLink.cc.o.requires
opencog/atoms/execution/CMakeFiles/execution.dir/requires: opencog/atoms/execution/CMakeFiles/execution.dir/ExecutionOutputLink.cc.o.requires
opencog/atoms/execution/CMakeFiles/execution.dir/requires: opencog/atoms/execution/CMakeFiles/execution.dir/Instantiator.cc.o.requires
opencog/atoms/execution/CMakeFiles/execution.dir/requires: opencog/atoms/execution/CMakeFiles/execution.dir/MapLink.cc.o.requires
opencog/atoms/execution/CMakeFiles/execution.dir/requires: opencog/atoms/execution/CMakeFiles/execution.dir/ExecSCM.cc.o.requires

.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/requires

opencog/atoms/execution/CMakeFiles/execution.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/atoms/execution && $(CMAKE_COMMAND) -P CMakeFiles/execution.dir/cmake_clean.cmake
.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/clean

opencog/atoms/execution/CMakeFiles/execution.dir/depend:
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/atoms/execution /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/atoms/execution /root/OPENCOG/atomspace/build/opencog/atoms/execution/CMakeFiles/execution.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/atoms/execution/CMakeFiles/execution.dir/depend
