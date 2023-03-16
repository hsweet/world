\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose b, a, \relative c' {
  \clef treble
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b4  b4. ds8 c b
    ds4 ds4. fs8 e ds
    e4 e4. g8 fs e|
  }
  \alternative {
    { ds4 c16 b c8 ds4 r}
    { ds4 c16 b c8 b4 r}
  }

  \repeat volta 2{
  \mark \default
    ds8  ds4 c8 b b b4|
    c8 c4 b8 a a a4|
    a4 c8. c16 a8 a e'4|
    ds4 c16[(b)c8] b4 r4|
  }

  \repeat volta 2{
  \mark \default
    e2  e
    e4 e e e
    e16 e e8 g8. fs16 e8 g fs e|
    e16 e e8 g8. fs16 e8 g fs e|

    fs16 fs fs8 a8. g16 fs8 a g fs
    fs16 fs fs8 a8. g16 fs8 a g fs|

    fs16 fs fs8 b4 fs16 fs fs8 b8. b,16|
    b8 b g'16(fs e ds) e2|
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose b, a, \chordmode {
  b1*2 % r1
  e1:m b4 a4:m b2 b4 a4:m b2

  b1
  a1*2:m %r1
  b1

  e1:m a2
  e2*5:m %r1*2
  b4
  b4*3:7 %r2
  b4
  b4*3:7 %r2
  a4*5 %r4
  a4:m e2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Hava Nagila"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
