/*
   448x640.S: EDID data set for 448x640 60 Hz monitor

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
  $ cvt 448 640 60 -r
  # 448x640 59.90 Hz (CVT) hsync: 39.47 kHz ; pclk: 24.00 MHz
  Modeline "448x640R"   24.00  448 496 528 608  640 643 653 659 +hsync -vsync
*/

/* Display */
#define CLOCK 24000 /* kHz */
#define XPIX 448
#define YPIX 640
#define XY_RATIO XY_RATIO_4_3
#define XBLANK 160
#define YBLANK 19
#define XOFFSET 80
#define XPULSE 32
#define YOFFSET (63+3)
#define YPULSE (63+10)
#define DPI 72
#define VFREQ 60 /* Hz */
#define TIMING_NAME "Linux SVGA"
#define HSYNC_POL 1
#define VSYNC_POL 1
#define CRC 0x8d

#include "edid.S"
