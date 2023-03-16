\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Int 1 & 2 can play as harmony parts }

%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes


  g8    fs e ds  e b(b4)|
  e4 g fs16 e8. (e4)|
  b2 b
  g'8 fs e ds  e b(b4)|

  e4 g fs16 e8.(e4)|  % b16 a8 does not add up to 1/4
  b2 a
  e'8 fs g a b4 e
  fs8 e d c b a(a4)|

  d4  b8 b b16 a8. (a4)|
  e2 <e e,>
  e8 fs g a b4 e
  fs8 e d c b a(a4)|

  d4  b8 b b16 a8. (a4)|
  e2 <e e,>
  \break

  %\alternative { { }{ } }

  \repeat volta 2{
    e8 ^\markup   "Int 1" b e b e b e b|
    e b e b e b <e g> <e g >
    <g b>1
    <fs a>1 | \break
  }
  % \alternative { { }{ } }

  b,8 ^"Int 2"e(e2.)~ |
  e4 e8 fs \tuplet 3/2{g4 fs e}|
  g1
  fs1

  b,8 e(e2.)~
  e4 e8 fs \tuplet 3/2{<g b>4 <fs a> <e g>}
  <g b>1
  <fs a>1|



}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e1:m
  rs1
  g1
  e1:m
  s1
  g2
  a2
  e1:m
  d1
  g2
  b2
  e1:m %10
  s1
  d1
  g2
  b2
  e1:m
  %Int1
  e1:m
  s1
  g1
  b1
  %Int2
  e1:m
  s1
  g1
  b1
  e1:m
  s1
  g1
  b1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      #(set-paper-size "letter")
      #(set-paper-size "letter")
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Ljubav"
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
