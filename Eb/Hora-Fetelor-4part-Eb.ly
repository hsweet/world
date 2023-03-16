\version "2.18.2"
\language "english"

\header {
  title = "Hora Fetelor"
  subtitle = "Women‘s Dance"
  arranger = "hsweet"
}

global = {
  \key cs \minor
  \numericTimeSignature
  \time 3/8
  \partial 8.
}

scoreAViolinI = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2{
   \mark \default
   \partial 16*3  gs16 as bs
   cs8.\p-> gs'16 e gs
   cs,8.-> gs'16 e gs
   cs,4.\f \glissando es
   fs8.\p-> cs'16 a cs
   fs,8.-> cs'16 a cs|
   fs,4. (fs8.)bs16cs css

   ds8. cs16 cs bs bs8. a16 a gs
   gs8 cs cs cs8. b16 b a
   gs8. fs16 fs e b'8. a16 b a
   gs4.(gs8.) bs16 cs css
   ds8. cs16 cs bs bs8. a16 a gs

    gs8 cs cs cs8. b16 b a
    gs8. a16 fs gs e8. fs16 ds e
    cs8. gs'16 e gs cs,4.

  }

  \repeat volta 2{
   \mark \default
   gs'8 e' e e8. ds16 ds cs
   b8 ds ds ds4.
   a8 cs cs cs8. b16 b a
   gs8 b b b4.

   fs8 a a a8. gs16 gs fs
   e8 gs gs gs8. gs16 b a

  }
   \alternative {
     {gs8. fs16 fs e b'8. a16 b a
     gs4.(gs4.)}
     {gs8. a16 fs gs e8. fs16 ds e
     cs8. gs'16 e gs cs,4. }
   }
   \break
     \repeat volta 2{
   \mark \default
   b8. cs16 ds e fs8. gs16 a fs
   a8 gs4(gs4.)
   fs8. e16 e ds b'8. a16 b a|
   gs2.

   b,8. cs16 ds e fs8. gs16 a fs|
   gs8 a(a2\fermata)  |
   gs8. a16 fs gs e8. fs16 ds e

     }
  \alternative{
  {cs8. gs'16 e gs cs,4.}
  {cs8. cs'16 gs e cs4.}
  }

}

scoreAViolinII = \relative c'' {
  \global
  % Music follows here.
  s8.
  cs8 ^pizz r cs16 r
  cs8 r cs16 r
  cs4.^arco \glissando es
  fs8^pizz r8 fs16 r
  fs8 r fs16 r
  fs4.^arco \glissando
  css'4.
  gs8 r gs16 r
  gs8 r gs16 r
  cs,8  r cs16 r
  a4.
  e8 r e16 r
  fs8 r fs 16 r
  gs4.~
  gs4.
  gs8 r gs16 r
  gs8 r gs16 r
  cs8 r cs16 r
  a4.
  gs8 r gs16 r
  gs8 r gs16 r
  cs4. ~
  cs4.



}

scoreAViola = \relative c' {
  \global
  % Music follows here.
  s8.
  cs8. r8 cs16 cs8. r8 cs16|
  cs4. es
  fs8. r8 fs16 fs8. r8 fs16
  fs4. css'

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
