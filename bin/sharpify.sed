# convert to C major and change all flats to sharps
# bf==>as, af==>gs, ef==>ds

#####################Basic Usage#############################
#sed -E -f sedscript <old >new

#change key 
s/\\key [a-g] \\minor/\\key c \\major/

#A flat **********************
s/\saf([0-9])\s/ gs\1 /g
s/\saf16/ gs16/g
s/\saf\s/ gs /g 

# B flat *********************
s/\sbf([0-9])\s/ as\1 /g
s/\sbf16/ as16/g
s/\sbf\s/ as /g 

#E flat  ******************
s/\ebf([0-9])\s/ ds\1 /g
s/\ebf16/ ds16/g
s/\ebf\s/ ds /g 
