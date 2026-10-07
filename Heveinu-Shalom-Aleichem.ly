\version "2.24.0"
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
  \key g \minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 8*3 d8 g bf    %lead in notes

  d2 bf4. a8|
  a8 g2  g8 bf d |
  g2 ef4. d8|
  d8 c2 c8 d ef
  d4. c8 d4. c8|
  c8 bf2 a8 bf c
  d4 4 4 4
  d8 c bf a g2

}
%################################# Lyrics #####################
%{
\addlyrics{
  \set stanza = #"1. "
}
%}

%################################# Chords #######################
harmonies = \chordmode {
  s4.
  g1*3:m
  c1*2:m
}



\score {
  % transpose score below
  %\transpose d a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Heveinu Shalom Aleichem "
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

%{
\markup{~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }
\markup{}
\markup{}

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