\version "2.18.0"
%\include "english.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

first = {

  \bar "||"
  f4. e8 e4~
  e4 dis e|
  f4. e8 e4~
  e4 e a

  a4. gis8 gis4~|
  gis4 b c
  b4. a8 a4~
  a4 c d|

  c4. b8 f4~
  f4 b c|
  b4. a8 e4~|
  e4 dis e

  f4. e8 e4~
  e4 b e
  d4 cis c~
  c4 r \parenthesize a
}

%#################################### Melody ########################
melody = \relative c' {

  \clef treble
  \key a \minor
  \time 3/4
  \partial 4*2  dis4 e  %lead in notes
  \first
  \break
  \bar "||"

  \partial 4*2  dis'4^\markup { \italic 8va} e  %lead in notes
  \first

}

%################################# Lyrics #####################
\addlyrics{
  O -- chi cor -- ny -- e
  o -- chi strat -- ny -- e
  O - zhgu -- chi -- a
  i pre -- kras -- ny -- e,
  Kak liu -- blia ia vas,
  kak bo -- ius' ia vas.
  Znat' u -- vid -- ela vas
  ia vne dob -- ryi chas,
}
%################################# Chords #######################

second = \relative c'{
  \partial 4*2  dis4 e  %lead in notes
  a,4 a' c
  e4 dis, e
  a,4 a' c
  e4 d, c

  b4 e d'
  e4 fis, gis  %up 8va from orig.
  a,4 a' c
  e4 f, e

  d4 a' d
  f4 e, d
  c4 a' c

  e4 dis, e
  gis,4 b' d
  e4 fis, gis  %up 8va from orig.
  a,4 a' c
  e4 a r

}
harmonies = \chordmode {
  s4*2
  a4:m s2
  s4*9
  e4:7 s2
  s4*3
  a4:m s2
  s4*3
  d4:m s2
  s4*3
  a4:m s2
  s4*3
  e4:7 s2
  s4*3
  a4:m
  s4*3
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
    \new Staff \second
  >>
  \header{
    title= "Ochi Chornye"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
