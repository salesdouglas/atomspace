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
include opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/depend.make

# Include the progress variables for this target.
include opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/flags.make

opencog/cython/opencog/scheme_wrapper.cpp: ../opencog/cython/opencog/scheme_wrapper.pyx
opencog/cython/opencog/scheme_wrapper.cpp: ../opencog/cython/opencog/PyScheme.h
opencog/cython/opencog/scheme_wrapper.cpp: ../opencog/cython/opencog/atomspace.pxd
opencog/cython/opencog/scheme_wrapper.cpp: ../opencog/cython/opencog/../load-file.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Cythonizing scheme_wrapper.pyx"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/cython -f -I /root/OPENCOG/atomspace/build -o scheme_wrapper.cpp --cplus /root/OPENCOG/atomspace/opencog/cython/opencog/scheme_wrapper.pyx

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/flags.make
opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o: ../opencog/cython/opencog/PyScheme.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o -c /root/OPENCOG/atomspace/opencog/cython/opencog/PyScheme.cc

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheme_wrapper.dir/PyScheme.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/cython/opencog/PyScheme.cc > CMakeFiles/scheme_wrapper.dir/PyScheme.cc.i

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheme_wrapper.dir/PyScheme.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/cython/opencog/PyScheme.cc -o CMakeFiles/scheme_wrapper.dir/PyScheme.cc.s

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o.requires:

.PHONY : opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o.requires

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o.provides: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o.requires
	$(MAKE) -f opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/build.make opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o.provides.build
.PHONY : opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o.provides

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o.provides.build: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o


opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/flags.make
opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o: opencog/cython/opencog/scheme_wrapper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o -c /root/OPENCOG/atomspace/build/opencog/cython/opencog/scheme_wrapper.cpp

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.i"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/opencog/cython/opencog/scheme_wrapper.cpp > CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.i

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.s"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/opencog/cython/opencog/scheme_wrapper.cpp -o CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.s

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o.requires:

.PHONY : opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o.requires

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o.provides: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o.requires
	$(MAKE) -f opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/build.make opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o.provides.build
.PHONY : opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o.provides

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o.provides.build: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o


# Object files for target scheme_wrapper
scheme_wrapper_OBJECTS = \
"CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o" \
"CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o"

# External object files for target scheme_wrapper
scheme_wrapper_EXTERNAL_OBJECTS =

opencog/cython/opencog/scheme_wrapper.so: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o
opencog/cython/opencog/scheme_wrapper.so: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o
opencog/cython/opencog/scheme_wrapper.so: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/build.make
opencog/cython/opencog/scheme_wrapper.so: opencog/cython/opencog/atomspace.so
opencog/cython/opencog/scheme_wrapper.so: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
opencog/cython/opencog/scheme_wrapper.so: opencog/attentionbank/libattentionbank.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atoms/execution/libexecution.so
opencog/cython/opencog/scheme_wrapper.so: opencog/query/libquery.so
opencog/cython/opencog/scheme_wrapper.so: opencog/cython/libPythonEval.so
opencog/cython/opencog/scheme_wrapper.so: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
opencog/cython/opencog/scheme_wrapper.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
opencog/cython/opencog/scheme_wrapper.so: opencog/guile/libsmob.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atoms/pattern/liblambda.so
opencog/cython/opencog/scheme_wrapper.so: /usr/local/lib/libguile-2.2.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atoms/reduct/libclearbox.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atomspaceutils/libatomspaceutils.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atomspace/libatomspace.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atoms/core/libatomcore.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atomutils/libatomutils.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atoms/base/libatombase.so
opencog/cython/opencog/scheme_wrapper.so: opencog/truthvalue/libtruthvalue.so
opencog/cython/opencog/scheme_wrapper.so: opencog/atoms/proto/libatomproto.so
opencog/cython/opencog/scheme_wrapper.so: /usr/local/lib/libcogutil.so
opencog/cython/opencog/scheme_wrapper.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
opencog/cython/opencog/scheme_wrapper.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
opencog/cython/opencog/scheme_wrapper.so: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library scheme_wrapper.so"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scheme_wrapper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/build: opencog/cython/opencog/scheme_wrapper.so

.PHONY : opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/build

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/requires: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/PyScheme.cc.o.requires
opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/requires: opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/scheme_wrapper.cpp.o.requires

.PHONY : opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/requires

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && $(CMAKE_COMMAND) -P CMakeFiles/scheme_wrapper.dir/cmake_clean.cmake
.PHONY : opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/clean

opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/depend: opencog/cython/opencog/scheme_wrapper.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/cython/opencog /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/cython/opencog /root/OPENCOG/atomspace/build/opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/cython/opencog/CMakeFiles/scheme_wrapper.dir/depend
