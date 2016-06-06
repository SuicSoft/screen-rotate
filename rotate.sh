#!/bin/bash
# Copyright (c) 2016 SuicSoft.

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


#Read the accelerometer data
ACCEL_RAW=$(cut -d "," -f 2 /sys/devices/platform/lis3lv02d/position)
ACCEL=$(echo $ACCEL_RAW | sed 's/-//g')
if (($ACCEL > 700 )); then
    # This position could be left or right so we have to check using the raw accelerometer value
    if [[ $ACCEL_RAW = \-* ]] ; then # If it starts with minus it is a negative
        echo left
        xrandr --output LVDS --rotate left # Rotate screen left
    else
        echo right
        xrandr --output LVDS --rotate right # Rotate screen right
    fi  
elif (($ACCEL < 300 ));then
    echo normal
    xrandr --output LVDS --rotate normal # Rotate screen normal
fi
