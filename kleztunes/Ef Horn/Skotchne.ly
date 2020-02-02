\version "2.12.2"


\header{
  title= "Skotchne"
  subtitle=""
  composer= ""
  instrument ="Ef Horn"
  arranger= ""
}



%melody =  \transpose c d \transpose c a \relative c' {  %transpose for clarinet
melody = \transpose c a \relative c' {
  \clef treble
  \key c \major
  \time 2/4
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    a'8 ^\markup { \box A} d a d
    a d f16 e d8
    f16 e d8 e f
    gis8 a4.

    a,8 d a d
    a d f16 e d8
    f16 e d8 e f
  }

  \alternative { { d2 }{d4. a'8 } }

  \repeat volta 2{
   gis8 ^\markup { \box B} a b c
   b a4.
   a8 gis4.
   gis8 f4.
   c'16 b a8 a16 gis f8
   a16 gis f8
   f16 e d8
   d2 (d'4.)a8

   gis8  a b c
   b e4.
   d8 c b a
   gis f4.

   c'16 b a8 a16 gis f8
   a16 gis f8
   f16 e d8
   d2 (d2)
   %sheet has a low 1/4 note d. mistake?
   a'8 ^\markup { \box C} d, e f
   g f e d
   f e f g
   a2

   c8 b a gis
   a gis a b
   c b a gis a2
   gis8  a b c
   b e4.
    d8 c b a
   gis f4.
   c'16 b a8 a16 gis f8
    a16 gis f8
   f16 e d8
   d2 (d2)




  }

  \alternative { { }{ } }

}

harmonies = \transpose c a \chordmode {
  c4:m
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
