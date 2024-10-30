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

\markup{ Harmony 6th below  }

%#################################### Melody ########################
melody = \relative c {
  \clef treble
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    d4 f a2~|
    a4 a4 g f
    e8 f r8 g8 (g2)~
    g1

    g4 a bf2~
    bf4 bf a g
    f8 g r8 a8 (a2)~
    a1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    a8 a a a g4 f|
    a8 a a a g4 f
    e4 g2.~
    g1

    bf8 bf bf bf a4 g
    bf8 bf bf bf a4 g
    f4 a2.~
    a1
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d1:m
  s1
  s2
  g2:m
  s1*3
  s2
  d2:m
  s1
  %b
  d1:m
  s1
  s4
  g2:m
  s1*3
  s2
  d2:m



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
    title= "Bomba"
    subtitle="Rom"
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
