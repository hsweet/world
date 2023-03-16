\version "2.18.2"
\language "english"

\header {
  title = "Hora Fetelor"
  subtitle = "Women‘s Dance"
  arranger = "hsweet"
}

global = {
  \key b \minor
  \numericTimeSignature
  \time 3/8
  \partial 8.
}

scoreAViolinI = \relative c {
  \global
  % Music follows here.
  \repeat volta 2{
   \mark \default
   \partial 16*3  fs16 gs as
   b8.\p-> fs'16 d fs
   b,8.-> fs'16 d fs
   b,4.\f \glissando ds
   e8.\p-> b'16 g b
   e,8.-> b'16 g b|
   e,4. (e8.)as16b bs

   cs8. b16 b as as8. g16 g fs
   fs8 b b b8. a16 a g
   fs8. e16 e d a'8. g16 a g
   fs4.(fs8.) as16 b bs
   cs8. b16 b as as8. g16 g fs

    fs8 b b b8. a16 a g
    fs8. g16 e fs d8. e16 cs d
    b8. fs'16 d fs b,4.

  }

  \repeat volta 2{
   \mark \default
   fs'8 d' d d8. cs16 cs b
   a8 cs cs cs4.
   g8 b b b8. a16 a g
   fs8 a a a4.

   e8 g g g8. fs16 fs e
   d8 fs fs fs8. fs16 a g

  }
   \alternative {
     {fs8. e16 e d a'8. g16 a g
     fs4.(fs4.)}
     {fs8. g16 e fs d8. e16 cs d
     b8. fs'16 d fs b,4. }
   }
   \break
     \repeat volta 2{
   \mark \default
   a8. b16 cs d e8. fs16 g e
   g8 fs4(fs4.)
   e8. d16 d cs a'8. g16 a g|
   fs2.

   a,8. b16 cs d e8. fs16 g e|
   fs8 g(g2\fermata)  |
   fs8. g16 e fs d8. e16 cs d

     }
  \alternative{
  {b8. fs'16 d fs b,4.}
  {b8. b'16 fs d b4.}
  }

}

scoreAViolinII = \relative c' {
  \global
  % Music follows here.
  s8.
  b8 ^pizz r b16 r
  b8 r b16 r
  b4.^arco \glissando ds
  e8^pizz r8 e16 r
  e8 r e16 r
  e4.^arco \glissando
  bs'4.
  fs8 r fs16 r
  fs8 r fs16 r
  b,8  r b16 r
  g4.
  d8 r d16 r
  e8 r e 16 r
  fs4.~
  fs4.
  fs8 r fs16 r
  fs8 r fs16 r
  b8 r b16 r
  g4.
  fs8 r fs16 r
  fs8 r fs16 r
  b4. ~
  b4.



}

scoreAViola = \relative c {
  \global
  % Music follows here.
  s8.
  b8. r8 b16 b8. r8 b16|
  b4. ds
  e8. r8 e16 e8. r8 e16
  e4. bs'

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
