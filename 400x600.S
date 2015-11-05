/*
   400x600.S: EDID data set for 448x640 60 Hz monitor

   Based on 800x600.S:
   Copyright (C) 2011 Carsten Emde <C.Emde@osadl.org>
   Copyright (C) 2014 Linaro Limited

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
*/

/* EDID */
#define VERSION 1
#define REVISION 3
/*
  $ cvt 400 600 60 -r
  # 400x600 59.14 Hz (CVT) hsync: 36.61 kHz ; pclk: 20.50 MHz
  Modeline "400x600R"   20.50  400 448 480 560  600 603 613 619 +hsync -vsync
*/

/* Display */
#define CLOCK 20500 /* kHz */
#define XPIX 400
#define YPIX 600
#define XY_RATIO XY_RATIO_4_3
#define XBLANK 160
#define YBLANK 19
#define XOFFSET 48
#define XPULSE 32
#define YOFFSET (63+3)
#define YPULSE (63+10)
#define DPI 72
#define VFREQ 60 /* Hz */
#define TIMING_NAME "Linux SVGA"
#define HSYNC_POL 1
#define VSYNC_POL 1
#define CRC 0x93

#include "edid.S"
