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
  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

   b2 fs'~
   fs4 fs8 fs fs4 e8 fs
   g1~
   g2. r8 b,8|

   b2 e2~
   e4 e8 e e4 d8 cs
   b1~
   b2 r4 r8 b'8

   b2 fs2~
   fs4 fs8 g a4 g8 fs
   e1~
   e2 r4 r8 fs8fs2 cs2~
   cs4 cs8 d e4 d8 cs
   b1~
   b2. r8 b'
   b2 fs2~
   fs4 fs8 g a4 g8 fs
   e1~
   e2. r8 fs
   fs2 cs~
   cs4 cs8 d e4 d8 cs
   d4  b2.~
   b4 d8 e fs4 e8 d


  \repeat volta 2{

    fs1~
    fs4d8 e fs4 e8 d|
    e1~
    e4 cs8 d e4 d8 cs|

   g1 ~
   g4 fs8 as cs g' fs e
   d1-4~
   d4 d8e fs4 e8 d

   fs1~
   fs4-1 ds8-1 fs a c b a
   g1~
   g4 g8 a b4 a8 g

   fs4 -1 d8 e fs4 e8 d|
   e4 cs8 d e4 d8 cs
  }
  \alternative {
    { fs1~
    fs4 d8 e f e8 d
    }
    { e4 cs8 d e4 fs8 fs
    b2. r4}
  }

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
    title= "Vi Ahin Zol Ich Geyn"
    subtitle="װוּ אַהין זאָל איך גײן?"
    composer= ""\version "2.22.2"

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