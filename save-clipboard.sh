#!/usr/bin/env sh

file=$(date +%s) # Unix time in seconds
clip=$(xclip -o)
clipboards="Documents/clipboards"

die() {
	notify-send -u low "$0" "An Error has occured"
	exit 1
}

[ -z "$clip" ] && die

cd ~
[ -d "$clipboards" ] || mkdir $clipboards
cd $clipboards

printf "%s\n" "$clip" > $file.txt && notify-send "$0" "File Created Under $(pwd)/$file.txt" || die
