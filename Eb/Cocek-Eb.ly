\version "2.18.0"
\include "english.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ (Bottom Line) }
setup = \relative c''' {
  \clef treble

  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

primas =  \relative c'''{
  \clef treble
  \key b\minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  as4 b8 cs as as as g
  as4 b8 cs as as as g
  as4 b8 cs as as b cs
  d8 cs cs b cs b as g|

  as4 b8 cs as as as g
  as4 b8 cs as as as g
  as4 b8 cs as as b cs
  d8 cs cs b as8 as as r
  \break

  \repeat volta 2{
  \mark \default
    r4   cs8 d d cs d e
    cs8 cs cs b b as b cs
    r4 as8 b b as b cs
    d8 d cs b as as as r|
    \break
  }
  e1 ~ 
  e1
  fs8 g as e as as e d
  fs1 ~

  fs4 cs'8 b as g fs f
  e1 ~
  e1
  fs8 g as g as as g fs
  fs1~
  fs1

}

secund = \relative c'' {
  \clef treble

  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes


  fs4  g8 as fs fs fs e
  fs4  g8 as fs fs fs e
  fs4 g8 as fs fs g as
  b8 as as g as g fs e

  fs4  g8 as fs fs fs e
  fs4 g8 as fs fs fs e
  fs4 g8 as fs fs fs b
  b8 as as g fs fs fs r

  \repeat volta 2{
  \mark \default
    r4 as8   b b as b cs
    as8 as as g g fs g as|
    r4 fs8 g g fs g as
    b8 b as g fs fs fs r|

  }

  e,1 ~
  e1
  fs8 g as g as as g fs
  fs1 ~

  fs4 cs'8 b as g fs f
  e1 ~
  e1
  fs8 g as g as as g fs
  fs1~
  fs1

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  fs1*8
  b1:m
  fs1
  e1:m
  fs1
  %b
  e1*3:m

  fs1*2
  e1*3:m

  fs1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \primas
    \new Staff  \secund
    %\new Staff \transpose c c' \secund
  >>
  \header{
    title= "Cocek"
    subtitle="Bulgarian Gypsy"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
