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
        ${CMAKE_CURRENT_LIST_DIR}/adler16.cc
        ${CMAKE_CURRENT_LIST_DIR}/adler32.cc
        ${CMAKE_CURRENT_LIST_DIR}/crc16.cc
        ${CMAKE_CURRENT_LIST_DIR}/crc32.cc
        ${CMAKE_CURRENT_LIST_DIR}/fletcher16.cc
        ${CMAKE_CURRENT_LIST_DIR}/fletcher32.cc
        ${CMAKE_CURRENT_LIST_DIR}/gcrypt.cc
        ${CMAKE_CURRENT_LIST_DIR}/stm32.cc
)
