\version "2.18.0"

\paper{
  tagline = ##f
  #print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Bulgar Rhythm"
}

one = \relative c'' {
  \clef treble

  \key b \minor
  \time 2/4

  b4 b8 b (b) b b b| %2 bars
  b4 b8 b (b) b b b| %2 bars
  b4 b8 b (b) b b b| %2 bars
  b4 b8 b (b) b b b| %2 bars
}
two = \relative c' {
  \clef treble

  \key b \minor
  \time 2/4

  e8 e e e e8. e16 e8 e| %2 bars
  e8 e e e e8. e16 e8 e| %2 bars
  e8 e e e e8. e16 e8 e| %2 bars
  e8 e e e e8. e16 e8 e| %2 bars
}
three = \relative c' {
  \clef treble

  \key b \minor
  \time 2/4


}


\score {
  <<

    \new Staff   \one
    % \new Staff    \two
    %\new Staff     \three

  >>

  \layout{indent = 1.0\cm}
  \midi { }
}
