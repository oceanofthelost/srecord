#
# srecord - Manipulate EPROM load files
# Copyright (C) 2018 - 2022 Scott Finneran
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or (at
# your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
cmake_minimum_required(VERSION 3.22)

# Stop CMAKE if user trying to build in source
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)
    message(FATAL_ERROR "In source build not supported. Please remove CMakeCache.txt and CMakeFiles/ directory.")
endif()

project(SRecord
        VERSION 1.65
        LANGUAGES C CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

############################
##  Modules and scripts   ##
############################

# Standard CMake modules

include(CTest)                          # Must be called before adding tests but after calling project(). This automatically calls enable_testing() and configures ctest targets when using Make/Ninja
include(CMakeDependentOption)           # This is a really useful scripts that creates options that depends on other options. It can even be used with generator expressions !
include(GNUInstallDirs)                 # This will define the default values for installation directories (all platforms even if named GNU)
include(InstallRequiredSystemLibraries) # Tell CMake that the `install` target needs to install required system libraries (eg: Windows SDK)
include(CMakePackageConfigHelpers)      # Helper to create relocatable packages

# Custom modules and scripts

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/etc/cmake") # Make our cmake scripts available


###############
##  OPTIONS  ##
###############

# You should try to give as much control over the project setup to the user.
# When modifying compile flags for example, if they are not mandatory, provide an option.


option(${PROJECT_NAME}_ENABLE_DOCUMENTATION "Enable building documentation" ON)

cmake_dependent_option(${PROJECT_NAME}_ENABLE_DOCUMENTATION_DOXYGEN
    "Add a doxygen target to generate the documentation" ON
    ${PROJECT_NAME}_ENABLE_DOCUMENTATION OFF)

cmake_dependent_option(${PROJECT_NAME}_ENABLE_DOCUMENTATION_PDF
    "Add a PDF target to generate the documentation" ON
    ${PROJECT_NAME}_ENABLE_DOCUMENTATION OFF)

cmake_dependent_option(${PROJECT_NAME}_ENABLE_DOCUMENTATION_HTML
    "Add a HTML target to generate the documentation" ON
    ${PROJECT_NAME}_ENABLE_DOCUMENTATION OFF)

cmake_dependent_option(${PROJECT_NAME}_ENABLE_DOCUMENTATION_MAN
    "Add a Man page target to generate the documentation" ON
    ${PROJECT_NAME}_ENABLE_DOCUMENTATION OFF)


option(${PROJECT_NAME}_USE_ADDITIONAL_SOURCEFILE "Use the additional source file" ON)
option(${PROJECT_NAME}_INSTALL                   "Should ${PROJECT_NAME} be added to the install list? Useful if included using add_subdirectory." ON)

# Use your own option for tests, in case people use your library through add_subdirectory
cmake_dependent_option(${PROJECT_NAME}_BUILD_TESTS
    "Enable ${PROJECT_NAME} project tests targets" ON # By default we want tests if CTest is enabled
    "BUILD_TESTING" OFF # Stay coherent with CTest variables
)

# External dependencies
#add_subdirectory(external EXCLUDE_FROM_ALL)

# It is always easier to navigate in an IDE when projects are organized in folders.
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# When building a shared library, you do not want to export all symbols by default
# gcc (and hence clang) are wrong about this.
#
# For more information, see https://gcc.gnu.org/wiki/Visibility and https://www.youtube.com/embed/m0DwB4OvDXk
set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_VISIBILITY_INLINES_HIDDEN 1)




include(configure)

if(${PROJECT_NAME}_ENABLE_DOCUMENTATION)
    include(documentation)
endif()

include(packaging)

###############
##  Project  ##
###############


#===============#
# library       #
#===============#
add_library(srecord STATIC)
add_subdirectory(srecord)
target_include_directories(srecord PRIVATE ${CMAKE_CURRENT_LIST_DIR})

#==========================#
# Executable               #
#==========================#

set(SRecord_EXECUTABLE_LIST srec_cat srec_cmp srec_info)

foreach(p IN LISTS SRecord_EXECUTABLE_LIST)
    add_executable("${p}")
    add_subdirectory("${p}")
    target_include_directories("${p}" PRIVATE ${CMAKE_CURRENT_LIST_DIR})
    set_target_properties("${p}" PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin )
endforeach()

#===========#
#   Tests   #
#===========#

if(${PROJECT_NAME}_BUILD_TESTS)
    # Include test snippet
    add_subdirectory(test)
endif()

#############
## Doxygen ##
#############

# Include documentation snippet
if(${PROJECT_NAME}_ENABLE_DOCUMENTATION)
    add_subdirectory(doc)
endif()
###############
## Packaging ##
###############

# include packaging snippet

