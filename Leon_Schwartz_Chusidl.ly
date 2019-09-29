\version "2.18.0"
\paper{
  tagline = ##f
  # print-all-headers ##t
  #(set-paper-size "letter")
}
\header{
  title= "Abe Schwartz Chusidl"
  %subtitle="(Yevrieskaya Melodie)"
  %composer= "Naye Kapele"
  instrument ="Violin"
  composer = ""
  %arranger= "H. Sweet"
}

melody = \relative c' {
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
  %\tuplet 3/2 {  }

  \repeat volta 2{
    fis2  (a-1)
    \grace ees (d'4) a \grace g (fis) d
    fis8\prall ees16 fis ees8 d
    fis8\prall ees16 fis ees8 d
    r8 d fis16 ees fis16 a
    g4 g
    %\tuplet 3/2{fis8 g fis}
    %\tuplet 3/2{ees8 fis ees}
    fis16 g fis8
    ees16 fis ees8
    %\tuplet 3/2 {d8 ees d}c4\trill
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

harmonies = \chordmode {
  s8 d4 c4:m d4 c4:m
  d8*10 %r8*4
  %r4
  c4:m d4 c4:m
  d2*2:


  %B section
  d2*8:
  %r2*6
  g2:m
  d4 c4:m d4 c4:m d2 d2

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
  \midi { }
}
