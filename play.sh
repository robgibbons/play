#!/bin/bash

# Play:
# A simple video player for Raspberry Pi.
# Streams media from any local or remote file.
# Understands YouTube video and playlist URLs!

play () { 
    local omx="omxplayer -r -g --timeout 30 --threshold 15 -o hdmi"
    [ -z "$2" ] && $omx "$1" || ([ -z "$3" ] && $omx "$1" -l "$2" || $omx "$1" -l "$2" $3)
    fbset -depth 8 && fbset -depth 16
}

# Get location of YouTube files
yt_file () { 
    youtube-dl -g "$1"
}

# Play all videos in YouTube playlist
yt_plist () { 
    for url in $(youParse "$1"); do play $(yt_file $url) $2 $3; done 
}

main () {
    if [ $# -ne 0 ]; then
        [[ $1 == *"youtu"* ]] && ( [[ $1 == *"list="* ]] && yt_plist $1 $2 $3 || play $(yt_file $1) $2 $3) || play $1 $2 $3 
    fi
}

main $1 $2 $3

exit 0
