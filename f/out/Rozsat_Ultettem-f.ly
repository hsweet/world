\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ Faster on instrumentals}

%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 4/4

  b4 e fs8 g fs e
  b8 a4. e2->
  e4-> r r2

  b'4 e fs8 g a g
  fs8 e4. b2->
  b4-> r r2|

  b4 e fs8 g a g
  fs8 e4. d2->
  \time 2/4
  e4-> r \fermata

  \time 4/4
  b4 e fs8 g fs e
  b8 a4. e2->
  e4-> r r2

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e2:m
  d2
  b2:7
  e2:m
  r2*3
  a2:7
  c2
  g2
  b1
  e2:m
  c2
  r2
  g2
  c2
  g4
  e4:m
  d2
  b2:7
  e2:m
  r2
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
    title= "Rözat Ültettem a Gyalogútra"
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
