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
  \key e \minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  e,2 b'~
  b4 b8 b b4 a8 b
  c1~
  c2. r8 e,8|

  e2 a2~
  a4 a8 a a4 g8 fs
  e1~
  e2 r4 r8 e'8

  e2 b2~
  b4 b8 c d4 c8 b
  a1~
  a2 r4 r8 b8b2 fs2~
  fs4 fs8 g a4 g8 fs
  e1~
  e2. r8 e'
  e2 b2~
  b4 b8 c d4 c8 b
  a1~
  a2. r8 b
  b2 fs~
  fs4 fs8 g a4 g8 fs
  g4  e2.~
  e4 g8 a b4 a8 g


  \repeat volta 2{

    b1~
    b4g8 a b4 a8 g|
    a1-3~
    a4 fs8-1 g-2 a4-3 g8-2 fs-1|

    c1-2 ~
    c4 b8-1 ds-3 fs-1 c' b a
    g1~
    g4 g8a b4 a8 g

    b1~
    b4-1 gs8-1 b d f e d
    c1~
    c4 c8 d e4 d8 c

    b4 -1 g8 a b4 a8 g|
    a4 fs8 g a4 g8 fs
  }
  \alternative {
    {
      b1~
      b4 g8 a bf4 a8 g
    }
    {
      a4 fs8 g a4 b8 b
      e2. r4
    }
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
    composer= ""

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