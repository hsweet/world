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
  \key g \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  d8 d  g g c, c c a
  \time 2/4
  bf8 c d bf
  \time 4/4
  a8 g4. g4 r
  g'8 g g a bf a g4|
  \time 2/4
  f8 f g g|
  \time 4/4
  d8 d4. d4 r|
  g8 g g a bf a g4|
  \time 2/4
  f8 f g g|

  \time 4/4
  d8 d4. c4 r
  d8 d  g g c, c c a
  \time 2/4
  bf8 c d bf
  \time 4/4
  a8 g4. g4 r|
}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g2:m f2
  g2:m
  g1:m
  ef:1
  f2:m
  g1:m
  ef2 g2
  bf4 g4:m
  g2:m f2
  g2:m f2
  g4:m f4
  g1:m
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
    title= "Rabanak, A Rabanak"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}
%\include "Goldenstein_Khosidl.ly"
