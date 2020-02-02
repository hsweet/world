\version "2.12.2"


\header{
  title= "Bulgar Rhythm"
}

one = \transpose c a \relative c' {
  \clef treble

  \key d \minor
  \time 2/4

  d4 d8 d (d) d d d| %2 bars
  d4 d8 d (d) d d d| %2 bars
  d4 d8 d (d) d d d| %2 bars
  d4 d8 d (d) d d d| %2 bars
}
two = \transpose c a \relative c' {
  \clef treble

  \key d \minor
  \time 2/4

  g8 g g g g8. g16 g8 g| %2 bars
  g8 g g g g8. g16 g8 g| %2 bars
  g8 g g g g8. g16 g8 g| %2 bars
  g8 g g g g8. g16 g8 g| %2 bars
}
three = \transpose c a \relative c' {
  \clef treble

  \key d \minor
  \time 2/4


}


\score {
  <<

    \new Staff   \one
    % \new Staff    \two
    %\new Staff     \three

  >>

  \layout{ }
  \midi { }
}
