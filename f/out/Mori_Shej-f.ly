\version "2.18.0"
\language "english"

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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes


  e16 ^\markup{ \italic {Slowly}} e8. e8 fs
  e16 d8. e8 d|
  b8 b b8. a16|
  b16 (c) b (a) b4|

  e16 e8. e8 fs
  e16 d8. e8 d|
  b8 b b8. a16|
  b16 (c) b (a) b4|


  %\alternative { { }{ } }

 \break
  \repeat volta 2{
  %\mark \default
    a2
    b16 cs8. d4|
    e16 fs8. e8 d|
    b16 a8. g4|

    a16 g a g a g a g|
    b8 a16 g a8 g16 fs
    e8 e4 e8 ~
    e2
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
  e2:m
  s2
  g2*2

  %repeated
  e2*2:m
  g2
  s2
  %b
  d2*2
  e2:m
  r2
  d2
  b2:7
  e2*2:m


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
