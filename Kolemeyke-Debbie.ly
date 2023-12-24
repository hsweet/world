\version "2.18.0"
\language "english"
%\pointAndClickOff

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
  \key c \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a'8
    a'-. a-. a-.
    a-. a-. f e16 f
    d8 a'-.
    a-. a-. f e16 f a8 r8
    r8 a8-.  a-.  a-.
    gs16 a b a gs f e d
    e f g f e d e f
    d2
  }

  %\alternative { {}{} }
  \repeat volta 2{
  \mark \default
    e16  f g4 g16 f|
    a g g f a g g f
    g8 c b a
    gs f a r
    e16 f g f e d e f
    d8 a16 a d8 d
    e16 f g f e d e f
    d2
  }

  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    d'8  a r8 g f e d
    a d e f g
    a2
    a,8 cs a cs
    d f g16 f e d
    a8 cs a cs
    d4 d
  }

  %\alternative { { }{ } }

}



harmonies = \chordmode {
  d2*6:m %r2*5
  a2 d2:m
  g2*3:m %r2*2
  d2:m a2 d2:m a2 d2:m
  d2*4:m %r2*3
  a2 d2:m a2 d2:m

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
  \midi {\tempo 4 = 120 }
}
