# Copyright (c) 2016 SuicSoft / SuiciStudios(tm).

# Author : Suici Doga (suiciwd@gmail.com , suiciwd@gmail.com)  / contributors

# Contact : suiciwd@gmail.com , suiciwd@outlook.com , https://gitter.im/SuicSoft/SuicSoft

# Website : http://suicsoft.com , http://suicsoft.github.io

# Script created and programmed by SuicSoft.

# License :
#   Screen Rotate is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.

#   Screen Rotate is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.

#   You should have received a copy of the GNU General Public License
#   along with Screen Rotate.  If not, see <http://www.gnu.org/licenses/>.

#!/bin/bash
ACCEL=$(cut -d "," -f 2 <<< cat /sys/devices/platform/lis3lv02d/position) #Read the accelerometer data

if (($ACCEL > 700 )); then 
   echo right
   xrandr --output LVDS --rotate right #Rotate screen right
elif (($ACCEL < 300 ));then
   echo normal
   xrandr --output LVDS --rotate normal #Rotate screen normal
elif (($ACCEL > -300 ));then
   echo normal
   xrandr --output LVDS --rotate normal #Rotate screen normal
elif (($ACCEL < -700 ));then
   echo left
   xrandr --output LVDS --rotate left #Rotate screen left
fi
