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

notes = \relative c'' {

  g4 a g a
  a8(g) g4 g8(f) f4
  a4 a8(f) g4 g8(f)
  f4 d d d
  f4. d8 d4 c
  f4 g a f
  a4 a8(f) g4 g8(f)
  f4 d d d
}

melody = {
  <<
    \clef treble
    \key d \minor
    \time 4/4
    % \transpose c c'\notes
    \\
    \notes
  >>
}
octave = \transpose c c' {
  \clef treble

  \key d \minor
  \time 4/4
  \melody
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  g2:m
  a2:7
  d1:m
  g2:m
  a2:7
  d1:m
  r4*3
  c4
  d4:m
  a4:7
  d2:m
  r2
  g2:m
  d1:m

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
