\version "2.18.0"

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
  \key b\minor
  \time 2/4

  \repeat volta 2{
    b4 fis | b d | fis e~| e2 | d8 e d e | d4 cis | b e| d2~ |d4 r4 |
    b4 fis | b d | fis e~| e2 | d8 e fis g | fis e d c | e2|
  }

  \repeat volta 2{
    b8 g' fis4 | e8 fis e4|d8 e e4| b2| d8 a d fis| e4 d8 cis | b4 e | d2|
    b8 g' fis4 | e8 fis e4|d8 e e4| b2| d8 a d fis|e4 d8 c | b2~ | b2|
  }

}

harmonies = \chordmode {
  b2:m  b:m
  e:m
  {s16 b2:m}    b2:m e:m
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
