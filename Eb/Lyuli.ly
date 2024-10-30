\version "2.22.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
  a8 g f e
  d4 d
  d8 e f d
  g2

  f4 f
  e4 a
  d,4 d
  d2
  \repeat volta 2{
    \mark \default
   a'2
   g4 c
   a8 a a a
   g2
   f4 f
   e4 a
   d,4 d
   d2
  }
% Gut Purim
 %\break
\key c \minor
^Gut_Purim
\partial 8 g8
 c,8 c c d
 ef8 d c d
 f8 f f af
 ef4 ef
 af8 g f af
 g8 f ef g
 f8 ef d ef
 c4 4

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 d2*3:m
 g2:m
 d2:m
 c2
 d2*2:m
 %
 d2:m
 c2
 d2:m
 g2:m
 d2:m
 c2
 d2*2:m

 %Purim
 s8 c2*2:m
 f2:m
 c2:m
 f2:m
 c2:m
 d2:7
 c2:m
}

\score {\transpose c a
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Lyuli Da Lyuli"
    subtitle=""
    composer= ""

    instrument =""
    arranger= ""
  }
  
  \layout{indent = 1.0\cm}
}
%{
% more verses:
\markup{}
\markup {
  \font-size #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."
\column {
 ""
}
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
\column {
""
}
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
\column {
 ""
}
      }
      \hspace #0.2 % distance between verses
      \line { "4."
\column {
""
}
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}