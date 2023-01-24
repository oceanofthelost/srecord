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
        aomf.cc
        ascii_hex.cc
        asm.cc
        atmel_generic.cc
        basic.cc
        binary.cc
        brecord.cc
        c.cc
        coe.cc
        cosmac.cc
        dec_binary.cc
        emon52.cc
        fairchild.cc
        fastload.cc
        formatted_binary.cc
        forth.cc
        four_packed_code.cc
        hexdump.cc
        idt.cc
        intel.cc
        intel16.cc
        line_termination.cc
        logisim.cc
        mem.cc
        mif.cc
        mips_flash.cc
        mos_tech.cc
        motorola.cc
        msbin.cc
        needham.cc
        os65v.cc
        ppb.cc
        ppx.cc
        signetics.cc
        spasm.cc
        spectrum.cc
        stewie.cc
        tektronix.cc
        tektronix_extended.cc
        ti_tagged.cc
        ti_tagged_16.cc
        ti_txt.cc
        trs80.cc
        vhdl.cc
        vmem.cc
        wilson.cc
)
