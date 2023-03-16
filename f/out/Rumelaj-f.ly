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

  \key e \minor
  \time 4/4


  %s1*4
  e8    [ds8 ] e [ds]  e [ds] e [ds]
  e8 [ds] e [ds] e [ds] c [ b]
  a8 c16 c c8 [c] d [ c ] c [b]
  a8 b16 b b8 [b] b4 b|

  d,4. cs8 d cs d [b] ~|
  b8 c4 b8 c g a4|
  a8 b c d e d c b
  a8 b4 b8  b4 b|

}

second = {
  \repeat volta 2{
    e8    [ds8 ] e [ds]  e [ds] e [ds]
    e8 [ds] e [ds] e [ds] c [ b]
    a,8 c16 c c8 [c] d [ c ] c [b,]
    a,8 b,16 b, b,8 [b,] b,4 b,|
  }

  \repeat volta 2{
    b,4.   as,8 b, as, b, [gs,]~|
    gs,8 a,4 gs,8 a, es e4
    e8 gs, a, b, c b, a, gs,|
    fs gs,4 g,8 g,4 g,

  }

  \repeat volta 2{
    b,8   e16 e e8[ds] e[ds] e[ds]|
    e8[ds] e[ds] e[ds] c[b,]|
    a,8 c16 c c8 c d[c c b,]
    a,8 b,16 b, b,8 b, b,4 b,
  }
}

melody = \relative c'' {
  \clef treble

  \key e \minor
  \time 4/4

  <<
    \second
    \\
  >>
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  a1:m s1 d1:m e1:m
  d1:m a1:m d1:m e1:m
  a1:m s1 d1:m e1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
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
    subtitle="Balkan Gypsy"
    arranger= " "
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
