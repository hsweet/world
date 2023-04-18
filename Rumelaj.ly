\version "2.18.0"
\include "english.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ Drone low A }

first=  \relative c'' {
  \clef treble

  \key a \minor
  \time 4/4


  %s1*4
  a'8    [gs8 ] a [gs]  a [gs] a [gs]
  a8 [gs] a [gs] a [gs] f [ e]
  d8 f16 f f8 [f] g [ f ] f [e]
  d8 e16 e e8 [e] e4 e|

  g,4. fs8 g fs g [e] ~|
  e8 f4 e8 f c d4|
  d8 e f g a g f e
  d8 e4 e8  e4 e|

}

second = {
  \repeat volta 2{
    a8    [gs8 ] a [gs]  a [gs] a [gs]
    a8 [gs] a [gs] a [gs] f [ e]
    d8 f16 f f8 [f] g [ f ] f [e]
    d8 e16 e e8 [e] e4 e|
  }

  \repeat volta 2{
    e4.   ds8 e ds e [cs]~|
    cs8 d4 cs8 d as a4
    a8 cs d e f e d cs|
    b cs4 c8 c4 c

  }

  \repeat volta 2{
    e8   a16 a a8[gs] a[gs] a[gs]|
    a8[gs] a[gs] a[gs] f[e]|
    d8 f16 f f8 f g[f f e]
    d8 e16 e e8 e e4 e
  }
}

melody = \relative c'' {
  \clef treble

  \key a \minor
  \time 4/4

  <<
    \second
    \\
  >>
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  d1:m s1 g1:m a1:m
  g1:m d1:m g1:m a1:m
  d1:m s1 g1:m a1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \with {
      instrumentName = "First"
    } \first
    \new Staff \with {
      instrumentName = "Second"
    } \melody
    %\new Staff  \transpose c'' c''' \melody
  >>
  \header{
    title= "Rumelaj"
instrument= "Violin"
instrument= "Violin"
    subtitle="Balkan Gypsy"
instrument= "Violin"
instrument= "Violin"
    arranger= " "
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
