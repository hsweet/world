\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 4*2 a b   %lead in notes

  \repeat volta 2{
    \mark \default
    c4 c r2
    r2 b4 c
    d1
    r2 g,4 a
    b4 b r2
    r2 c4 b
    b2 r2
    r1
    a4 b c c
    r1
    b4 c a'2
    r1
    gs4 a b b
    r1
    b4 a gs2
    r1
  }


  \repeat volta 2{
    \mark \default
    e4 d c8 b c4
    r4 b c r
    e4 d c8 b c4
    r4 b c r
    d4 d d e

    f e d8 cs d4
    r4 d e
    f f e d8 cs d4
    r4 d e f
    a2 a
    gs1 ~gs1

  }
  \alternative {
    { }
    { }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s2

  a2*4:m
  d2*4:m
  g2*4
  e2*4

  a2*4:m
  d2*4:m
  d2*4:m
  e2*4
  %b
  a2*8:m

  d2*8:m

  e2*8
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
    title= "Naj Man Sela"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 200

    % \midi { }
  }
}
