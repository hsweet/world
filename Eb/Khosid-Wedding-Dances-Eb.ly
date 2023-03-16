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
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 16*3 a16 d e   %lead in notes

  \repeat volta 2{
  \mark \default
    fs8 d a d
    fs8 fs4 fs8|
    g8 [fs e d]
    fs16 e d fs e8. d16|

    fs8 d a d
    fs8 fs4 fs8|
    g8 [fs e d]


  }
  \alternative { { d2 }{ d4. es8 } }
  \break
  \repeat volta 2{
  \mark \default
    fs8 fs es4
    d16 e e d d4
    d16 e e d d8 cs
    b16 cs d es fs8. es16|

    fs8 fs es4
    d16 e e d d4
    d16 e e d d8 cs
  }
  \alternative {
    {b8 b4 es8 }
    {b8 b r16 a d e}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s16*3
  b2*6:m
  %r2*5
  fs2:7
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
