\version "2.12.2"

\header{
  title= "Abe Schwartz Chusidl"
  %subtitle="(Yevrieskaya Melodie)"
  %composer= "Naye Kapele"
  instrument ="Ef Horn"
  composer = ""
  %arranger= "H. Sweet"
}

melody = \transpose c a \relative c' {
  \clef treble
  \key g\minor
  \time 2/4
  %lead in notes

  \partial 8 a'8

  \repeat volta 2{
    d8\upbow d  ees16 (d) ees (c) %slurs
    d8 d  ees16 (d)ees (c)
    b8 c d ees
    fis8.\prall  ees16 fis16 ees d c
    d8 d  ees16 (d)ees (c)
    d8 d  ees16 (d)ees (c)
    b16 c d ees
    fis g fis ees
    ees d (d4.)
  }
  %\times 2/3 {  }

  \repeat volta 2{
    fis2  (a-1)
     \grace ees (d'4) a \grace g (fis) d
    fis8\prall ees16 fis ees8 d
    fis8\prall ees16 fis ees8 d
    r8 d fis16 ees fis16 a
    g4 g
    %\times 2/3{fis8 g fis}
    %\times 2/3{ees8 fis ees}
    fis16 g fis8
    ees16 fis ees8
    %\times 2/3 {d8 ees d}c4\trill
    d16 ees d8 c4\trill

    \grace c b16 c d ees
    fis g fis ees
    ees d (d4.)
  }
  %possible alternative ending
  r4^"alternative ending?" d8 d
  d ees f g
  a g f ees
  f ees d c
  d2
}

harmonies = \transpose c a \chordmode {
  r8 d4 c4:m d4 c4:m
  d2 r8 *4
  r4 c4:m d4 c4:m
  d2 d2:


  %B section
  d2:
  r2*6
  g2:m
  d4 c4:m d4 c4:m d2 d2

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
