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
  \key c \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}
theme = {r8 c c c
         gs'f r4
         r4 f8 f
         f f f f
         g c, r4

         r4 r8 c
         f8 f f f
         f bf r bf
         gs8 g f g

         bf gs r4
         r1}
%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default
    r8 c c c
    gs'f ~f4~
    f f8 f
    f f f f
    g c,~c4 ~

    c4 r8 c
    f8 f f f
    f bf r bf
    gs8 g f g

    bf8 gs~ gs4~ |
    gs4 r4
  }
 \alternative {
    { r8 c, c c}
    {f4 g  }
  }


  %f8 g
  gs4 gs
  bf bf c gs
  g f8 g
  gs4 g
  f e
  f g
  gs bf \bar"||"

  %yai dai
  c4. b8
  c4. b8
  c4 gs
  g f8 g

  gs4 g
  f e
  f g
  gs bf

  c4. b8
  c4. b8
  c4 gs
  g f8 g

  gs4 g
  f e
  f2
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 s2
 c2*3:m
 g2*3:7
 f2*2:m
 bf4:7 ef4
 s4*2
 %
  c2:m
  f2:m
  c2*2:m
  g2*2:7
  c2*2:m
  %
  c2*4:m
  g2*2:7
  c2*6:m
  g2:7
  c2:m
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
    title= "Der Mashke"
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