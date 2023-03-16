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
  \key fs \minor
  \time 4/4

  cs4 fs gs8 a gs fs
  cs8 b4. fs2->
  fs4-> r r2

  cs'4 fs gs8 a b a
  gs8 fs4. cs2->
  cs4-> r r2|

  cs4 fs gs8 a b a
  gs8 fs4. e2->
  \time 2/4
  fs4-> r \fermata

  \time 4/4
  cs4 fs gs8 a gs fs
  cs8 b4. fs2->
  fs4-> r r2

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  fs2:m
  e2
  cs2:7
  fs2:m
  r2*3
  b2:7
  d2
  a2
  cs1
  fs2:m
  d2
  r2
  a2
  d2
  a4
  fs4:m
  e2
  cs2:7
  fs2:m
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
