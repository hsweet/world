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

melody = \relative c' {
  \clef treble
  \key g \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e8  a e a
    e a c16 b a8
    c16 b a8 b c
    ds8 e4.

    e,8 a e a
    e a c16 b a8
    c16 b a8 b c
  }

  \alternative { { a2 }{a4. e'8 } }

  \repeat volta 2{
  \mark \default
    ds8  e fs g
    fs e4.
    e8 ds4.
    ds8 c4.
    g'16 fs e8 e16 ds c8
    e16 ds c8
    c16 b a8
    a2 (a'4.)e8

    ds8  e fs g
    fs b4.
    a8 g fs e
    ds c4.

    g'16 fs e8 e16 ds c8
    e16 ds c8
    c16 b a8
    a2 (a2)
    %sheet has a low 1/4 note d. mistake?
    e'8  a, b c
    d c b a
    c b c d
    e2

    g8 fs e ds
    e ds e fs
    g fs e ds e2
    ds8  e fs g
    fs b4.
    a8 g fs e
    ds c4.
    g'16 fs e8 e16 ds c8
    e16 ds c8
    c16 b a8
    a2 (a2)




  }

  \alternative { { }{ } }

}

harmonies = \chordmode {
  g4:m
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
