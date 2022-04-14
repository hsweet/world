#!/bin/bash
# transpose new or updated lily files to clarinet

X=find . -iname '*.ly' -mtime -10 -type f
echo $X
if [find . -iname '*.ly' -mtime -10 -type f = 0]; then
echo "new file found"
fi

#find . -iname '*.ly' -mtime -10 -type f -exec ly "transpose c d" -o '/home/harry/Music/charts/world/clarinet/*.ly' {} \;
#cd /home/harry/Music/charts/world/clarinet/
#find . -iname '*.ly' -mtime -10 -type f -exec lilypond {} \;
