\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
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
  \key c \major
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes


  c8    b a gs  a e(e4)|
  a4 c b16 a8. (a4)|
  e2 e
  c'8 b a gs  a e(e4)|

  a4 c b16 a8.(a4)|  % b16 a8 does not add up to 1/4
  e2 d
  a'8 b c d e4 a
  b8 a g f e d(d4)|

  g4  e8 e e16 d8. (d4)|
  a2 <a a,>
  a8 b c d e4 a
  b8 a g f e d(d4)|

  g4  e8 e e16 d8. (d4)|
  a2 <a a,>
  \break

  %\alternative { { }{ } }

  \repeat volta 2{
    a8 ^\markup   "Int 1" e a e a e a e|
    a e a e a e <a c> <a c >
    <c e>1
    <b d>1 | \break
  }
  % \alternative { { }{ } }

  e,8 ^"Int 2"a(a2.)~ |
  a4 a8 b \tuplet 3/2{c4 b a}|
  c1
  b1

  e,8 a(a2.)~
  a4 a8 b \tuplet 3/2{<c e>4 <b d> <a c>}
  <c e>1
  <b d>1|



}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a1:m
  s1
  c1
  a1:m
  s1
  c2
  d2
  a1:m
  g1
  c2
  e2
  a1:m %10
  s1
  g1
  c2
  e2
  a1:m
  %Int1
  a1:m
  s1
  c1
  e1
  %Int2
  a1:m
  s1
  c1
  e1
  a1:m
  s1
  c1
  e1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
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
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
