\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

notes = \relative c' {

  d4 e d e
  e8(d) d4 d8(c) c4
  e4 e8(c) d4 d8(c)
  c4 a a a
  c4. a8 a4 g
  c4 d e c
  e4 e8(c) d4 d8(c)
  c4 a a a
}

melody = {
  <<
    \clef treble
    \key a \minor
    \time 4/4
    % \transpose c c'\notes
    \\
    \notes
  >>
}
octave = \transpose g, g {
  \clef treble

  \key a \minor
  \time 4/4
  \melody
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  d2:m
  e2:7
  a1:m
  d2:m
  e2:7
  a1:m
  r4*3
  g4
  a4:m
  e4:7
  a2:m
  r2
  d2:m
  a1:m

  %{Enekeljunk old chords
  g2:m a2:7 g2:m d2:m
  d2:m g2:m d1:m
  d2:m c2
  d4:m a4:7 d2:m d2:m g2:m d1:m
  %}

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    % \new Staff   \octave
    \new Staff  \melody
  >>
  \header{
    title= "Enekeljunk"
    subsubtitle=""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
