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
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 16*3 g16 c d   %lead in notes

  \repeat volta 2{
  \mark \default
    e8 c g c
    e8 e4 e8|
    f8 [e d c]
    e8  c  d8. c16|

    e8 c g c
    e8 e4 e8|
    f8 [e d c]


  }
  \alternative { { c2 }{ c4. ds8 } }
  \break
  \repeat volta 2{
  \mark \default
    e8 e ds4
    c16 d d c c4
    c16 d d c c8 b
    a16 b c ds e8. ds16|

    e8 e ds4
    c16 d d c c4
    c16 d d c c8 b
  }
  \alternative {
    {a8 a4 ds8 }
    {a8 a r16 g c d}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s16*3
  c2*6
  g2:7
  c2
  c2
  %{
  c2*6:7
  a2:7
  f2
  e2:7
  %}

  %b
  a2*6:m
  e2:7
  a2:m
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
    title= "Khosid Wedding Dances"
    subtitle="Chassid Lakodalmi Tancok כסדל"
    composer= ""
    instrument =""
    arranger= "Musikas"
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
