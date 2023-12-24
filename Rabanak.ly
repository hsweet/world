\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
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
  \key c \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  g8 g  c c f, f f d
  \time 2/4
  ef8 f g ef
  \time 4/4
  d8 c4. c4 r
  c'8 c c d ef d c4|
  \time 2/4
  bf8 bf c c|
  \time 4/4
  g8 g4. g4 r|
  c8 c c d ef d c4|
  \time 2/4
  bf8 bf c c|

  \time 4/4
  g8 g4. f4 r
  g8 g  c c f, f f d
  \time 2/4
  ef8 f g ef
  \time 4/4
  d8 c4. c4 r|
}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  c2:m bf2
  c2:m
  c1:m
  af:1
  bf2:m
  c1:m
  af2 c2
  ef4 c4:m
  c2:m bf2
  c2:m bf2
  c4:m bf4
  c1:m
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
    title= "Rabanak, A Rabanak"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
%\include "Goldenstein_Khosidl.ly"
