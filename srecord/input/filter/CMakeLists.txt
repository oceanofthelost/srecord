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

target_sources(srecord
    PRIVATE
        ${CMAKE_CURRENT_LIST_DIR}/and.cc
        ${CMAKE_CURRENT_LIST_DIR}/bitrev.cc
        ${CMAKE_CURRENT_LIST_DIR}/byte_swap.cc
        ${CMAKE_CURRENT_LIST_DIR}/checksum.cc
        ${CMAKE_CURRENT_LIST_DIR}/crop.cc
        ${CMAKE_CURRENT_LIST_DIR}/fill.cc
        ${CMAKE_CURRENT_LIST_DIR}/interval.cc
        ${CMAKE_CURRENT_LIST_DIR}/message.cc
        ${CMAKE_CURRENT_LIST_DIR}/not.cc
        ${CMAKE_CURRENT_LIST_DIR}/offset.cc
        ${CMAKE_CURRENT_LIST_DIR}/or.cc
        ${CMAKE_CURRENT_LIST_DIR}/random_fill.cc
        ${CMAKE_CURRENT_LIST_DIR}/sequence.cc
        ${CMAKE_CURRENT_LIST_DIR}/split.cc
        ${CMAKE_CURRENT_LIST_DIR}/unfill.cc
        ${CMAKE_CURRENT_LIST_DIR}/unsplit.cc
        ${CMAKE_CURRENT_LIST_DIR}/xor.cc
)

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/checksum)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/interval)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/message)
