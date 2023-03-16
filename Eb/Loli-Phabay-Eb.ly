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
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes

  %{
   \repeat volta 2{
    b16  a gs f  gs f e d  gs f e d e8 d
    b'16 a gs f  gs f e d  gs f e d d8 d
  %}

  

  fs8. fs16 fs8 b,  e8. fs16  g8 fs~
  fs2 e8. e16 e8 a g8. fs16 e8 cs d2|
  e8. e16 e8 e fs8. fs16 d8 b |
  cs8-. cs8-. cs8-. r bs8. bs16 cs8 fs  |

  e8. d16 cs8 as  b8-. b-. b-. r|
  d8. e16 fs8 fs  g8. fs16 d8 b |
  cs8-. cs-. cs-. r bs8. bs16 cs8 fs |
  e8. d16 cs8 as b8-. b-. b-. r


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
  b2:m
  e2:m
  b2:m a2
  s2
  d2
  e2:m
  b2:m
  fs2:7
  s1
  b2:m
  b2:m  %9
  e2:m
  fs2*3:7
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
