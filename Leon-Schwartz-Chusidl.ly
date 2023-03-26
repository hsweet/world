\version "2.18.0"
\language "english"
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
    d8\upbow d  ef16 (d) ef (c) %slurs
    d8 d  ef16 (d)ef (c)
    b8 c d ef
    fs8.\prall  ef16 fs16 ef d c
    d8 d  ef16 (d)ef (c)
    d8 d  ef16 (d)ef (c)
    b16 c d ef
    fs g fs ef
    ef d (d4.)
  }
  %\tuplet 3/2 {  }

  \repeat volta 2{
    fs2  (a-1)
    \grace ef (d'4) a \grace g (fs) d
    fs8\prall ef16 fs ef8 d
    fs8\prall ef16 fs ef8 d
    r8 d fs16 ef fs16 a
    g4 g
    %\tuplet 3/2{fis8 g fis}
    %\tuplet 3/2{ees8 fis ees}
    fs16 g fs8
    ef16 fs ef8
    %\tuplet 3/2 {d8 ees d}c4\trill
    d16 ef d8 c4\trill

    \grace c b16 c d ef
    fs g fs ef
    ef d (d4.)
  }
  %possible alternative ending
  r4^"alternative ending?" d8 d
  d ef f g
  a g f ef
  f ef d c
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
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{indent = 1.0\cm}
  \midi { }
}
