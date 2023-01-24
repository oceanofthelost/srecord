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
        adler16.cc
        adler32.cc
        arglex.cc
        bitrev.cc
        crc16.cc
        crc32.cc
        defcon.cc
        endian.cc
        fletcher16.cc
        fletcher32.cc
        input.cc
        interval.cc
        memory.cc
        output.cc
        pretty_size.cc
        progname.cc
        quit.cc
        r250.cc
        record.cc
        stm32.cc
        versn_stamp.cc
        vsnprintf.cc
)

# Include additional directories
# Includes directory where config files reside.
target_include_directories(srecord
    PRIVATE
        ${CMAKE_CURRENT_BINARY_DIR}
)

# Add all sub directories
add_subdirectory(arglex)
add_subdirectory(endian)
add_subdirectory(input)
add_subdirectory(interval)
add_subdirectory(memory)
add_subdirectory(output)
add_subdirectory(quit)
add_subdirectory(string)


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
