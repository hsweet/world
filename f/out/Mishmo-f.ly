\version "2.18.0"
\language "english"

\header{
  title= "Mishmo"
  subtitle=""
  composer= " "
  %arranger= "H. Sweet"
}
\paper{
  tagline = ##f
  #print-all-headers  ##t
  #(set-paper-size "letter")
}
melody = \relative c'' {
  \clef treble
  \key a\minor
  \time 2/4

  \repeat volta 2{
    a4 e | a c | e d~| d2 | c8 d c d | c4 b | a d| c2~ |c4 r4 |
    a4 e | a c | e d~| d2 | c8 d e f | e d c bf | d2|
  }

  \repeat volta 2{
    a8 f' e4 | d8 e d4|c8 d d4| a2| c8 g c e| d4 c8 b | a4 d | c2|
    a8 f' e4 | d8 e d4|c8 d d4| a2| c8 g c e|d4 c8 bf | a2~ | a2|
  }

}

harmonies = \chordmode {
  a2:m  a:m
  d:m
  {s16 a2:m}    a2:m d:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{indent = 1.0\cm}
  %\midi { }
}
