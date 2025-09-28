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
  \partial 4*2 d4 d    %lead in notes

  \repeat volta 2{
    \mark \default
    bf'2 g4 g
    a2 fs4 fs
    \times 2/3{g4 g g} fs4 ef
    d2 r4 d
    d4 fs ef d
    fs4 a g fs
  }
  \alternative {
    { g4 g fs g
    a2 d,4 d}
    {g4 c,d ef
    d2. r4}
  }

  \repeat volta 2{
    \mark \default
    fs4  fs fs2
    g4 g g2
    fs4 g a bf
    a4 g a2
    fs4 fs fs2
    g4 g g2
    g4 c,d ef
    d2. r4

  }
  \alternative {
    { }
    { }
  }

}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
  Vos vet zayn? Vos vet zayn
  Az mos -- hi -- ach vet kimen tsu gayn

  Ge -- bro- tene toy -- bn vet men kloy -- bn oy -- fn ga -- sn breg

  _ _ _ _  _ _ _ Fin pa- pir ve- ln mir bo- yen, bo- yen oy a brik
  Kat- shn zik, kat- shn zik ind- zer land tze- rik. ind- zer land tze- rik.
}
%################################# Chords #######################
harmonies = \chordmode {
  s2
  g1:m
  d1:7
  c1:m
  d1
  d1:7
  c1:m
  g1:m
  d1
  g1:m
  d1
  %
  d1:7
  g1:m
  d1:7
  g1:m
   d1:7
  g1:m
  d1:7
  g1:m

}

\score {
  % transpose score below
  \transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Vos Vet Zayn"
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