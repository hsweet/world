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
melody = \relative c' {
  \clef treble
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a4 c e2~|
    e4 e4 d c
    b8 c r8 d8 (d2)~
    d1

    d4 e f2~
    f4 f e d
    c8 d r8 e8 (e2)~
    e1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    e8 e e e d4 c|
    e8 e e e d4 c
    b4 d2.~
    d1

    f8 f f f e4 d
    f8 f f f e4 d
    c4 e2.~
    e1
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a1:m
  s1
  s2
  d2:m
  s1*3
  s2
  a2:m
  s1
  %b
  a1:m
  s1
  s4
  d2:m
  s1*3
  s2
  a2:m



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
