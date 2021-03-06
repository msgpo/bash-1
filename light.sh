#!/bin/bash
# Adjust asus laptop brightness
# License: GPL v2 or later
# Author: Aurélien DESBRIÈRES
# mail: aurelien(at)hackers(dot)camp

# adjustment:
# chown user:root /sys/class/backlight/intel_backlight/brightness
# cp light.sh /usr/bin/light
# chmod +x /usr/bin/light


# sudo light 1 ; sudo light 2 ...

usage="$(basename "$0") [-h] [1 ... 9] -- program to increase brightness of your computer from command line\n
bring back bug to aurelien(at)hackers(dot)camp directly thanks!

usage:
    -h       show this help text
    1 ... 9  increase / deacrease brightness
             blank will put to the level to 200 to be able to works in very enlighted envirronement"

seed=42
while getopts ':hs:' option; do
  case "$option" in
    h) echo "$usage"
       exit
       ;;
    s) seed=$OPTARG
       ;;
    :) printf "missing argument for -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
   \?) printf "illegal option: -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
  esac
done
shift $((OPTIND - 1))


while :
do
    case "$@" in

    # Minimal brightness
    [0]* )  echo 10 > /sys/class/backlight/intel_backlight/brightness
        break;;

    # brightness to 20
    [1]* )  echo 20 > /sys/class/backlight/intel_backlight/brightness
        break;;

    [2]* )  echo 30 > /sys/class/backlight/intel_backlight/brightness
        break;;

    [3]* )  echo 40 > /sys/class/backlight/intel_backlight/brightness
        break;;

    [4]* )  echo 50 > /sys/class/backlight/intel_backlight/brightness
        break;;

    [5]* )  echo 60 > /sys/class/backlight/intel_backlight/brightness
        break;;

    [6]* )  echo 80 > /sys/class/backlight/intel_backlight/brightness
        break;;

    [7]* )  echo 100 > /sys/class/backlight/intel_backlight/brightness
        break;;

    [8]* )  echo 130 > /sys/class/backlight/intel_backlight/brightness
        break;;

    [9]* )  echo 150 > /sys/class/backlight/intel_backlight/brightness
        break;;

    *)  echo 200 > /sys/class/backlight/intel_backlight/brightness
        break;;
    esac
done
