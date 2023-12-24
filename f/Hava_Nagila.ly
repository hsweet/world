\version "2.18.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose e d \relative c' {
  \clef treble
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e4  e4. gs8 f e
    gs4 gs4. b8 a gs
    a4 a4. c8 b a|
  }
  \alternative {
    { gs4 f16 e f8 gs4 r}
    { gs4 f16 e f8 e4 r}
  }

  \repeat volta 2{
  \mark \default
    gs8  gs4 f8 e e e4|
    f8 f4 e8 d d d4|
    d4 f8. f16 d8 d a'4|
    gs4 f16[(e)f8] e4 r4|
  }

  \repeat volta 2{
  \mark \default
    a2  a
    a4 a a a
    a16 a a8 c8. b16 a8 c b a|
    a16 a a8 c8. b16 a8 c b a|

    b16 b b8 d8. c16 b8 d c b
    b16 b b8 d8. c16 b8 d c b|

    b16 b b8 e4 b16 b b8 e8. e,16|
    e8 e c'16(b a gs) a2|
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose e d \chordmode {
  e1*2 % r1
  a1:m e4 d4:m e2 e4 d4:m e2

  e1
  d1*2:m %r1
  e1

  a1:m d2
  a2*5:m %r1*2
  e4
  e4*3:7 %r2
  e4
  e4*3:7 %r2
  d4*5 %r4
  d4:m a2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Hava Nagila"
    subtitle=""
    composer= ""
    instrument = "F Horn"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
