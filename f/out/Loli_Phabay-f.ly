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
  \key a \minor
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes

  %{
   \repeat volta 2{
    b16  a gs f  gs f e d  gs f e d e8 d
    b'16 a gs f  gs f e d  gs f e d d8 d
  %}

  

  e8. e16 e8 a,  d8. e16  f8 e~
  e2 d8. d16 d8 g f8. e16 d8 b c2|
  d8. d16 d8 d e8. e16 c8 a |
  b8-. b8-. b8-. r as8. as16 b8 e  |

  d8. c16 b8 gs  a8-. a-. a-. r|
  c8. d16 e8 e  f8. e16 c8 a |
  b8-. b-. b-. r as8. as16 b8 e |
  d8. c16 b8 gs a8-. a-. a-. r


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
  a2:m
  d2:m
  a2:m g2
  s2
  c2
  d2:m
  a2:m
  e2:7
  s1
  a2:m
  a2:m  %9
  d2:m
  e2*3:7
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
