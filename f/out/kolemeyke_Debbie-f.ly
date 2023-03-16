\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")
}

\header{
  title= "Kolemeike"
  subtitle=""
  instrument ="violin"
  arranger= "D. Strauss"
}



melody = \relative c' {
  \clef treble
  \key g \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e8 
    e'-. e-. e-.
    e-. e-. c b16 c
    a8 e'-.
    e-. e-. c b16 c e8 r8
    r8 e8-.  e-.  e-.
    ds16 e fs e ds c b a
    b c d c b a b c
    a2
  }

  %\alternative { {}{} }
  \repeat volta 2{
  \mark \default
    b16  c d4 d16 c|
    e d d c e d d c
    d8 g fs e
    ds c e r
    b16 c d c b a b c
    a8 e16 e a8 a
    b16 c d c b a b c
    a2
  }

  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    a'8  e r8 d c b a
    e a b c d
    e2
    e,8 gs e gs
    a c d16 c b a
    e8 gs e gs
    a4 a
  }

  %\alternative { { }{ } }

}



harmonies = \chordmode {
  a2*6:m %r2*5
  e2 a2:m
  d2*3:m %r2*2
  a2:m e2 a2:m e2 a2:m
  a2*4:m %r2*3
  e2 a2:m e2 a2:m

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
