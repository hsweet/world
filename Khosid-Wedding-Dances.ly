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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 16*3 c16 f g   %lead in notes

  \repeat volta 2{
  \mark \default
    a8 f c f
    a8 a4 a8|
    bf8 [a g f]
    a8  f  g8. f16|

    a8 f c f
    a8 a4 a8|
    bf8 [a g f]


  }
  \alternative { { f2 }{ f4. gs8 } }
  \break
  \repeat volta 2{
  \mark \default
    a8 a gs4
    f16 g g f f4
    f16 g g f f8 e
    d16 e f gs a8. gs16|

    a8 a gs4
    f16 g g f f4
    f16 g g f f8 e
  }
  \alternative {
    {d8 d4 gs8 }
    {d8 d r16 c f g}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s16*3
  f2*6
  c2:7
  f2
  f2
  %{
  c2*6:7
  a2:7
  f2
  e2:7
  %}

  %b
  d2*6:m
  a2:7
  d2:m
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
    instrument = "Violin"
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
