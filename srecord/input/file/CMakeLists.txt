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
        ${CMAKE_CURRENT_LIST_DIR}/aomf.cc
        ${CMAKE_CURRENT_LIST_DIR}/ascii_hex.cc
        ${CMAKE_CURRENT_LIST_DIR}/atmel_generic.cc
        ${CMAKE_CURRENT_LIST_DIR}/binary.cc
        ${CMAKE_CURRENT_LIST_DIR}/brecord.cc
        ${CMAKE_CURRENT_LIST_DIR}/cosmac.cc
        ${CMAKE_CURRENT_LIST_DIR}/dec_binary.cc
        ${CMAKE_CURRENT_LIST_DIR}/emon52.cc
        ${CMAKE_CURRENT_LIST_DIR}/fairchild.cc
        ${CMAKE_CURRENT_LIST_DIR}/fastload.cc
        ${CMAKE_CURRENT_LIST_DIR}/formatted_binary.cc
        ${CMAKE_CURRENT_LIST_DIR}/four_packed_code.cc
        ${CMAKE_CURRENT_LIST_DIR}/guess.cc
        ${CMAKE_CURRENT_LIST_DIR}/hexdump.cc
        ${CMAKE_CURRENT_LIST_DIR}/hp64k.cc
        ${CMAKE_CURRENT_LIST_DIR}/idt.cc
        ${CMAKE_CURRENT_LIST_DIR}/intel.cc
        ${CMAKE_CURRENT_LIST_DIR}/intel16.cc
        ${CMAKE_CURRENT_LIST_DIR}/logisim.cc
        ${CMAKE_CURRENT_LIST_DIR}/mif.cc
        ${CMAKE_CURRENT_LIST_DIR}/mips_flash.cc
        ${CMAKE_CURRENT_LIST_DIR}/mos_tech.cc
        ${CMAKE_CURRENT_LIST_DIR}/motorola.cc
        ${CMAKE_CURRENT_LIST_DIR}/msbin.cc
        ${CMAKE_CURRENT_LIST_DIR}/needham.cc
        ${CMAKE_CURRENT_LIST_DIR}/os65v.cc
        ${CMAKE_CURRENT_LIST_DIR}/ppb.cc
        ${CMAKE_CURRENT_LIST_DIR}/ppx.cc
        ${CMAKE_CURRENT_LIST_DIR}/signetics.cc
        ${CMAKE_CURRENT_LIST_DIR}/spasm.cc
        ${CMAKE_CURRENT_LIST_DIR}/spectrum.cc
        ${CMAKE_CURRENT_LIST_DIR}/stewie.cc
        ${CMAKE_CURRENT_LIST_DIR}/tektronix.cc
        ${CMAKE_CURRENT_LIST_DIR}/tektronix_extended.cc
        ${CMAKE_CURRENT_LIST_DIR}/ti_tagged.cc
        ${CMAKE_CURRENT_LIST_DIR}/ti_tagged_16.cc
        ${CMAKE_CURRENT_LIST_DIR}/ti_txt.cc
        ${CMAKE_CURRENT_LIST_DIR}/trs80.cc
        ${CMAKE_CURRENT_LIST_DIR}/vmem.cc
        ${CMAKE_CURRENT_LIST_DIR}/wilson.cc
)
