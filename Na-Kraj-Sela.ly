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
melody = \transpose f c \relative c'' {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a8  c c bf
    c8 bf a g
    a8 f4.~
    f4 r

    a8 c c bf
    c8 [bf a g]
    a8 f4.~
    f4 r|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    d'4 ef
    d4 c
    d8 [c bf a]
    c8 c4.~\(

    d4\) r
    b8 [c d a]
    b8 [af d c]
    g8 g4.~
    g4 r|
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
harmonies = \transpose f c\chordmode {
  f2
  c2
  f2
  s2*2
  c2
  f2
  s2

  %b part
  bf4
  f4:7
  bf4
  f4
  bf2
  f2
  s2
  f2:m6
  g2:7
  c2
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
