#! /bin/sh
# Copyright (C) 2012 Red Hat, Inc.
# This file is part of Red Hat elfutils.
#
# Red Hat elfutils is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by the
# Free Software Foundation; version 2 of the License.
#
# Red Hat elfutils is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with Red Hat elfutils; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301 USA.
#
# Red Hat elfutils is an included package of the Open Invention Network.
# An included package of the Open Invention Network is a package for which
# Open Invention Network licensees cross-license their patents.  No patent
# license is granted, either expressly or impliedly, by designation as an
# included package.  Should you wish to participate in the Open Invention
# Network licensing program, please visit www.openinventionnetwork.com
# <http://www.openinventionnetwork.com>.

. $srcdir/test-subr.sh

# #include <stdio.h>
# 
# __thread int i;
# 
# void print_i ()
# {
#   printf("%d\n", i);
# }
#
# gcc -fPIC -shared -o testlib_dynseg.so testlib_dynseg.c
# With ld --version
# GNU gold (GNU Binutils 2.22.52.20120402) 1.11

testfiles testlib_dynseg.so

testrun_compare ../src/readelf -d testlib_dynseg.so <<\EOF

Dynamic segment contains 28 entries:
 Addr: 0x00000000000017e0  Offset: 0x0007e0  Link to section: [ 3] '.dynstr'
  Type              Value
  PLTGOT            0x00000000000019c8
  PLTRELSZ          72 (bytes)
  JMPREL            0x0000000000000568
  PLTREL            RELA
  RELA              0x00000000000004d8
  RELASZ            144 (bytes)
  RELAENT           24 (bytes)
  RELACOUNT         1
  SYMTAB            0x0000000000000228
  SYMENT            24 (bytes)
  STRTAB            0x0000000000000360
  STRSZ             190 (bytes)
  GNU_HASH          0x0000000000000420
  NEEDED            Shared library: [libc.so.6]
  NEEDED            Shared library: [ld-linux-x86-64.so.2]
  INIT              0x00000000000005b0
  FINI              0x0000000000000748
  VERSYM            0x0000000000000460
  VERDEF            0x000000000000047c
  VERDEFNUM         1
  VERNEED           0x0000000000000498
  VERNEEDNUM        2
  NULL              
  NULL              
  NULL              
  NULL              
  NULL              
  NULL              
EOF

exit 0
