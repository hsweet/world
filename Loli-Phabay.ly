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
melody = \relative c' {
  \clef treble
  \key d \minor
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes

  %{
   \repeat volta 2{
    b16  a gs f  gs f e d  gs f e d e8 d
    b'16 a gs f  gs f e d  gs f e d d8 d
  %}

  

  a'8. a16 a8 d,  g8. a16  bf8 a~
  a2 g8. g16 g8 c bf8. a16 g8 e f2|
  g8. g16 g8 g a8. a16 f8 d |
  e8-. e8-. e8-. r ds8. ds16 e8 a  |

  g8. f16 e8 cs  d8-. d-. d-. r|
  f8. g16 a8 a  bf8. a16 f8 d |
  e8-. e-. e-. r ds8. ds16 e8 a |
  g8. f16 e8 cs d8-. d-. d-. r


}
%################################# Lyrics #####################
\addlyrics{
  %\repeat unfold 28 \skip1
  And -- ro ver -- dan dru -- kos na -- ne
  Mi pir -- a -- ni shu -- kar na -- ne \skip1

  Lo- li pha -- baj pre -- chi -- na -- va hop hop hop
  Ye -- pas tu -- ke ye -- pas man -- ge hop hop hop!

  Laj la la laj laj la lal laj hop hop hop
  Ye -- pas tu -- ke ye -- pas man -- ge hop hop hop!

}
%{}



%}
%################################# Chords #######################
harmonies = \chordmode {
  %d1 s1 %dummy chords for first section
  %after intro
  d2:m
  g2:m
  d2:m c2
  s2
  f2
  g2:m
  d2:m
  a2:7
  s1
  d2:m
  d2:m  %9
  g2:m
  a2*3:7
  d2:m
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
    title= "Loli Phabaj"
    subtitle="Hop Hop Hop"
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
