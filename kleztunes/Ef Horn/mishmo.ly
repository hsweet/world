\version "2.10.5"

\header{
  title= "Mishmo"
  subtitle="( )"
  composer= " "
  %arranger= "H. Sweet"
}   

melody = \transpose c a \relative c' {
  \clef treble
  \key d\minor
  \time 2/4
  
  \repeat volta 2{
    d'4 a | d f | a g~| g2 | f8 g f g | f4 e | d g| f2~ |f4 r4 |
    d4 a | d f | a g~| g2 | f8 g a bes | a g f ees | g2|}
  
  \repeat volta 2{
    d8 bes' a4 | g8 a g4|f8 g g4| d2| f8 c f a| g4 f8 e | d4 g | f2|
    d8 bes' a4 | g8 a g4|f8 g g4| d2| f8 c f a|g4 f8 ees | d2~ | d2|
  }
  
}

harmonies = \transpose c a \chordmode {
  d2:m  d:m g:m 
  {r16 d2:m}    d2:m g:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
  #(set-paper-size "letter")
      \harmonies
    }
    \new Staff \melody
  >>
  
  \layout{ }
  %\midi { }
}
