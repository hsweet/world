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


  a4 d2.~
  d1
  f8(e)e(d) f8(e)e(d)
  f8(e)e(d) f8(e)e(d)|

  a4 cs2.~
  cs2 \tuplet 3/2{e4 f fs}
  g1~
  g1|

  g8 f f e g8 f f e
  g8 f f e g8 f f e
  a4 d,2.~
  d2 \tuplet 3/2{ fs4 g gs}

  a1~
  a1
  c8 bf bf a c bf bf a
  c8 bf bf a c bf bf a|

  d4 g,2.~
  g2 \tuplet 3/2{g4 fs f}
  e4
  a2.~

  a1
  \tuplet 3/2 {a4 g f} \tuplet3/2{e f g}
  \tuplet 3/2 {a4 g f} \tuplet 3/2 {e f a,}
  a4 d2.~

  d2 \tuplet 3/2{fs4 g gs}
  a1~
  a1
  c8 bf bf a c bf bf a

  c8 bf bf a c bf bf a|
  d4 g,2.~
  g2 \tuplet 3/2{g4 fs f}
  e4 a2.~

  a1
  \tuplet 3/2 {a4 g f} \tuplet3/2{e f g}
  \tuplet 3/2 {a4 g f} \tuplet 3/2 {e f a,}
  a4 d2.~
  d1

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d1:m
  s1*3
  a1
  s1
  g1:m
  s1*3
  d1:m
  s1
  d1:7
  s1*3
  g1:m
  s1
  a1
  s1*3
  d1:m
  s1
  d1:7
  s1*3
  g1:m
  s1
  a1
  s1*3
  d1:m
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
    title= "Goldenshteyn Chusidl"
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
