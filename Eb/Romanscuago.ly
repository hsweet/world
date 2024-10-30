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

\markup{ C section not written }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e8->  e ds e
    s2
    e8-> e ds e
    s2

    d4 d8 d
    e4. e8
    a,2~
    a2
    \break
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    f'8-.  [f-. f-. g-.]
    a8-. [a-. g-. f-.]
    a4 e~
    e4 e

    e8 [e e e ] %was [f e e e]
    f4 e
    \glissando c'2~
    c2

    f,8-.  [f-. f-. g-.]
    a8-. a-. g-. f-.
    a4 e~
    e4 f8 e

    e4 e %d4 d
    e4 e
    a,2~
    a2
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2:m s2*3
  d2:m
  e2
  a2:m s2
  %b
  d2:m s2
  a2:m s2
  e2 s2
  a2:m s2
  d2:m s2*2
  a2:m s2
  e2
  a2:m

  %{old chords
   a2:m
    s2*3
    d2:m
    e2
    a2
    s2
    %b part
    d2:m
    s2
    a2
    s2*3
    f2
    s2
    d2:m
    s2*2
    a2:m
    s2
    e2
    a2:m
  %}

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
    title= "Romanscuago"
    subtitle=""
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
