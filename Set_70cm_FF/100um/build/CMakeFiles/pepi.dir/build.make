# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/j.guzmanm/Set_70cm_FF/100um

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/j.guzmanm/Set_70cm_FF/100um/build

# Include any dependencies generated for this target.
include CMakeFiles/pepi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pepi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pepi.dir/flags.make

CMakeFiles/pepi.dir/pepi.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/pepi.cc.o: ../pepi.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pepi.dir/pepi.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/pepi.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/pepi.cc

CMakeFiles/pepi.dir/pepi.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/pepi.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/pepi.cc > CMakeFiles/pepi.dir/pepi.cc.i

CMakeFiles/pepi.dir/pepi.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/pepi.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/pepi.cc -o CMakeFiles/pepi.dir/pepi.cc.s

CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.o: ../src/PepiActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiActionInitialization.cc

CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiActionInitialization.cc > CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.i

CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiActionInitialization.cc -o CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.s

CMakeFiles/pepi.dir/src/PepiController.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiController.cc.o: ../src/PepiController.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pepi.dir/src/PepiController.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiController.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiController.cc

CMakeFiles/pepi.dir/src/PepiController.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiController.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiController.cc > CMakeFiles/pepi.dir/src/PepiController.cc.i

CMakeFiles/pepi.dir/src/PepiController.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiController.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiController.cc -o CMakeFiles/pepi.dir/src/PepiController.cc.s

CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.o: ../src/PepiControllerMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiControllerMessenger.cc

CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiControllerMessenger.cc > CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.i

CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiControllerMessenger.cc -o CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.s

CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.o: ../src/PepiDetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiDetectorConstruction.cc

CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiDetectorConstruction.cc > CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.i

CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiDetectorConstruction.cc -o CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.s

CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.o: ../src/PepiDetectorMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiDetectorMessenger.cc

CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiDetectorMessenger.cc > CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.i

CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiDetectorMessenger.cc -o CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.s

CMakeFiles/pepi.dir/src/PepiEventAction.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiEventAction.cc.o: ../src/PepiEventAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/pepi.dir/src/PepiEventAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiEventAction.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiEventAction.cc

CMakeFiles/pepi.dir/src/PepiEventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiEventAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiEventAction.cc > CMakeFiles/pepi.dir/src/PepiEventAction.cc.i

CMakeFiles/pepi.dir/src/PepiEventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiEventAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiEventAction.cc -o CMakeFiles/pepi.dir/src/PepiEventAction.cc.s

CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.o: ../src/PepiPSPixiRad.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPSPixiRad.cc

CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPSPixiRad.cc > CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.i

CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPSPixiRad.cc -o CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.s

CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.o: ../src/PepiPhysicsList.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsList.cc

CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsList.cc > CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.i

CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsList.cc -o CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.s

CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.o: ../src/PepiPhysicsListMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsListMessenger.cc

CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsListMessenger.cc > CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.i

CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsListMessenger.cc -o CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.s

CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.o: ../src/PepiPhysicsXrayRefraction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsXrayRefraction.cc

CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsXrayRefraction.cc > CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.i

CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPhysicsXrayRefraction.cc -o CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.s

CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.o: ../src/PepiPrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPrimaryGeneratorAction.cc

CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPrimaryGeneratorAction.cc > CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.i

CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiPrimaryGeneratorAction.cc -o CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.s

CMakeFiles/pepi.dir/src/PepiRun.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiRun.cc.o: ../src/PepiRun.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/pepi.dir/src/PepiRun.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiRun.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiRun.cc

CMakeFiles/pepi.dir/src/PepiRun.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiRun.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiRun.cc > CMakeFiles/pepi.dir/src/PepiRun.cc.i

CMakeFiles/pepi.dir/src/PepiRun.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiRun.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiRun.cc -o CMakeFiles/pepi.dir/src/PepiRun.cc.s

CMakeFiles/pepi.dir/src/PepiRunAction.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiRunAction.cc.o: ../src/PepiRunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/pepi.dir/src/PepiRunAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiRunAction.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiRunAction.cc

CMakeFiles/pepi.dir/src/PepiRunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiRunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiRunAction.cc > CMakeFiles/pepi.dir/src/PepiRunAction.cc.i

CMakeFiles/pepi.dir/src/PepiRunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiRunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiRunAction.cc -o CMakeFiles/pepi.dir/src/PepiRunAction.cc.s

CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.o: CMakeFiles/pepi.dir/flags.make
CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.o: ../src/PepiXrayRefraction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.o -c /home/j.guzmanm/Set_70cm_FF/100um/src/PepiXrayRefraction.cc

CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/j.guzmanm/Set_70cm_FF/100um/src/PepiXrayRefraction.cc > CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.i

CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/j.guzmanm/Set_70cm_FF/100um/src/PepiXrayRefraction.cc -o CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.s

# Object files for target pepi
pepi_OBJECTS = \
"CMakeFiles/pepi.dir/pepi.cc.o" \
"CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.o" \
"CMakeFiles/pepi.dir/src/PepiController.cc.o" \
"CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.o" \
"CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.o" \
"CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.o" \
"CMakeFiles/pepi.dir/src/PepiEventAction.cc.o" \
"CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.o" \
"CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.o" \
"CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.o" \
"CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.o" \
"CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.o" \
"CMakeFiles/pepi.dir/src/PepiRun.cc.o" \
"CMakeFiles/pepi.dir/src/PepiRunAction.cc.o" \
"CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.o"

# External object files for target pepi
pepi_EXTERNAL_OBJECTS =

pepi: CMakeFiles/pepi.dir/pepi.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiActionInitialization.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiController.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiControllerMessenger.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiDetectorConstruction.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiDetectorMessenger.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiEventAction.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiPSPixiRad.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiPhysicsList.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiPhysicsListMessenger.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiPhysicsXrayRefraction.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiPrimaryGeneratorAction.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiRun.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiRunAction.cc.o
pepi: CMakeFiles/pepi.dir/src/PepiXrayRefraction.cc.o
pepi: CMakeFiles/pepi.dir/build.make
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4Tree.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4GMocren.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4visHepRep.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4RayTracer.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4VRML.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4OpenGL.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4gl2ps.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4interfaces.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4persistency.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4error_propagation.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4readout.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4physicslists.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4parmodels.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4FR.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4vis_management.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4modeling.so
pepi: /usr/lib/x86_64-linux-gnu/libGLU.so
pepi: /usr/lib/x86_64-linux-gnu/libGL.so
pepi: /usr/lib/x86_64-linux-gnu/libXmu.so
pepi: /usr/lib/x86_64-linux-gnu/libXext.so
pepi: /usr/lib/x86_64-linux-gnu/libXt.so
pepi: /usr/lib/x86_64-linux-gnu/libSM.so
pepi: /usr/lib/x86_64-linux-gnu/libICE.so
pepi: /usr/lib/x86_64-linux-gnu/libX11.so
pepi: /usr/lib/x86_64-linux-gnu/libQtOpenGL.so
pepi: /usr/lib/x86_64-linux-gnu/libQtGui.so
pepi: /usr/lib/x86_64-linux-gnu/libQtCore.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4run.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4event.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4tracking.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4processes.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4analysis.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4zlib.so
pepi: /usr/lib/x86_64-linux-gnu/libexpat.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4digits_hits.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4track.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4particles.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4geometry.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4materials.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4graphics_reps.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4intercoms.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4global.so
pepi: /usr/local/HEP/GATE/geant4.10.06.p01-install/lib/libG4clhep.so
pepi: CMakeFiles/pepi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable pepi"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pepi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pepi.dir/build: pepi

.PHONY : CMakeFiles/pepi.dir/build

CMakeFiles/pepi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pepi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pepi.dir/clean

CMakeFiles/pepi.dir/depend:
	cd /home/j.guzmanm/Set_70cm_FF/100um/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/j.guzmanm/Set_70cm_FF/100um /home/j.guzmanm/Set_70cm_FF/100um /home/j.guzmanm/Set_70cm_FF/100um/build /home/j.guzmanm/Set_70cm_FF/100um/build /home/j.guzmanm/Set_70cm_FF/100um/build/CMakeFiles/pepi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pepi.dir/depend

