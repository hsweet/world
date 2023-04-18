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

  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

primas =  \relative c''{
  \clef treble
  \key d\minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  cs4 d8 e cs cs cs bf
  cs4 d8 e cs cs cs bf
  cs4 d8 e cs cs d e
  f8 e e d e d cs bf|

  cs4 d8 e cs cs cs bf
  cs4 d8 e cs cs cs bf
  cs4 d8 e cs cs d e
  f8 e e d cs8 cs cs r
  \break

  \repeat volta 2{
  \mark \default
    r4   e8 f f e f g
    e8 e e d d cs d e
    r4 cs8 d d cs d e
    f8 f e d cs cs cs r|
    \break
  }
  g1 ~ 
  g1
  a8 bf cs g cs cs g f
  a1 ~

  a4 e'8 d cs bf a af
  g1 ~
  g1
  a8 bf cs bf cs cs bf a
  a1~
  a1

}

secund = \relative c'' {
  \clef treble

  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes


  a4  bf8 cs a a a g
  a4  bf8 cs a a a g
  a4 bf8 cs a a bf cs
  d8 cs cs bf cs bf a g

  a4  bf8 cs a a a g
  a4 bf8 cs a a a g
  a4 bf8 cs a a a d
  d8 cs cs bf a a a r

  \repeat volta 2{
  \mark \default
    r4 cs8   d d cs d e
    cs8 cs cs bf bf a bf cs|
    r4 a8 bf bf a bf cs
    d8 d cs bf a a a r|

  }

  g,1 ~
  g1
  a8 bf cs bf cs cs bf a
  a1 ~

  a4 e'8 d cs bf a af
  g1 ~
  g1
  a8 bf cs bf cs cs bf a
  a1~
  a1

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  a1*8
  d1:m
  a1
  g1:m
  a1
  %b
  g1*3:m

  a1*2
  g1*3:m

  a1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \primas
    \new Staff  \secund
    %\new Staff \transpose c c' \secund
  >>
  \header{
    title= "Cocek"
instrument= "Violin"
    subtitle="Bulgarian Gypsy"
instrument= "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
