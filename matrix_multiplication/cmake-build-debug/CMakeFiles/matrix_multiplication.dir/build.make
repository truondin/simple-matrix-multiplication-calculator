# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/matrix_multiplication.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/matrix_multiplication.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/matrix_multiplication.dir/flags.make

CMakeFiles/matrix_multiplication.dir/main.cpp.obj: CMakeFiles/matrix_multiplication.dir/flags.make
CMakeFiles/matrix_multiplication.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/matrix_multiplication.dir/main.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\matrix_multiplication.dir\main.cpp.obj -c C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\main.cpp

CMakeFiles/matrix_multiplication.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_multiplication.dir/main.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\main.cpp > CMakeFiles\matrix_multiplication.dir\main.cpp.i

CMakeFiles/matrix_multiplication.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_multiplication.dir/main.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\main.cpp -o CMakeFiles\matrix_multiplication.dir\main.cpp.s

CMakeFiles/matrix_multiplication.dir/Matrix.cpp.obj: CMakeFiles/matrix_multiplication.dir/flags.make
CMakeFiles/matrix_multiplication.dir/Matrix.cpp.obj: ../Matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/matrix_multiplication.dir/Matrix.cpp.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\matrix_multiplication.dir\Matrix.cpp.obj -c C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\Matrix.cpp

CMakeFiles/matrix_multiplication.dir/Matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_multiplication.dir/Matrix.cpp.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\Matrix.cpp > CMakeFiles\matrix_multiplication.dir\Matrix.cpp.i

CMakeFiles/matrix_multiplication.dir/Matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_multiplication.dir/Matrix.cpp.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\Matrix.cpp -o CMakeFiles\matrix_multiplication.dir\Matrix.cpp.s

# Object files for target matrix_multiplication
matrix_multiplication_OBJECTS = \
"CMakeFiles/matrix_multiplication.dir/main.cpp.obj" \
"CMakeFiles/matrix_multiplication.dir/Matrix.cpp.obj"

# External object files for target matrix_multiplication
matrix_multiplication_EXTERNAL_OBJECTS =

matrix_multiplication.exe: CMakeFiles/matrix_multiplication.dir/main.cpp.obj
matrix_multiplication.exe: CMakeFiles/matrix_multiplication.dir/Matrix.cpp.obj
matrix_multiplication.exe: CMakeFiles/matrix_multiplication.dir/build.make
matrix_multiplication.exe: CMakeFiles/matrix_multiplication.dir/linklibs.rsp
matrix_multiplication.exe: CMakeFiles/matrix_multiplication.dir/objects1.rsp
matrix_multiplication.exe: CMakeFiles/matrix_multiplication.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable matrix_multiplication.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\matrix_multiplication.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/matrix_multiplication.dir/build: matrix_multiplication.exe
.PHONY : CMakeFiles/matrix_multiplication.dir/build

CMakeFiles/matrix_multiplication.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\matrix_multiplication.dir\cmake_clean.cmake
.PHONY : CMakeFiles/matrix_multiplication.dir/clean

CMakeFiles/matrix_multiplication.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\cmake-build-debug C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\cmake-build-debug C:\Users\danne\Desktop\uni\3.semestr\PJC\pjc_matrix_multiplication\matrix_multiplication\cmake-build-debug\CMakeFiles\matrix_multiplication.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/matrix_multiplication.dir/depend

