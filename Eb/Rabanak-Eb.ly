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
  %\partial 16*3 a16 d f   %lead in notes
  e8 e  a a d, d d b
  \time 2/4
  c8 d e c
  \time 4/4
  b8 a4. a4 r
  a'8 a a b c b a4|
  \time 2/4
  g8 g a a|
  \time 4/4
  e8 e4. e4 r|
  a8 a a b c b a4|
  \time 2/4
  g8 g a a|

  \time 4/4
  e8 e4. d4 r
  e8 e  a a d, d d b
  \time 2/4
  c8 d e c
  \time 4/4
  b8 a4. a4 r|
}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2:m g2
  a2:m
  a1:m
  f:1
  g2:m
  a1:m
  f2 a2
  c4 a4:m
  a2:m g2
  a2:m g2
  a4:m g4
  a1:m
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
