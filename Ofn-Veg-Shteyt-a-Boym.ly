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
  \key c \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
 c8 c g'2
  | % 2
  f8 f ef2
  | % 3
  f8 f ef4. d8
  | % 4
  d4 ef2
  | % 5
  c8 c g' g4.
  | % 6
  f8 f ef2
  | % 7
  f8 f ef4. d8
  | % 8
  d4 c2
  | % 9
  c8 c g'2
  | % 10
  f8 f ef2
  | % 11
  f8 f ef4. d8
  | % 12
  d4 ef2
  | % 13
  c8 c g' g4.
  | % 14
  f8 f ef2
  | % 15
  f8 f ef4. d8
  | % 16
  d4 c2
  | % 17
  bf'8 bf c4. c8
  | % 18
  bf bf ef,2
  | % 19
  bf'4. af8 bf af
  | % 20
  af4 g2
  | % 21
  bf8 bf c4. bf8
  | % 22
  ef d c2
  | % 23
  bf4. af8 bf af
  | % 24
  af4 g2
  | % 25
  ef8 g bf4. g8
  | % 26
  g f f2
  | % 27
  g8 ef ef4 c
  | % 28
  c bf2
  | % 29
  ef8 d f4 ef
  | % 30
  gf8 f f2
  | % 31
  ef4. d8 d c
  | % 32
  c2.
  | % 33
  c4 g'8 f f ef
  | % 34
  ef f f ef ef d
  | % 35
  d ef ef d d c
  | % 36
  c ef d f ef4
  | % 37
  c g'8 f f ef
  | % 38
  ef f f ef ef d
  | % 39
  d ef ef d d c
  | % 40
  c2.
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
    composer= "Itzak Manger"

    instrument = "Violin"
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