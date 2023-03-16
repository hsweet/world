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
  d'4. cis'8 cis'4~
  cis'4 bis cis'|
  d'4. cis'8 cis'4~
  cis'4 cis' fis'

  fis'4. eis'8 eis'4~|
  eis'4 gis' a
  gis'4. fis'8 fis'4~
  fis'4 a b|

  a4. gis'8 d'4~
  d'4 gis' a|
  gis'4. fis'8 cis'4~|
  cis'4 bis cis'

  d'4. cis'8 cis'4~
  cis'4 gis' cis'
  b4 ais a~
  a4 r \parenthesize fis'
}

%#################################### Melody ########################
melody = \relative c'' {

  \clef treble
  \key fis \minor
  \time 3/4
  \partial 4*2  bis4 cis  %lead in notes
  \first
  \break
  \bar "||"

  \partial 4*2  bis'4^\markup { \italic 8va} cis  %lead in notes
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

second = \relative c''{
  \partial 4*2  bis4 cis  %lead in notes
  fis,4 fis' a
  cis4 bis, cis
  fis,4 fis' a
  cis4 b, a

  gis4 cis b'
  cis4 dis, eis  %up 8va from orig.
  fis,4 fis' a
  cis4 d, cis

  b4 fis' b
  d4 cis, b
  a4 fis' a

  cis4 bis, cis
  eis,4 gis' b
  cis4 dis, eis  %up 8va from orig.
  fis,4 fis' a
  cis4 fis r

}
harmonies = \chordmode {
  s4*2
  fis4:m s2
  s4*9
  cis4:7 s2
  s4*3
  fis4:m s2
  s4*3
  b4:m s2
  s4*3
  fis4:m s2
  s4*3
  cis4:7 s2
  s4*3
  fis4:m
  s4*3
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
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
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
