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
melody = \transpose e' b\relative c'' {
  \clef treble
  \key e \minor
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes

  b4  \glissando e2.-1 ~
  e1
  g8-3(fs)fs(e)g8(fs)fs(e)
  g8(fs)fs(e)g8(fs)fs(e)|

  b4 ds2. ~
  ds2 \tuplet 3/2 {fs4 g gs}|
  a1~
  a1

  a8 g g fs a g g fs
  a8 g g fs a g g fs
  b4 e,2.|
  e2 \tuplet 3/2{gs4 a as}
  %a b d a bf d

  b1-1 ~
  b1
  d8-3 c c b d c c b
  d8 c c b d c c b

  e4-4 a,2. ~
  a2 \tuplet 3/2{a4 gs g}|  %18
  fs4 b2. ~
  b1

  \tuplet 3/2 {b4 a g} \tuplet 3/2 {fs4 g a}
  \tuplet 3/2 {b4 a g} \tuplet 3/2{fs g b,} %22 a b d=>a bf d
  b4 e2. ~
  e2 \tuplet 3/2{gs4 a as}

  b1-1 ~
  b1
  d8-3 c c b d c c b
  d8 c c b d c c b

  e4-4 a,2. ~
  a2 \tuplet 3/2{a4 gs g}|
  fs4 b2. ~
  b1

  \tuplet 3/2 {b4 a g} \tuplet 3/2 {fs4 g a}
  \tuplet 3/2 {b4 a g} \tuplet 3/2{fs g b,} %a b d=>a bf d
  b4 e2. ~
  e1



}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies =\transpose e' b \chordmode {
  e1*4:m

  b1*2

  a1*4:m


  e1*5:m


  %g1*4:7  %removed extra measure

  a1*2:m

  b1*4

  e1*2:m

  e1*4:7

  a1*2:m

  b1*4

  e1:m
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
    title= "Goldenshteyn Doina"
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
