\version "2.12.2"


\header{
  title= "Hora"
  subtitle="Merlin"
  composer= ""
  instrument ="Clalrinet"
  arranger= "H. Sweet Jan 2010"
}
ending = { g8. g'16 d bes g4. }
melody =  \transpose c d \transpose c a \relative c' {  %transpose for clarinet
  %melody = \transpose c a \relative c' {
  \clef treble
  \key d \minor
  \time 3/8
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    d4 ^\markup { \box A}g8
    bes4 d8
    cis8 d d
    d4.

    f8. e16 d cis
    cis8. bes16 bes a
    cis8 d d
    d4.
    d,4 g8
    bes4 d8
    cis4. cis8. cis16 d e
    f8. e16 d cis
    cis8. bes16 a bes
    \ending

  }


  \repeat volta 2{
    d'8 ^\markup { \box B} g e
    f8. f16 e d
    cis8 f e
    d8. cis16 cis bes
    cis8 d cis
    cis8. bes16 bes g
    d'4.~ g4.
    d8  g e
    f8. f16 e d
    cis8 f e
    d8. cis16 cis bes
    cis8 d cis
    bes8. a16 g bes
    \ending

  }

  \repeat volta 2{
    cis8 ^\markup { \box C} d cis16 bes
    cis8 d4
    g,8. g16 a bes
    cis8. bes16 a g
    cis8 d cis16 bes
    cis8 d4
    d8. d16 e f
    g8. f16 e d
    cis8 d cis16 bes
    cis8 d4
    g,8. g16 a bes
    c4.
    bes8. a16 g bes
    a8. g16 fis a
   \ending

  }
}

harmonies = \transpose c a \chordmode {
  g4.:m
  r4.*3
  d4.:m
  a4.
  g4.:m
  r4.*3
  a4. a4.
  d4.:m
  a4.
  g4.:m r4.
  %part 2
  g4.:m
  d4.:m
  a4.
  r4.*3
  g4.:m
  g4.:m
  g4.:m
  d4.:m
  a4.
  r4.*2
  g4.:m
  r4.*2
  %part3
  a4. r4.
  g4.:m
  a4.
  r4.*2
  g4.:m
  r4.
  a4. r4.
  g4.:m
  c4.:m
  g4.:m
  d4.
  g4.:m
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
  \midi { }
}
