#!/bin/sh

cd /home/harry/Music/band 
# Update and post listing of all band charts
perl toc.pl > toc
perl toc.pl -n > toc#
paste toc toc# > toc.txt
rm toc
rm toc#
echo "copying files"
scp toc.txt amoodle@amoodle.org:/home/amoodle/public_html/szelrozsa.org/charts
#copy new charts to website
rsync --verbose --progress --stats --compress --rsh=/usr/bin/ssh --recursive --times --perms --links --delete --exclude "*ly" --exclude "*~" --exclude "*midi" /home/harry/Music/band/*.pdf /home/harry/Music/band/Jewish/*.pdf /home/harry/Music/band/medlies/*.pdf  amoodle@amoodle.org:/home/amoodle/public_html/szelrozsa.org/charts
#midis
rsync --verbose --progress --stats --compress --rsh=/usr/bin/ssh --recursive --times --perms --links --delete --exclude "*pdf" --exclude "*~" --exclude "*abc" /home/harry/Music/band/*.midi /home/harry/Music/band/Jewish/*.midi /home/harry/Music/band/medlies/*.midi  amoodle@amoodle.org:/home/amoodle/public_html/szelrozsa.org/charts/Midi
#make a backup 
tar --exclude='*.pdf' --exclude='*.midi'--exclude'*.ly~' -cjvf lily.tbz .
scp lily.tbz amoodle@amoodle.org:/home/amoodle/
