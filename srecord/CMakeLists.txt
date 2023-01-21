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

# Generate configuration files
# output  files will be located in build folder.
configure_file(config.h.in config.h @ONLY)
configure_file(patchlevel.h.in patchlevel.h @ONLY)


# Include source files from folder
target_sources(srecord
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/adler16.cc
        ${CMAKE_CURRENT_LIST_DIR}/adler32.cc
        ${CMAKE_CURRENT_LIST_DIR}/arglex.cc
        ${CMAKE_CURRENT_LIST_DIR}/bitrev.cc
        ${CMAKE_CURRENT_LIST_DIR}/crc16.cc
        ${CMAKE_CURRENT_LIST_DIR}/crc32.cc
        ${CMAKE_CURRENT_LIST_DIR}/defcon.cc
        ${CMAKE_CURRENT_LIST_DIR}/endian.cc
        ${CMAKE_CURRENT_LIST_DIR}/fletcher16.cc
        ${CMAKE_CURRENT_LIST_DIR}/fletcher32.cc
        ${CMAKE_CURRENT_LIST_DIR}/input.cc
        ${CMAKE_CURRENT_LIST_DIR}/interval.cc
        ${CMAKE_CURRENT_LIST_DIR}/memory.cc
        ${CMAKE_CURRENT_LIST_DIR}/output.cc
        ${CMAKE_CURRENT_LIST_DIR}/pretty_size.cc
        ${CMAKE_CURRENT_LIST_DIR}/progname.cc
        ${CMAKE_CURRENT_LIST_DIR}/quit.cc
        ${CMAKE_CURRENT_LIST_DIR}/r250.cc
        ${CMAKE_CURRENT_LIST_DIR}/record.cc
        ${CMAKE_CURRENT_LIST_DIR}/stm32.cc
        ${CMAKE_CURRENT_LIST_DIR}/versn_stamp.cc
        ${CMAKE_CURRENT_LIST_DIR}/vsnprintf.cc
)

# Include additional directories
# Includes directory where config files reside.
target_include_directories(srecord
    PRIVATE
        ${CMAKE_CURRENT_BINARY_DIR}
)

# Add all sub directories
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/arglex)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/endian)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/input)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/interval)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/memory)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/output)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/quit)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/string)


if(${PROJECT_NAME}_USE_DOXYGEN)
    # Generate doxygen content for all folder at this level and lower.
    doxygen_add_docs(srecord-doxygen
                     ${CMAKE_CURRENT_LIST_DIR}
                     ALL)
endif()

# Install the library
install(TARGETS srecord
        DESTINATION ${CMAKE_INSTALL_LIBDIR})

# Install the development headers
# A more modern approach would use a cmake 3.23 FILE SET
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
        FILES_MATCHING PATTERN "*.h")

# Install the Doxygen output for the website
install(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/html
        DESTINATION ${CMAKE_INSTALL_DOCDIR}/htdocs/srecord
        COMPONENT website)

# Generate config.h to suit local environment
configure_file(config.h.in config.h @ONLY)
configure_file(patchlevel.h.in patchlevel.h @ONLY)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

if(SRecord_INTERNAL_ENABLE_DOCS)
  # Generate doxygen content
  doxygen_add_docs(doxygen
                   ${LIB_SRECORD_HDR}
                   ALL)
endif()
