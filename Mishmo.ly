\version "2.18.0"
\language "english"

\header{
  title= "Mishmo"
instrument= "Violin"
instrument= "Violin"
  subtitle=""
instrument= "Violin"
instrument= "Violin"
  composer= " "
  %arranger= "H. Sweet"
}
\paper{
  tagline = ##f
  #print-all-headers  ##t
  #(set-paper-size "letter")
}
melody = \relative c' {
  \clef treble
  \key d\minor
  \time 2/4

  \repeat volta 2{
    d'4 a | d f | a g~| g2 | f8 g f g | f4 e | d g| f2~ |f4 r4 |
    d4 a | d f | a g~| g2 | f8 g a bf | a g f ef | g2|
  }

  \repeat volta 2{
    d8 bf' a4 | g8 a g4|f8 g g4| d2| f8 c f a| g4 f8 e | d4 g | f2|
    d8 bf' a4 | g8 a g4|f8 g g4| d2| f8 c f a|g4 f8 ef | d2~ | d2|
  }

}

harmonies = \chordmode {
  d2:m  d:m
  g:m
  {s16 d2:m}    d2:m g:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{indent = 1.0\cm}
  %\midi { }
}
