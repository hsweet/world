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
  \key fs \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 4*2 fs gs   %lead in notes

  \repeat volta 2{
    \mark \default
    a4 a r2
    r2 gs4 a
    b1
    r2 e,4 fs
    gs4 gs r2
    r2 a4 gs
    gs2 r2
    r1
    fs4 gs a a
    r1
    gs4 a fs'2
    r1
    es4 fs gs gs
    r1
    gs4 fs es2
    r1
  }


  \repeat volta 2{
    \mark \default
    cs4 b a8 gs a4
    r4 gs a r
    cs4 b a8 gs a4
    r4 gs a r
    b4 b b cs

    d cs b8 as b4
    r4 b cs
    d d cs b8 as b4
    r4 b cs d
    fs2 fs
    es1 ~es1

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

  fs2*4:m
  b2*4:m
  e2*4
  cs2*4

  fs2*4:m
  b2*4:m
  b2*4:m
  cs2*4
  %b
  fs2*8:m

  b2*8:m

  cs2*8
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
