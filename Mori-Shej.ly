\version "2.24.0"
\language "english"
%\pointAndClickOff

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
  \key a \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes


  a16 ^\markup{ \italic {Slowly}} a8. a8 b
  a16 g8. a8 g|
  e8 e e8. d16|
  e16 (f) e (d) e4|

  a16 a8. a8 b
  a16 g8. a8 g|
  e8 e e8. d16|
  e16 (f) e (d) e4|


  %\alternative { { }{ } }

 \break
  \repeat volta 2{
  %\mark \default
    d2
    e16 fs8. g4|
    a16 b8. a8 g|
    e16 d8. c4|

    d16 c d c d c d c|
    e8 d16 c d8 c16 b
    a8 a4 a8 ~
    a2
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
  a2:m
  s2
  c2*2

  %repeated
  a2*2:m
  c2
  s2
  %b
  g2*2
  a2:m
  r2
  g2
  e2:7
  a2*2:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Mori Shej"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
