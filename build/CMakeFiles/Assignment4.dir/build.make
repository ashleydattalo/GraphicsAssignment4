# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ashleydattalo/471/Assign4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ashleydattalo/471/Assign4/build

# Include any dependencies generated for this target.
include CMakeFiles/Assignment4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Assignment4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Assignment4.dir/flags.make

CMakeFiles/Assignment4.dir/src/Camera.cpp.o: CMakeFiles/Assignment4.dir/flags.make
CMakeFiles/Assignment4.dir/src/Camera.cpp.o: ../src/Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Assignment4.dir/src/Camera.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment4.dir/src/Camera.cpp.o -c /Users/ashleydattalo/471/Assign4/src/Camera.cpp

CMakeFiles/Assignment4.dir/src/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment4.dir/src/Camera.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ashleydattalo/471/Assign4/src/Camera.cpp > CMakeFiles/Assignment4.dir/src/Camera.cpp.i

CMakeFiles/Assignment4.dir/src/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment4.dir/src/Camera.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ashleydattalo/471/Assign4/src/Camera.cpp -o CMakeFiles/Assignment4.dir/src/Camera.cpp.s

CMakeFiles/Assignment4.dir/src/Camera.cpp.o.requires:

.PHONY : CMakeFiles/Assignment4.dir/src/Camera.cpp.o.requires

CMakeFiles/Assignment4.dir/src/Camera.cpp.o.provides: CMakeFiles/Assignment4.dir/src/Camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment4.dir/build.make CMakeFiles/Assignment4.dir/src/Camera.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment4.dir/src/Camera.cpp.o.provides

CMakeFiles/Assignment4.dir/src/Camera.cpp.o.provides.build: CMakeFiles/Assignment4.dir/src/Camera.cpp.o


CMakeFiles/Assignment4.dir/src/GLSL.cpp.o: CMakeFiles/Assignment4.dir/flags.make
CMakeFiles/Assignment4.dir/src/GLSL.cpp.o: ../src/GLSL.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Assignment4.dir/src/GLSL.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment4.dir/src/GLSL.cpp.o -c /Users/ashleydattalo/471/Assign4/src/GLSL.cpp

CMakeFiles/Assignment4.dir/src/GLSL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment4.dir/src/GLSL.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ashleydattalo/471/Assign4/src/GLSL.cpp > CMakeFiles/Assignment4.dir/src/GLSL.cpp.i

CMakeFiles/Assignment4.dir/src/GLSL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment4.dir/src/GLSL.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ashleydattalo/471/Assign4/src/GLSL.cpp -o CMakeFiles/Assignment4.dir/src/GLSL.cpp.s

CMakeFiles/Assignment4.dir/src/GLSL.cpp.o.requires:

.PHONY : CMakeFiles/Assignment4.dir/src/GLSL.cpp.o.requires

CMakeFiles/Assignment4.dir/src/GLSL.cpp.o.provides: CMakeFiles/Assignment4.dir/src/GLSL.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment4.dir/build.make CMakeFiles/Assignment4.dir/src/GLSL.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment4.dir/src/GLSL.cpp.o.provides

CMakeFiles/Assignment4.dir/src/GLSL.cpp.o.provides.build: CMakeFiles/Assignment4.dir/src/GLSL.cpp.o


CMakeFiles/Assignment4.dir/src/Light.cpp.o: CMakeFiles/Assignment4.dir/flags.make
CMakeFiles/Assignment4.dir/src/Light.cpp.o: ../src/Light.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Assignment4.dir/src/Light.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment4.dir/src/Light.cpp.o -c /Users/ashleydattalo/471/Assign4/src/Light.cpp

CMakeFiles/Assignment4.dir/src/Light.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment4.dir/src/Light.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ashleydattalo/471/Assign4/src/Light.cpp > CMakeFiles/Assignment4.dir/src/Light.cpp.i

CMakeFiles/Assignment4.dir/src/Light.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment4.dir/src/Light.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ashleydattalo/471/Assign4/src/Light.cpp -o CMakeFiles/Assignment4.dir/src/Light.cpp.s

CMakeFiles/Assignment4.dir/src/Light.cpp.o.requires:

.PHONY : CMakeFiles/Assignment4.dir/src/Light.cpp.o.requires

CMakeFiles/Assignment4.dir/src/Light.cpp.o.provides: CMakeFiles/Assignment4.dir/src/Light.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment4.dir/build.make CMakeFiles/Assignment4.dir/src/Light.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment4.dir/src/Light.cpp.o.provides

CMakeFiles/Assignment4.dir/src/Light.cpp.o.provides.build: CMakeFiles/Assignment4.dir/src/Light.cpp.o


CMakeFiles/Assignment4.dir/src/main.cpp.o: CMakeFiles/Assignment4.dir/flags.make
CMakeFiles/Assignment4.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Assignment4.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment4.dir/src/main.cpp.o -c /Users/ashleydattalo/471/Assign4/src/main.cpp

CMakeFiles/Assignment4.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment4.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ashleydattalo/471/Assign4/src/main.cpp > CMakeFiles/Assignment4.dir/src/main.cpp.i

CMakeFiles/Assignment4.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment4.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ashleydattalo/471/Assign4/src/main.cpp -o CMakeFiles/Assignment4.dir/src/main.cpp.s

CMakeFiles/Assignment4.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/Assignment4.dir/src/main.cpp.o.requires

CMakeFiles/Assignment4.dir/src/main.cpp.o.provides: CMakeFiles/Assignment4.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment4.dir/build.make CMakeFiles/Assignment4.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment4.dir/src/main.cpp.o.provides

CMakeFiles/Assignment4.dir/src/main.cpp.o.provides.build: CMakeFiles/Assignment4.dir/src/main.cpp.o


CMakeFiles/Assignment4.dir/src/Material.cpp.o: CMakeFiles/Assignment4.dir/flags.make
CMakeFiles/Assignment4.dir/src/Material.cpp.o: ../src/Material.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Assignment4.dir/src/Material.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment4.dir/src/Material.cpp.o -c /Users/ashleydattalo/471/Assign4/src/Material.cpp

CMakeFiles/Assignment4.dir/src/Material.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment4.dir/src/Material.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ashleydattalo/471/Assign4/src/Material.cpp > CMakeFiles/Assignment4.dir/src/Material.cpp.i

CMakeFiles/Assignment4.dir/src/Material.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment4.dir/src/Material.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ashleydattalo/471/Assign4/src/Material.cpp -o CMakeFiles/Assignment4.dir/src/Material.cpp.s

CMakeFiles/Assignment4.dir/src/Material.cpp.o.requires:

.PHONY : CMakeFiles/Assignment4.dir/src/Material.cpp.o.requires

CMakeFiles/Assignment4.dir/src/Material.cpp.o.provides: CMakeFiles/Assignment4.dir/src/Material.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment4.dir/build.make CMakeFiles/Assignment4.dir/src/Material.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment4.dir/src/Material.cpp.o.provides

CMakeFiles/Assignment4.dir/src/Material.cpp.o.provides.build: CMakeFiles/Assignment4.dir/src/Material.cpp.o


CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o: CMakeFiles/Assignment4.dir/flags.make
CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o: ../src/MatrixStack.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o -c /Users/ashleydattalo/471/Assign4/src/MatrixStack.cpp

CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ashleydattalo/471/Assign4/src/MatrixStack.cpp > CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.i

CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ashleydattalo/471/Assign4/src/MatrixStack.cpp -o CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.s

CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o.requires:

.PHONY : CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o.requires

CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o.provides: CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment4.dir/build.make CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o.provides

CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o.provides.build: CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o


CMakeFiles/Assignment4.dir/src/Program.cpp.o: CMakeFiles/Assignment4.dir/flags.make
CMakeFiles/Assignment4.dir/src/Program.cpp.o: ../src/Program.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Assignment4.dir/src/Program.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment4.dir/src/Program.cpp.o -c /Users/ashleydattalo/471/Assign4/src/Program.cpp

CMakeFiles/Assignment4.dir/src/Program.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment4.dir/src/Program.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ashleydattalo/471/Assign4/src/Program.cpp > CMakeFiles/Assignment4.dir/src/Program.cpp.i

CMakeFiles/Assignment4.dir/src/Program.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment4.dir/src/Program.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ashleydattalo/471/Assign4/src/Program.cpp -o CMakeFiles/Assignment4.dir/src/Program.cpp.s

CMakeFiles/Assignment4.dir/src/Program.cpp.o.requires:

.PHONY : CMakeFiles/Assignment4.dir/src/Program.cpp.o.requires

CMakeFiles/Assignment4.dir/src/Program.cpp.o.provides: CMakeFiles/Assignment4.dir/src/Program.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment4.dir/build.make CMakeFiles/Assignment4.dir/src/Program.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment4.dir/src/Program.cpp.o.provides

CMakeFiles/Assignment4.dir/src/Program.cpp.o.provides.build: CMakeFiles/Assignment4.dir/src/Program.cpp.o


CMakeFiles/Assignment4.dir/src/Shape.cpp.o: CMakeFiles/Assignment4.dir/flags.make
CMakeFiles/Assignment4.dir/src/Shape.cpp.o: ../src/Shape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Assignment4.dir/src/Shape.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Assignment4.dir/src/Shape.cpp.o -c /Users/ashleydattalo/471/Assign4/src/Shape.cpp

CMakeFiles/Assignment4.dir/src/Shape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Assignment4.dir/src/Shape.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ashleydattalo/471/Assign4/src/Shape.cpp > CMakeFiles/Assignment4.dir/src/Shape.cpp.i

CMakeFiles/Assignment4.dir/src/Shape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Assignment4.dir/src/Shape.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ashleydattalo/471/Assign4/src/Shape.cpp -o CMakeFiles/Assignment4.dir/src/Shape.cpp.s

CMakeFiles/Assignment4.dir/src/Shape.cpp.o.requires:

.PHONY : CMakeFiles/Assignment4.dir/src/Shape.cpp.o.requires

CMakeFiles/Assignment4.dir/src/Shape.cpp.o.provides: CMakeFiles/Assignment4.dir/src/Shape.cpp.o.requires
	$(MAKE) -f CMakeFiles/Assignment4.dir/build.make CMakeFiles/Assignment4.dir/src/Shape.cpp.o.provides.build
.PHONY : CMakeFiles/Assignment4.dir/src/Shape.cpp.o.provides

CMakeFiles/Assignment4.dir/src/Shape.cpp.o.provides.build: CMakeFiles/Assignment4.dir/src/Shape.cpp.o


# Object files for target Assignment4
Assignment4_OBJECTS = \
"CMakeFiles/Assignment4.dir/src/Camera.cpp.o" \
"CMakeFiles/Assignment4.dir/src/GLSL.cpp.o" \
"CMakeFiles/Assignment4.dir/src/Light.cpp.o" \
"CMakeFiles/Assignment4.dir/src/main.cpp.o" \
"CMakeFiles/Assignment4.dir/src/Material.cpp.o" \
"CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o" \
"CMakeFiles/Assignment4.dir/src/Program.cpp.o" \
"CMakeFiles/Assignment4.dir/src/Shape.cpp.o"

# External object files for target Assignment4
Assignment4_EXTERNAL_OBJECTS =

Assignment4: CMakeFiles/Assignment4.dir/src/Camera.cpp.o
Assignment4: CMakeFiles/Assignment4.dir/src/GLSL.cpp.o
Assignment4: CMakeFiles/Assignment4.dir/src/Light.cpp.o
Assignment4: CMakeFiles/Assignment4.dir/src/main.cpp.o
Assignment4: CMakeFiles/Assignment4.dir/src/Material.cpp.o
Assignment4: CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o
Assignment4: CMakeFiles/Assignment4.dir/src/Program.cpp.o
Assignment4: CMakeFiles/Assignment4.dir/src/Shape.cpp.o
Assignment4: CMakeFiles/Assignment4.dir/build.make
Assignment4: /Users/ashleydattalo/471/lib/glfw-3.1.2/debug/src/libglfw3.a
Assignment4: /Users/ashleydattalo/471/lib/glew-1.13.0/lib/libGLEW.a
Assignment4: CMakeFiles/Assignment4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ashleydattalo/471/Assign4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable Assignment4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Assignment4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Assignment4.dir/build: Assignment4

.PHONY : CMakeFiles/Assignment4.dir/build

CMakeFiles/Assignment4.dir/requires: CMakeFiles/Assignment4.dir/src/Camera.cpp.o.requires
CMakeFiles/Assignment4.dir/requires: CMakeFiles/Assignment4.dir/src/GLSL.cpp.o.requires
CMakeFiles/Assignment4.dir/requires: CMakeFiles/Assignment4.dir/src/Light.cpp.o.requires
CMakeFiles/Assignment4.dir/requires: CMakeFiles/Assignment4.dir/src/main.cpp.o.requires
CMakeFiles/Assignment4.dir/requires: CMakeFiles/Assignment4.dir/src/Material.cpp.o.requires
CMakeFiles/Assignment4.dir/requires: CMakeFiles/Assignment4.dir/src/MatrixStack.cpp.o.requires
CMakeFiles/Assignment4.dir/requires: CMakeFiles/Assignment4.dir/src/Program.cpp.o.requires
CMakeFiles/Assignment4.dir/requires: CMakeFiles/Assignment4.dir/src/Shape.cpp.o.requires

.PHONY : CMakeFiles/Assignment4.dir/requires

CMakeFiles/Assignment4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Assignment4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Assignment4.dir/clean

CMakeFiles/Assignment4.dir/depend:
	cd /Users/ashleydattalo/471/Assign4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ashleydattalo/471/Assign4 /Users/ashleydattalo/471/Assign4 /Users/ashleydattalo/471/Assign4/build /Users/ashleydattalo/471/Assign4/build /Users/ashleydattalo/471/Assign4/build/CMakeFiles/Assignment4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Assignment4.dir/depend

