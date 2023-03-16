\version "2.18.2"
\language "english"

\header {
  title = "Hora Fetelor"
  subtitle = "Women‘s Dance"
  arranger = "hsweet"
}

global = {
  \key e \minor
  \numericTimeSignature
  \time 3/8
  \partial 8.
}

scoreAViolinI = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2{
   \mark \default
   \partial 16*3  b16 cs ds
   e8.\p-> b'16 g b
   e,8.-> b'16 g b
   e,4.\f \glissando gs
   a8.\p-> e'16 c e
   a,8.-> e'16 c e|
   a,4. (a8.)ds16e es

   fs8. e16 e ds ds8. c16 c b
   b8 e e e8. d16 d c
   b8. a16 a g d'8. c16 d c
   b4.(b8.) ds16 e es
   fs8. e16 e ds ds8. c16 c b

    b8 e e e8. d16 d c
    b8. c16 a b g8. a16 fs g
    e8. b'16 g b e,4.

  }

  \repeat volta 2{
   \mark \default
   b'8 g' g g8. fs16 fs e
   d8 fs fs fs4.
   c8 e e e8. d16 d c
   b8 d d d4.

   a8 c c c8. b16 b a
   g8 b b b8. b16 d c

  }
   \alternative {
     {b8. a16 a g d'8. c16 d c
     b4.(b4.)}
     {b8. c16 a b g8. a16 fs g
     e8. b'16 g b e,4. }
   }
   \break
     \repeat volta 2{
   \mark \default
   d8. e16 fs g a8. b16 c a
   c8 b4(b4.)
   a8. g16 g fs d'8. c16 d c|
   b2.

   d,8. e16 fs g a8. b16 c a|
   b8 c(c2\fermata)  |
   b8. c16 a b g8. a16 fs g

     }
  \alternative{
  {e8. b'16 g b e,4.}
  {e8. e'16 b g e4.}
  }

}

scoreAViolinII = \relative c' {
  \global
  % Music follows here.
  s8.
  e8 ^pizz r e16 r
  e8 r e16 r
  e4.^arco \glissando gs
  a8^pizz r8 a16 r
  a8 r a16 r
  a4.^arco \glissando
  es'4.
  b8 r b16 r
  b8 r b16 r
  e,8  r e16 r
  c4.
  g8 r g16 r
  a8 r a 16 r
  b4.~
  b4.
  b8 r b16 r
  b8 r b16 r
  e8 r e16 r
  c4.
  b8 r b16 r
  b8 r b16 r
  e4. ~
  e4.



}

scoreAViola = \relative c' {
  \global
  % Music follows here.
  s8.
  e,8. r8 e16 e8. r8 e16|
  e4. gs
  a8. r8 a16 a8. r8 a16
  a4. es'

}

scoreACello = \relative c {
  \global
  % Music follows here.

}

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAViolaPart = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
} { \clef alto \scoreAViola }

scoreACelloPart = \new Staff \with {
  instrumentName = "Cello"
  midiInstrument = "cello"
} { \clef bass \scoreACello }

\score {
  <<
    \scoreAViolinIPart
    \scoreAViolinIIPart
   % \scoreAViolaPart
  %  \scoreACelloPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
