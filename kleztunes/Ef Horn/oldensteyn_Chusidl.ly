\version "2.12.2"
\include "english.ly"
\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ "Sheet 3 | Updated " \date }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
%melody =  \transpose c d \transpose c a \relative c' {  %transpose for clarinet
melody = \transpose c a \relative c'' {
  \clef treble
  \key d \minor
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    d ^\markup { \box A}

  }
  %\alternative { { }{ } }

  \repeat volta 2{
    d ^\markup { \box B}
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose c a \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
  #(set-paper-size "letter")
      \harmonies
    }
    \new Staff \with {
      instrumentName = "Ef Horn"} \melody
  >>
  \header{
    title= ""
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{ }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment  120 4)
    }

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