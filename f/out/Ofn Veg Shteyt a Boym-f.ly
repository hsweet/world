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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
 g8 g d'2
  | % 2
  c8 c bf2
  | % 3
  c8 c bf4. a8
  | % 4
  a4 bf2
  | % 5
  g8 g d' d4.
  | % 6
  c8 c bf2
  | % 7
  c8 c bf4. a8
  | % 8
  a4 g2
  | % 9
  g8 g d'2
  | % 10
  c8 c bf2
  | % 11
  c8 c bf4. a8
  | % 12
  a4 bf2
  | % 13
  g8 g d' d4.
  | % 14
  c8 c bf2
  | % 15
  c8 c bf4. a8
  | % 16
  a4 g2
  | % 17
  f'8 f g4. g8
  | % 18
  f f bf,2
  | % 19
  f'4. ef8 f ef
  | % 20
  ef4 d2
  | % 21
  f8 f g4. f8
  | % 22
  bf a g2
  | % 23
  f4. ef8 f ef
  | % 24
  ef4 d2
  | % 25
  bf8 d f4. d8
  | % 26
  d c c2
  | % 27
  d8 bf bf4 g
  | % 28
  g f2
  | % 29
  bf8 a c4 bf
  | % 30
  df8 c c2
  | % 31
  bf4. a8 a g
  | % 32
  g2.
  | % 33
  g4 d'8 c c bf
  | % 34
  bf c c bf bf a
  | % 35
  a bf bf a a g
  | % 36
  g bf a c bf4
  | % 37
  g d'8 c c bf
  | % 38
  bf c c bf bf a
  | % 39
  a bf bf a a g
  | % 40
  g2.
  | % 41

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {

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
    title= "Ofn Veg Shteyt  A Boym"
    subtitle=""
    composer= "Itzak Manger"\version "2.22.2"

    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
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