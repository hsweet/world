\version "2.16.0"

\paper{
  %print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Platch Everi"
  subtitle="(Yevrieskaya Melodie)"
  composer= "Naye Kapele"
  %arranger= "H. Sweet"
}


melody = \relative c'
{
  \clef treble
  \key b \minor
  \time 2/4


  %introduction

 % {d4 d d2 d4 d d2}

  % A section, 1 repeat
  \repeat volta 2{
  \mark \default
    b2 b'
    g4 fis e g
    fis8 g fis g | fis e4 d16 cis
    b2 ~ b
    fis' d'
    cis4 cis
    cis8 b ais b
    cis4 cis
    cis8 b ais g
    fis2  ~ fis4 \times 2/3 {fis8 fisis g}
    a4 a | b2
    a8 b a4
    d, e
    fis fis
    fis8 e4 d16 cis
    b4 \times 2/3 {d8 cis b}
    ais2\fermata
    b8 cis d4
    fis a
    d, e
    fis8 e d4
    cis  b ~ b8 b' fis4
    d b ~ b2
  }
  % B section, no repeat
  \break
  \mark \default
  {
    %\bar "||"
    fis8 gis4 ais 8
    b2 b
    b4 c a c
    b2 b
    b4 c a c
    b4 \times 2/3 {e8 d c}
    b4 r8 b8 b ais r b16 c
    cis4 r8 cis8 cis b r b d4 d d8 cis r b ais2 fis
    cis' cis cis4 d b4 \times 2/3 {fis'8 e d}
    cis2 cis cis4 d b \times 2/3 {fis'8  e d}
    cis4 cis ais fis
    fis8 ais b cis
    d cis fis d
    b 4 r8 b' fis4 d b2
  }
  %C sectio
  \break
  \repeat volta 2{
    \mark \default
    b8 cis r d
    e4 e
    g2
    e4 e
    e8 d r cis
    d4 d
    fis2
    d4 d
    d8 cis r b
    cis4 cis
    ais fis
    fis8 ais b cis

  }
  \alternative {
    {d8 cis fis d b4 r8 b' fis4  d b2}
    {d8 cis b d fis2 ~
     fis4 \times 2/3{cis'8 d e}|
     fis8 e d cis
     b8 a g fis
     fis2~
     fis2
    }

  }

}

harmonies = \chordmode {
  %A section
  b2*3:m
  %r2 * 6
  e2:m
  b2:m
  fis2*4:7
  %r2 * 5
  fis2*6
  %r2 * 5
  a2*3
  %r1
  d2
  fis2*2 % r2
  b4*5 % r2
  d4*2
  %r4
  a4*2
  %r4
  e4*5:m
  %r1
  b2*4:m
  %B section
  %r1
  b2*11:m
  %r2 * 10
  fis2*2
  %r2
  d2*4
  %r2 * 3
  fis2*11
  %r2 * 10
  b2*5
  % C section
  %r2 * 4
  e2*5:m
  %r2 * 4
  b2*4:m
  %r2 * 3
  fis2*2
  %r2
  b2*4:m
  %r2 * 3
  b2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{ }
  \midi { }
}
