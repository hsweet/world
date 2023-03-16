\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ C section not written }

%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b8->  b as b
    s2
    b8-> b as b
    s2

    a4 a8 a
    b4. b8
    e,2~
    e2
    \break
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    c'8-.  [c-. c-. d-.]
    e8-. [e-. d-. c-.]
    e4 b~
    b4 b

    b8 [b b b ] %was [f e e e]
    c4 b
    \glissando g'2~
    g2

    c,8-.  [c-. c-. d-.]
    e8-. e-. d-. c-.
    e4 b~
    b4 c8 b

    b4 b %d4 d
    b4 b
    e,2~
    e2
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e2:m s2*3
  a2:m
  b2
  e2:m s2
  %b
  a2:m s2
  e2:m s2
  b2 s2
  e2:m s2
  a2:m s2*2
  e2:m s2
  b2
  e2:m

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
    title= "Romanscuago"
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
