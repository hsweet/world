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
  \key a \minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 2   r8 e a b   %lead in notes

  \repeat volta 2{
    %\mark \default
  c8 a4.(a8) e a b
  c8 a4.(a8) e a b
  c4 b8 a c4 b8 a
  e'4 e e8 e d e

  f8 f4.(f8) f e d
  f8 e4. (e8) e d c
  b4 e c b

  }
  \alternative {
    {a2 r8 e a b }
    { a2 r}
  }


}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
  U -- na mat -- ti -- na mi so -- no al -- za -- to
  O bel -- la ciao, bel -- la ciao, bel -- la ciao, ciao, ciao
  U -- na mat -- ti -- na mi so -- no al -- za -- to
  E ho tro -- va -- to l'in -- va -- sor
}
%################################# Chords #######################
harmonies = \chordmode {
  s2
  a2*5:m
  g2
  f2 e2
  d1:m
  a1:m
  e1
  a1:m
  a1:m
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
    title= "Bella Ciao"
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