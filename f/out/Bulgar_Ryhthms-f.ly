\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  #print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Bulgar Rhythm"
}

one = \relative c' {
  \clef treble

  \key a \minor
  \time 2/4

  a4 a8 a (a) a a a| %2 bars
  a4 a8 a (a) a a a| %2 bars
  a4 a8 a (a) a a a| %2 bars
  a4 a8 a (a) a a a| %2 bars
}
two = \relative c {
  \clef treble

  \key a \minor
  \time 2/4

  d8 d d d d8. d16 d8 d| %2 bars
  d8 d d d d8. d16 d8 d| %2 bars
  d8 d d d d8. d16 d8 d| %2 bars
  d8 d d d d8. d16 d8 d| %2 bars
}
three = \relative c' {
  \clef treble

  \key a \minor
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
