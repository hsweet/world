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
  \key c \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 8 g16 f    %lead in notes

  \repeat volta 2{
    \mark \default
    e16 f g8 g g
    g16 af f8 f f|
    g16 af b8 g16 af b8
    c8 b4 af16 g

    g8 c16 c c8 c
    c8 f,4 g16 f|

    e16 f g af bf c bf af
  }
  \alternative {
    {af16 g g4 g16 f }
    {af16 g g4 g8| }
  }

  \repeat volta 2{
    \mark \default
    d'8. g,16 d'8. g,16|
    ef'8 d4 c16 b
    c16 b c b c ef d c|
    c16 d b4 g8

    g8 d'16 d d d d d
    g8 d4 c16 b
   c16 b c b c ef d c|
   c16 d b4 g8

   c16 c c c ef4
   c16 c c c g4
   b16 b b b d8 c
   b8 af g f

   c'8. b16 c8. b16
   c8 f,4 g16 f
   e16 f g af b c b af|

  }
  \alternative {
    {af16 g g4 g8| }
    { af16 g g4 r8 |}
  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s8
  g2*4
  c2:m
  f2*2:m
  g2*2
  %b
  g2*2
  c2:m
  g2*3
  c2:m
  g2
  c2*2:m
  g2*2
  f2*3:m
  g2*2


}

\score {
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
    title= "Alter Zhok"
    subtitle=""
    composer= ""

    instrument =""
    arranger= ""
  }
  \midi{\tempo 4 = 120}
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