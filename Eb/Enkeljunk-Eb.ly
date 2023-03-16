\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

notes = \relative c'' {

  e4 fis e fis
  fis8(e) e4 e8(d) d4
  fis4 fis8(d) e4 e8(d)
  d4 b b b
  d4. b8 b4 a
  d4 e fis d
  fis4 fis8(d) e4 e8(d)
  d4 b b b
}

melody = {
  <<
    \clef treble
    \key b \minor
    \time 4/4
    % \transpose c c'\notes
    \\
    \notes
  >>
}
octave = \transpose a a' {
  \clef treble

  \key b \minor
  \time 4/4
  \melody
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  e2:m
  fis2:7
  b1:m
  e2:m
  fis2:7
  b1:m
  r4*3
  a4
  b4:m
  fis4:7
  b2:m
  r2
  e2:m
  b1:m

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
