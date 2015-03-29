# VICE - GLES2 PORT

$ git clone https://github.com/AreaScout/vice-gles2.git

$ cd vice-gles2

$ sudo apt-get install flex bison autogen automake libgtk-3-dev libcairo2-dev texinfo libreadline-dev

$ ./autogen.sh

$ ./configure --enable-gles2 --enable-gnomeui3 --enable-static-ffmpeg

$ make

$ sudo make install



  VICE  2.4                                                        Nov 2012


                 _______________
                |      ||      ||
                |      ||      ||____________________________
                |      ||      ||    ||         ||          ||
                |      ||      ||    ||    |    ||    ______||
                |      ||      ||    ||    |----||          ||
                |      ||      ||    ||    |    ||    ------||
                |              ||____||_________||__________||
                 \            // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                  \          //
                   \________//   Versatile Commodore 8-bit Emulator



 ----------------------------------------------------------------------------


 This is version 2.4 of VICE, the multi-platform C64, C128, VIC20,
 PET, PLUS4 and CBM-II emulator.  This version can be compiled for
 MSDOS, Win32, OS/2, BeOS, QNX 4.x, QNX 6.x, AmigaOS, Dingoo,
 Syllable, SkyOS and for most Unix systems provided with
 the X Window System version 11, R5 or later.

 The following programs are included:

   - x64, a C64 emulator;

   - x64sc, a C64 emulator focused on accuracy;

   - x64dtv, a C64 Direct-to-TV (DTV) emulator;

   - x128, a C128 emulator;

   - xvic, a VIC20 emulator;

   - xpet, a PET emulator;

   - xplus4, a PLUS4 emulator;

   - xcbm2, a CBM-6x0/7x0 emulator;

   - xcbm5x0, a CBM-5x0 emulator;

   - vsid, a SID player;

   - c1541, a stand-alone disk image maintenance utility;

   - petcat, a CBM BASIC de-tokenizer;

   - cartconv, a C64/C128 cartridge conversion program.

 Moreover, the following documents are provided in both source and
 binary distributions:

   - README, this file;

   - COPYING, the GNU General Public License under which VICE is
     distributed -- *please read it before using the program*;

   - INSTALL, installation instructions;

   - NEWS, list of user-visible changes between this and older versions of VICE;

   - FEEDBACK, something you should read before reporting bugs or sending mail 
     to any of the authors;

 The following documents are provided in the source distribution:

   - in the doc directory:

     - vice.texi, the complete documentation; documentation in various different
       formats may be generated from it (vice.txt, vice.pdf, vice.chm, vice.hlp, 
       vice.guide, vice.inf, vice.info)
     - NLS-Howto.txt, some documentation about Unix NLS support;
     - iec-bus.txt, overview of the VICE IEC bus emulation;
     - CIA-README.txt, overview of the VICE CIA emulation;
     - coding-guidelines.txt, description of VICE coding style
     - Documentation-Howto.txt, information on how to edit the documentation
     - Doxygen-Howto.txt, how to generate doxygen documentation
     - MacOSX-ResourceTree.txt, overview of the Mac OSX resource tree

   - in the doc/readmes directory:

     - Readme-DOS.txt, MS-DOS specific documentation;
     - Readme-BeOS.txt, BeOS specific documentation;
     - Readme-Amiga.txt, Amiga specific documentation;
     - Readme-MacOSX.txt, Mac OSX specific documentation;
     - Readme-OS2.txt, OS/2 specific documentation;
     - Readme-SDL.txt, SDL specific documentation;

   - in the doc/building directory:

     - MSDOS-Howto.txt, how to compile the MSDOS port.
     - MSDOS-Ethernet-Howto.txt, how to compile the MSDOS port with ethernet 
       support.
     - OpenWatcom-Howto.txt, how to compile the MSDOS port with open watcom
     - Win32-Mingw32-Howto.txt, how to compile the Win32 port using ming32
     - Win32-Cygwin-Howto.txt, how to compile the Win32 port using cygwin
     - Linux-Mingw32-Howto.txt, how to crosscompile the Win32 port on linux
     - MacOSX-Howto.txt, how to compile the Mac OSX port
     - Minix-Howto.txt, how to compile the Minix port
     - OpenVMS-Howto.txt, how to compile the OpenVMS port
     - SDL-Howto.txt, how to compile the SDL port

 For the latest news, have a look at the VICE home page:

     http://vice-emu.sourceforge.net/

 Also some information that was previously included in the distribution has been
 moved into our wiki at sourceforge:

   - The TODO list,
     http://vice-emu.sourceforge.net/wiki/index.php/Todo#New_Features

   - The list of known BUGS,
     http://vice-emu.sourceforge.net/wiki/index.php/Todo#Known_Issues

 New versions are made available quite often, so please stay tuned.


 Have fun!


 Copyright notice
 ----------------

 VICE, the Versatile Commodore Emulator

    Core Team Members:
    1999-2015 Andreas Matthies
    1999-2015 Martin Pottendorfer
    2005-2015 Marco van den Heuvel
    2007-2015 Fabrizio Gennari
    2007-2015 Daniel Kahlin
    2009-2015 Groepaz
    2009-2015 Errol Smith
    2010-2015 Olaf Seibert
    2011-2015 Marcus Sutton
    2011-2015 Kajtar Zsolt

    Inactive/Ex Team Members:
    2012-2014 Benjamin 'BeRo' Rosseaux
    2011-2014 Ulrich Schulz
    2011-2014 Stefan Haubenthal
    2011-2014 Thomas Giesel
    2009-2014 Ingo Korb
    2008-2014 Antti S. Lankila
    2006-2014 Christian Vogelgsang
    1998-2014 Dag Lem
    2000-2011 Spiro Trikaliotis
    2007-2011 Hannu Nuotio
    1998-2010 Andreas Boose
    1998-2010 Tibor Biczo
    2007-2010 M. Kiesel
    1999-2007 Andreas Dehmel
    2003-2005 David Hansel
    2000-2004 Markus Brenner
    1999-2004 Thomas Bretz
    1997-2001 Daniel Sladic
    1996-2001 André Fachat
    1996-1999 Ettore Perazzoli
    1993-1994, 1997-1999 Teemu Rantanen
    1993-1996 Jouko Valta
    1993-1994 Jarkko Sonninen

    Translation Team Members:
    2009-2015 Mikkel Holm Olsen
    2000-2015 Martin Pottendorfer
    2011-2015 Manuel Antonio Rodriguez Bas
    2004-2015 Paul Dubé
    2006-2015 Czirkos Zoltan
    2006-2015 Karai Csaba
    2001-2015 Andrea Musuruane
    2011-2015 Jesse Lee
    2005-2015 Marco van den Heuvel
    2011-2015 Jarek Sobolewski
    2010-2015 Michael Litvinov
    2000-2015 Peter Krefting
    2008-2015 Emir Akaydin

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License as
  published by the Free Software Foundation; either version 2 of the
  License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
  02111-1307  USA

 The ROM files in the `C128', `C64', `CBM-II', `DRIVES', `PET', `PLUS4'
 `PRINTER' and `VIC20' directories are Copyright C by Commodore
 Business Machines.

 The ROM files in the `C64DTV` directory are Copyright C by Commodore
 Business Machines, as well as Mammoth Toys, a division of nsi ltd.,
 Digital Concepts DC studios inc., Ironstone Partners ltd., and
 Toy:Lobster company ltd.
