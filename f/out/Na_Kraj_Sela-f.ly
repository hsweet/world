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
melody = \transpose c g, \relative c' {
  \clef treble
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e8  g g f
    g8 f e d
    e8 c4.~
    c4 r

    e8 g g f
    g8 [f e d]
    e8 c4.~
    c4 r|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    a'4 bf
    a4 g
    a8 [g f e]
    g8 g4.~\(

    a4\) r
    fs8 [g a e]
    fs8 [ef a g]
    d8 d4.~
    d4 r|
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
harmonies = \transpose c g,\chordmode {
  c2
  g2
  c2
  s2*2
  g2
  c2
  s2

  %b part
  f4
  c4:7
  f4
  c4
  f2
  c2
  s2
  c2:m6
  d2:7
  g2
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
