\version "2.18.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \relative c {
  \clef treble
  \key g \minor
  \time 4/4


  d4 g2.~
  g1
  bf8(a)a(g) bf8(a)a(g)
  bf8(a)a(g) bf8(a)a(g)|

  d4 fs2.~
  fs2 \tuplet 3/2{a4 bf b}
  c1~
  c1|

  c8 bf bf a c8 bf bf a
  c8 bf bf a c8 bf bf a
  d4 g,2.~
  g2 \tuplet 3/2{ b4 c cs}

  d1~
  d1
  f8 ef ef d f ef ef d
  f8 ef ef d f ef ef d|

  g4 c,2.~
  c2 \tuplet 3/2{c4 b bf}
  a4
  d2.~

  d1
  \tuplet 3/2 {d4 c bf} \tuplet3/2{a bf c}
  \tuplet 3/2 {d4 c bf} \tuplet 3/2 {a bf d,}
  d4 g2.~

  g2 \tuplet 3/2{b4 c cs}
  d1~
  d1
  f8 ef ef d f ef ef d

  f8 ef ef d f ef ef d|
  g4 c,2.~
  c2 \tuplet 3/2{c4 b bf}
  a4 d2.~

  d1
  \tuplet 3/2 {d4 c bf} \tuplet3/2{a bf c}
  \tuplet 3/2 {d4 c bf} \tuplet 3/2 {a bf d,}
  d4 g2.~
  g1

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g1:m
  s1*3
  d1
  s1
  c1:m
  s1*3
  g1:m
  s1
  g1:7
  s1*3
  c1:m
  s1
  d1
  s1*3
  g1:m
  s1
  g1:7
  s1*3
  c1:m
  s1
  d1
  s1*3
  g1:m
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Goldenshteyn Chusidl"
    subtitle=""
    composer= ""
    instrument = "Eb"
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
