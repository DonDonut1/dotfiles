#!/bin/bash

set -eux
msgTag="myvolume"
currentvolume="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | grep -Eo '[0-9]+' )"

round_down() {
     pactl set-sink-volume @DEFAULT_SINK@ $(( $currentvolume - ${currentvolume:(-1)} ))%
}

round_up() {
     pactl set-sink-volume @DEFAULT_SINK@ $(( 10 + $currentvolume - ${currentvolume:(-1)} ))%
}

# unmute first if increasing vol
if echo "$@" | grep -Eq '[+|-][0-9]+' ; then
    pactl set-sink-mute @DEFAULT_SINK@ off
fi

if [[ ${currentvolume:(-1)} != 0  && $(echo "$@" | grep -Eo '[0-9]+' ) -ge 10 ]] ; then
   [ -n "$(echo "$@" | grep -Eo '\-[0-9]+' )" ] && round_down
   [ -n "$(echo "$@" | grep -Eo '\+[0-9]+' )" ] && round_up
   else
       pactl $@
fi

newvolume="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | grep -Eo '[0-9]+' )"

dunstify -a "Volume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$newvolume" "Vol:"
