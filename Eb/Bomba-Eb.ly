\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ Harmony 6th below  }

%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b4 d fs2~|
    fs4 fs4 e d
    cs8 d r8 e8 (e2)~
    e1

    e4 fs g2~
    g4 g fs e
    d8 e r8 fs8 (fs2)~
    fs1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    fs8 fs fs fs e4 d|
    fs8 fs fs fs e4 d
    cs4 e2.~
    e1

    g8 g g g fs4 e
    g8 g g g fs4 e
    d4 fs2.~
    fs1
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b1:m
  s1
  s2
  e2:m
  s1*3
  s2
  b2:m
  s1
  %b
  b1:m
  s1
  s4
  e2:m
  s1*3
  s2
  b2:m



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
    title= "Bomba"
    subtitle="Rom"
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
