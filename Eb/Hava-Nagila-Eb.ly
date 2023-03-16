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
melody = \transpose cs' b \relative c'' {
  \clef treble
  \key fs \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    cs4  cs4. es8 d cs
    es4 es4. gs8 fs es
    fs4 fs4. a8 gs fs|
  }
  \alternative {
    { es4 d16 cs d8 es4 r}
    { es4 d16 cs d8 cs4 r}
  }

  \repeat volta 2{
  \mark \default
    es8  es4 d8 cs cs cs4|
    d8 d4 cs8 b b b4|
    b4 d8. d16 b8 b fs'4|
    es4 d16[(cs)d8] cs4 r4|
  }

  \repeat volta 2{
  \mark \default
    fs2  fs
    fs4 fs fs fs
    fs16 fs fs8 a8. gs16 fs8 a gs fs|
    fs16 fs fs8 a8. gs16 fs8 a gs fs|

    gs16 gs gs8 b8. a16 gs8 b a gs
    gs16 gs gs8 b8. a16 gs8 b a gs|

    gs16 gs gs8 cs4 gs16 gs gs8 cs8. cs,16|
    cs8 cs a'16(gs fs es) fs2|
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose cs' b \chordmode {
  cs1*2 % r1
  fs1:m cs4 b4:m cs2 cs4 b4:m cs2

  cs1
  b1*2:m %r1
  cs1

  fs1:m b2
  fs2*5:m %r1*2
  cs4
  cs4*3:7 %r2
  cs4
  cs4*3:7 %r2
  b4*5 %r4
  b4:m fs2:m
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
