\version "2.18.0"
\language "english"
%\pointAndClickOff
\paper{
  tagline = "hsweet/lilypond"
  %print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Kolemeike"
instrument= "Violin"
  composer= "Beregovski"
  arranger = ""

}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
melody = \relative c' {
  \clef treble
  \key c \major
  \time 2/4
  \partial 16*3 a'16 d f
  \repeat volta 2{
    a16  f e d a'  f e d
    a'16  f e d a'  f e d
    e16 f gs a gs f e d
    gs8  a  ~ a4

    a16 f e d a' f e d
    a'16 f e d a' f e d \breathe
    e f gs a gs f e d
    d4 ~ d16 a d f
    \break
  }
  \repeat volta 2{
    c'8  c ~ c16 b d c
    b8  b ~ b16a c b
    a8 -3 a ~ a16 a b a %gis b c
    gs8. gs16 a f e d %12

    e16 f gs a gs f e d
    gs8 a ~ a4
    c8 c ~ c16 b d c
    b8 b ~ b16a c b%16

    a8 -3 a ~ a16 a b a%gis b c
    gs8. f16 gs f e d
    e16 f gs a gs f e f
    d2%20
  }
  \repeat volta 2{
    a16 d f a a, d f a
    a,16 d f a gs f e d
    a16 d f a gs f e d
    gs 8 a ~ a4

    c16  b d c b a c b
    a16 gs b a g f e d
    e16 f gs a gs f e f
    d2
    \break
  }
}

harmonies = \chordmode {
  {
    {s16*3}
    d2*6:m
    %r2*5
    a2:7
    d2
  }{
    c2 g2
    d2*4:m
    %r2*3
    c2 g2 d2*2:m

    a2:7 d2:m
  }{
    d2*6:m
    %r2*5
    a2:7
    d2:m
  }

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
