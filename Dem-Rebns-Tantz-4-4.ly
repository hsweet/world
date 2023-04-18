\version "2.20.0"
\include "english.ly"
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
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default
   d8 d d d
   d fs ef4
   ef8 fs d4 d8 ef c4
   d8 d d d d g fs ef
   d8ef fs2.

   fs8 fs fs fs fs g ef4
   ef8 ef ef ef ef fs d4
   ef4 d c4 d8 ef
   fs8 ef d2.|
  }

 \break
  \repeat volta 2{
    \mark \default
    d2 d
    ef8 d c b c d(d4)~
    d4 d d8 d d4
    ef8 d c b c ef d4

    bf2 bf
    c8 bf a g a bf g4  %triplet
    c8 bf a g a bf a g
    fs8 g a2.|
  }
  %\break
\repeat volta 2{
    \mark \default
    g8 g g g g ef' d c
    c d c d c bf a g
    bf4 a8 g bf4 a8 g
    cs8 e d2.

    g,8 g g g g ef' d c
    c d c d c bf a g
    bf8 c bf c bf4\trill a8 g
    a8 bf g2.
  }

  \repeat volta 2{
    \mark \default
    d'4 d d d
    d4 d ef4.-> d8
    c8 ef c ef a g fs ef
    fs8 ef d2.

    d8 d' d, d' d, d' d, d'
    d,8 d d d ef4.-> d8
     c8 ef c ef a g fs ef
    fs8 ef d2.
  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
    d4*6 c2:m
    d2*8
    c2*2:m
    d2*2
    %b

    d2*2
    c2:m d2*3
    c2:m d2
    g2*2:m
    d2 g2:m
    d2 g2:m
    d2*2
    %c
    g2*2:m
    c2:m g2*3:m
    a2:7 d2
    g2*2:m
    c2:m g2*5:m
    %d
    d2*4
    c2*2:m
    d2*6
    c2*2:m
    d2


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
    title= "Dem Rebn's Tantz"
    subtitle=""
    composer= ""

    instrument ="Violin"
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