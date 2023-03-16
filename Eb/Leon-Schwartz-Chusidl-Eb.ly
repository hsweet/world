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
  \key e\minor
  \time 2/4
  %lead in notes

  \partial 8 fis8

  \repeat volta 2{
    b8\upbow b  c16 (b) c (a) %slurs
    b8 b  c16 (b)c (a)
    gis8 a b c
    dis8.\prall  c16 dis16 c b a
    b8 b  c16 (b)c (a)
    b8 b  c16 (b)c (a)
    gis16 a b c
    dis e dis c
    c b (b4.)
  }
  %\tuplet 3/2 {  }

  \repeat volta 2{
    dis2  (fis-1)
    \grace c (b'4) fis \grace e (dis) b
    dis8\prall c16 dis c8 b
    dis8\prall c16 dis c8 b
    r8 b dis16 c dis16 fis
    e4 e
    %\tuplet 3/2{fis8 g fis}
    %\tuplet 3/2{ees8 fis ees}
    dis16 e dis8
    c16 dis c8
    %\tuplet 3/2 {d8 ees d}c4\trill
    b16 c b8 a4\trill

    \grace a gis16 a b c
    dis e dis c
    c b (b4.)
  }
  %possible alternative ending
  r4^"alternative ending?" b8 b
  b c d e
  fis e d c
  d c b a
  b2
}

harmonies = \chordmode {
  s8 b4 a4:m b4 a4:m
  b8*10 %r8*4
  %r4
  a4:m b4 a4:m
  b2*2:


  %B section
  b2*8:
  %r2*6
  e2:m
  b4 a4:m b4 a4:m b2 b2

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
