\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose d' a \relative c'' {
  \clef treble
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    fs8  a a g
    a8 g fs e
    fs8 d4.~
    d4 r

    fs8 a a g
    a8 [g fs e]
    fs8 d4.~
    d4 r|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    b'4 c
    b4 a
    b8 [a g fs]
    a8 a4.~\(

    b4\) r
    gs8 [a b fs]
    gs8 [f b a]
    e8 e4.~
    e4 r|
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
  Na kraj se -- la
  ca -- da -- va  me -- ha -- na,
  iz nje vi -- ri ko -- sa ne -- ce -- slja -- na
  ca -- da -- va je od di -- ma i pi -- ca,
  to je ku -- ca se -- o -- skih
  mia -- di -- ca
}
%################################# Chords #######################
harmonies = \transpose d' a\chordmode {
  d2
  a2
  d2
  s2*2
  a2
  d2
  s2

  %b part
  g4
  d4:7
  g4
  d4
  g2
  d2
  s2
  d2:m6
  e2:7
  a2
  s2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Na Kraj Sela Cadava Mehana"
    subtitle=""
    composer= ""
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
