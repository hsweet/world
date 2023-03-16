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
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 4*2 e fs   %lead in notes

  \repeat volta 2{
    \mark \default
    g4 g r2
    r2 fs4 g
    a1
    r2 d,4 e
    fs4 fs r2
    r2 g4 fs
    fs2 r2
    r1
    e4 fs g g
    r1
    fs4 g e'2
    r1
    ds4 e fs fs
    r1
    fs4 e ds2
    r1
  }


  \repeat volta 2{
    \mark \default
    b4 a g8 fs g4
    r4 fs g r
    b4 a g8 fs g4
    r4 fs g r
    a4 a a b

    c b a8 gs a4
    r4 a b
    c c b a8 gs a4
    r4 a b c
    e2 e
    ds1 ~ds1

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

  e2*4:m
  a2*4:m
  d2*4
  b2*4

  e2*4:m
  a2*4:m
  a2*4:m
  b2*4
  %b
  e2*8:m

  a2*8:m

  b2*8
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
    title= "Naj Man Sela"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 200

    % \midi { }
  }
}
