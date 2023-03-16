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

  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

primas =  \relative c''{
  \clef treble
  \key a\minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  gs4 a8 b gs gs gs f
  gs4 a8 b gs gs gs f
  gs4 a8 b gs gs a b
  c8 b b a b a gs f|

  gs4 a8 b gs gs gs f
  gs4 a8 b gs gs gs f
  gs4 a8 b gs gs a b
  c8 b b a gs8 gs gs r
  \break

  \repeat volta 2{
  \mark \default
    r4   b8 c c b c d
    b8 b b a a gs a b
    r4 gs8 a a gs a b
    c8 c b a gs gs gs r|
    \break
  }
  d1 ~
  d1
  e8 f gs d gs gs d c
  e1 ~

  e4 b'8 a gs f e ef
  d1 ~
  d1
  e8 f gs f gs gs f e
  e1~
  e1

}

secund = \relative c' {
  \clef treble

  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes


  e4  f8 gs e e e d
  e4  f8 gs e e e d
  e4 f8 gs e e f gs
  a8 gs gs f gs f e d

  e4  f8 gs e e e d
  e4 f8 gs e e e d
  e4 f8 gs e e e a
  a8 gs gs f e e e r

  \repeat volta 2{
  \mark \default
    r4 gs8   a a gs a b
    gs8 gs gs f f e f gs|
    r4 e8 f f e f gs
    a8 a gs f e e e r|

  }

  d1 ~
  d1
  e8 f gs f gs gs f e
  e1 ~

  e4 b'8 a gs f e ef
  d1 ~
  d1
  e8 f gs f gs gs f e
  e1~
  e1

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  e1*8
  a1:m
  e1
  d1:m
  e1
  %b
  d1*3:m

  e1*2
  d1*3:m

  e1
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
