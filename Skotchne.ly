\version "2.18.0"
\language "english"


\header{
  title= "Skotchne"
  subtitle=""
  composer= ""
  %instrument ="violin"
  arranger= ""
}

\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")
}

melody = \relative c {
  \clef treble
  \key c \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a'8  d a d
    a d f16 e d8
    f16 e d8 e f
    gs8 a4.

    a,8 d a d
    a d f16 e d8
    f16 e d8 e f
  }

  \alternative { { d2 }{d4. a'8 } }

  \repeat volta 2{
  \mark \default
    gs8  a b c
    b a4.
    a8 gs4.
    gs8 f4.
    c'16 b a8 a16 gs f8
    a16 gs f8
    f16 e d8
    d2 (d'4.)a8

    gs8  a b c
    b e4.
    d8 c b a
    gs f4.

    c'16 b a8 a16 gs f8
    a16 gs f8
    f16 e d8
    d2 (d2)
    %sheet has a low 1/4 note d. mistake?
    a'8  d, e f
    g f e d
    f e f g
    a2

    c8 b a gs
    a gs a b
    c b a gs a2
    gs8  a b c
    b e4.
    d8 c b a
    gs f4.
    c'16 b a8 a16 gs f8
    a16 gs f8
    f16 e d8
    d2 (d2)




  }

  \alternative { { }{ } }

}

harmonies = \chordmode {
  c4:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \melody
  >>

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}