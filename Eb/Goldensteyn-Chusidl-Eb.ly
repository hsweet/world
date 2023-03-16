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
melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 4/4


  b4 e2.~
  e1
  g8(fs)fs(e) g8(fs)fs(e)
  g8(fs)fs(e) g8(fs)fs(e)|

  b4 ds2.~
  ds2 \tuplet 3/2{fs4 g gs}
  a1~
  a1|

  a8 g g fs a8 g g fs
  a8 g g fs a8 g g fs
  b4 e,2.~
  e2 \tuplet 3/2{ gs4 a as}

  b1~
  b1
  d8 c c b d c c b
  d8 c c b d c c b|

  e4 a,2.~
  a2 \tuplet 3/2{a4 gs g}
  fs4
  b2.~

  b1
  \tuplet 3/2 {b4 a g} \tuplet3/2{fs g a}
  \tuplet 3/2 {b4 a g} \tuplet 3/2 {fs g b,}
  b4 e2.~

  e2 \tuplet 3/2{gs4 a as}
  b1~
  b1
  d8 c c b d c c b

  d8 c c b d c c b|
  e4 a,2.~
  a2 \tuplet 3/2{a4 gs g}
  fs4 b2.~

  b1
  \tuplet 3/2 {b4 a g} \tuplet3/2{fs g a}
  \tuplet 3/2 {b4 a g} \tuplet 3/2 {fs g b,}
  b4 e2.~
  e1

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e1:m
  s1*3
  b1
  s1
  a1:m
  s1*3
  e1:m
  s1
  e1:7
  s1*3
  a1:m
  s1
  b1
  s1*3
  e1:m
  s1
  e1:7
  s1*3
  a1:m
  s1
  b1
  s1*3
  e1:m
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
    title= "Goldenshteyn Chusidl"
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
