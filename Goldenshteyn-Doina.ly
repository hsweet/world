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
melody = \transpose g d\relative c'' {
  \clef treble
  \key g \minor
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes

  d4  \glissando g2.-1 ~
  g1
  bf8-3(a)a(g)bf8(a)a(g)
  bf8(a)a(g)bf8(a)a(g)|

  d4 fs2. ~
  fs2 \tuplet 3/2 {a4 bf b}|
  c1~
  c1

  c8 bf bf a c bf bf a
  c8 bf bf a c bf bf a
  d4 g,2.|
  g2 \tuplet 3/2{b4 c cs}
  %a b d a bf d

  d1-1 ~
  d1
  f8-3 ef ef d f ef ef d
  f8 ef ef d f ef ef d

  g4-4 c,2. ~
  c2 \tuplet 3/2{c4 b bf}|  %18
  a4 d2. ~
  d1

  \tuplet 3/2 {d4 c bf} \tuplet 3/2 {a4 bf c}
  \tuplet 3/2 {d4 c bf} \tuplet 3/2{a bf d,} %22 a b d=>a bf d
  d4 g2. ~
  g2 \tuplet 3/2{b4 c cs}

  d1-1 ~
  d1
  f8-3 ef ef d f ef ef d
  f8 ef ef d f ef ef d

  g4-4 c,2. ~
  c2 \tuplet 3/2{c4 b bf}|
  a4 d2. ~
  d1

  \tuplet 3/2 {d4 c bf} \tuplet 3/2 {a4 bf c}
  \tuplet 3/2 {d4 c bf} \tuplet 3/2{a bf d,} %a b d=>a bf d
  d4 g2. ~
  g1



}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies =\transpose g d \chordmode {
  g1*4:m

  d1*2

  c1*4:m


  g1*5:m


  %g1*4:7  %removed extra measure

  c1*2:m

  d1*4

  g1*2:m

  g1*4:7

  c1*2:m

  d1*4

  g1:m
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
    title= "Goldenshteyn Doina"
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
