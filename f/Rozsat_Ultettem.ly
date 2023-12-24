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

\markup{ Faster on instrumentals}

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key a \minor
  \time 4/4

  e4 a b8 c b a
  e8 d4. a2->
  a4-> r r2

  e'4 a b8 c d c
  b8 a4. e2->
  e4-> r r2|

  e4 a b8 c d c
  b8 a4. g2->
  \time 2/4
  a4-> r \fermata

  \time 4/4
  e4 a b8 c b a
  e8 d4. a2->
  a4-> r r2

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2:m
  g2
  e2:7
  a2:m
  r2*3
  d2:7
  f2
  c2
  e1
  a2:m
  f2
  r2
  c2
  f2
  c4
  a4:m
  g2
  e2:7
  a2:m
  r2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Rözat Ültettem a Gyalogútra"
    subtitle=""
    composer= ""
    instrument = "F Horn"
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
