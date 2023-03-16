\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }

%\markup{ \italic{ " Updated " \date  }  }

%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key fis \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes


  fis16 ^\markup{ \italic {Slowly}} fis8. fis8 gis
  fis16 e8. fis8 e|
  cis8 cis cis8. b16|
  cis16 (d) cis (b) cis4|

  fis16 fis8. fis8 gis
  fis16 e8. fis8 e|
  cis8 cis cis8. b16|
  cis16 (d) cis (b) cis4|


  %\alternative { { }{ } }

 \break
  \repeat volta 2{
  %\mark \default
    b2 
    cis16 dis8. e4|
    fis16 gis8. fis8 e|
    cis16 b8. a4|

    b16 a b a b a b a|
    cis8 b16 a b8 a16 gis
    fis8 fis4 fis8 ~
    fis2
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "
  Bu -- ter káj egy ber -- ses -- zki szán
  Mó -- ri drá -- go pi -- ko séj \skip2

  Vor -- bisz mán -- ge ká -- ki-ko -- ki
  Mó -- ri drá -- go pi -- ko séj
  %chorus
  \set stanza = #"Chorus "
  Áj mo -- ri séj, mo -- ri dra -- go pik -- ony -- éj
  Ál -- ál -- ál -- á.....
}
\addlyrics{
  \set stanza = #"2. "
  Kin -- áu tu -- ke sz -- om -- ná -- káj
  Mó -- ri drá -- go pi -- ko séj
  Lá lu -- má -- ko sz -- om -- ná -- káj
  Mó -- ri drá -- go pi -- ko séj

}
\addlyrics{
  \set stanza = #"3. "
  Ál -- din dév -- lá mu -- rá sá \skip2
  Mó -- ri drá -- go pi -- kon -- ya
  Mó -- ri drá -- go pi -- kon -- ya \skip2
  Mu -- rá su -- kár szá -- bi -- ná


}
%################################# Chords #######################
harmonies = \chordmode {
  fis2:m
  s2
  a2*2

  %repeated
  fis2*2:m
  a2
  s2
  %b
  e2*2
  fis2:m
  r2
  e2
  cis2:7
  fis2*2:m
   

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Mori Shej"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi { }
}
%{
Buter káj egy berseszki szán
Móri drágo piko séj
Vorbisz mánge káki-koki
Móri drágo piko séj

Áj mori séj, mori drago pikonyéj
Álálálá.....

Kináu tuke szomnákáj
Móri drágo piko séj
Lá lumáko szomnákáj
Móri drágo piko séj

Áldin dévlá murá sá
Móri drágo pikonya
Móri drágo pikonya
Murá sukár szábiná
%}
