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
        and.cc
        bitrev.cc
        byte_swap.cc
        checksum.cc
        crop.cc
        fill.cc
        interval.cc
        message.cc
        not.cc
        offset.cc
        or.cc
        random_fill.cc
        sequence.cc
        split.cc
        unfill.cc
        unsplit.cc
        xor.cc
)

add_subdirectory(checksum)
add_subdirectory(interval)
add_subdirectory(message)
