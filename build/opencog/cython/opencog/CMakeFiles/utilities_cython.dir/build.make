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
include opencog/cython/opencog/CMakeFiles/utilities_cython.dir/depend.make

# Include the progress variables for this target.
include opencog/cython/opencog/CMakeFiles/utilities_cython.dir/progress.make

# Include the compile flags for this target's objects.
include opencog/cython/opencog/CMakeFiles/utilities_cython.dir/flags.make

opencog/cython/opencog/utilities.cpp: ../opencog/cython/opencog/utilities.pyx
opencog/cython/opencog/utilities.cpp: ../opencog/cython/opencog/utilities.pxd
opencog/cython/opencog/utilities.cpp: ../opencog/cython/opencog/atomspace.pxd
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Cythonizing utilities.pyx"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/cython -f -I /root/OPENCOG/atomspace/build -o utilities.cpp --cplus /root/OPENCOG/atomspace/opencog/cython/opencog/utilities.pyx

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/flags.make
opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o: ../opencog/cython/opencog/Utilities.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utilities_cython.dir/Utilities.cc.o -c /root/OPENCOG/atomspace/opencog/cython/opencog/Utilities.cc

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utilities_cython.dir/Utilities.cc.i"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/opencog/cython/opencog/Utilities.cc > CMakeFiles/utilities_cython.dir/Utilities.cc.i

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utilities_cython.dir/Utilities.cc.s"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/opencog/cython/opencog/Utilities.cc -o CMakeFiles/utilities_cython.dir/Utilities.cc.s

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o.requires:

.PHONY : opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o.requires

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o.provides: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o.requires
	$(MAKE) -f opencog/cython/opencog/CMakeFiles/utilities_cython.dir/build.make opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o.provides.build
.PHONY : opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o.provides

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o.provides.build: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o


opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/flags.make
opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o: opencog/cython/opencog/utilities.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utilities_cython.dir/utilities.cpp.o -c /root/OPENCOG/atomspace/build/opencog/cython/opencog/utilities.cpp

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utilities_cython.dir/utilities.cpp.i"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/OPENCOG/atomspace/build/opencog/cython/opencog/utilities.cpp > CMakeFiles/utilities_cython.dir/utilities.cpp.i

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utilities_cython.dir/utilities.cpp.s"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/OPENCOG/atomspace/build/opencog/cython/opencog/utilities.cpp -o CMakeFiles/utilities_cython.dir/utilities.cpp.s

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o.requires:

.PHONY : opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o.requires

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o.provides: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o.requires
	$(MAKE) -f opencog/cython/opencog/CMakeFiles/utilities_cython.dir/build.make opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o.provides.build
.PHONY : opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o.provides

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o.provides.build: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o


# Object files for target utilities_cython
utilities_cython_OBJECTS = \
"CMakeFiles/utilities_cython.dir/Utilities.cc.o" \
"CMakeFiles/utilities_cython.dir/utilities.cpp.o"

# External object files for target utilities_cython
utilities_cython_EXTERNAL_OBJECTS =

opencog/cython/opencog/utilities.so: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o
opencog/cython/opencog/utilities.so: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o
opencog/cython/opencog/utilities.so: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/build.make
opencog/cython/opencog/utilities.so: opencog/cython/libPythonEval.so
opencog/cython/opencog/utilities.so: opencog/cython/opencog/type_constructors.so
opencog/cython/opencog/utilities.so: /usr/local/lib/libcogutil.so
opencog/cython/opencog/utilities.so: /usr/lib/x86_64-linux-gnu/libpython3.5m.so
opencog/cython/opencog/utilities.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
opencog/cython/opencog/utilities.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
opencog/cython/opencog/utilities.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
opencog/cython/opencog/utilities.so: opencog/guile/libsmob.so
opencog/cython/opencog/utilities.so: opencog/atoms/reduct/libclearbox.so
opencog/cython/opencog/utilities.so: opencog/atoms/pattern/liblambda.so
opencog/cython/opencog/utilities.so: /usr/local/lib/libguile-2.2.so
opencog/cython/opencog/utilities.so: opencog/atomspace/libatomspace.so
opencog/cython/opencog/utilities.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
opencog/cython/opencog/utilities.so: opencog/atoms/core/libatomcore.so
opencog/cython/opencog/utilities.so: opencog/atomutils/libatomutils.so
opencog/cython/opencog/utilities.so: opencog/atoms/base/libatombase.so
opencog/cython/opencog/utilities.so: opencog/atoms/proto/libatomproto.so
opencog/cython/opencog/utilities.so: opencog/truthvalue/libtruthvalue.so
opencog/cython/opencog/utilities.so: /usr/local/lib/libcogutil.so
opencog/cython/opencog/utilities.so: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/OPENCOG/atomspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library utilities.so"
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utilities_cython.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
opencog/cython/opencog/CMakeFiles/utilities_cython.dir/build: opencog/cython/opencog/utilities.so

.PHONY : opencog/cython/opencog/CMakeFiles/utilities_cython.dir/build

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/requires: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/Utilities.cc.o.requires
opencog/cython/opencog/CMakeFiles/utilities_cython.dir/requires: opencog/cython/opencog/CMakeFiles/utilities_cython.dir/utilities.cpp.o.requires

.PHONY : opencog/cython/opencog/CMakeFiles/utilities_cython.dir/requires

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/clean:
	cd /root/OPENCOG/atomspace/build/opencog/cython/opencog && $(CMAKE_COMMAND) -P CMakeFiles/utilities_cython.dir/cmake_clean.cmake
.PHONY : opencog/cython/opencog/CMakeFiles/utilities_cython.dir/clean

opencog/cython/opencog/CMakeFiles/utilities_cython.dir/depend: opencog/cython/opencog/utilities.cpp
	cd /root/OPENCOG/atomspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/OPENCOG/atomspace /root/OPENCOG/atomspace/opencog/cython/opencog /root/OPENCOG/atomspace/build /root/OPENCOG/atomspace/build/opencog/cython/opencog /root/OPENCOG/atomspace/build/opencog/cython/opencog/CMakeFiles/utilities_cython.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencog/cython/opencog/CMakeFiles/utilities_cython.dir/depend
