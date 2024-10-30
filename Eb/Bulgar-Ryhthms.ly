\version "2.18.0"
\language "english"
\pointAndClickOff

\paper{
  tagline = ##f
  #print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Bulgar Rhythm"
instrument= "Eb"
}

one = \relative c {
  \clef treble

  \key d \minor
  \time 2/4

  d4 d8 d (d) d d d| %2 bars
  d4 d8 d (d) d d d| %2 bars
  d4 d8 d (d) d d d| %2 bars
  d4 d8 d (d) d d d| %2 bars
}
two = \relative c {
  \clef treble

  \key d \minor
  \time 2/4

  g8 g g g g8. g16 g8 g| %2 bars
  g8 g g g g8. g16 g8 g| %2 bars
  g8 g g g g8. g16 g8 g| %2 bars
  g8 g g g g8. g16 g8 g| %2 bars
}
three = \relative c {
  \clef treble

  \key d \minor
  \time 2/4


}


\score {\transpose c a
  <<

    \new Staff   \one
    % \new Staff    \two
    %\new Staff     \three

  >>

  \layout{indent = 1.0\cm}
  \midi { }
}
