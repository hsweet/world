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
melody =   \relative c' {
  \clef treble
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 8*3 e8 [ a b ]   %lead in notes

  \repeat volta 2{
    \mark \default
    c4  b8 a
    c4 b8 a
    b8 c a4
    r8 g [c d]

    e4 d8 b
    e4 d8 b
    d8 e c4
    r8 g [c e]

    g4 f
    e4 d8 c
    c8 [d c b]
    a4. g8

    c8 d4 c8
    \tuplet 3/2{e8 d c} \tuplet 3/2{c b a}

  }
  \alternative {
    {
      a2
      r8 e [a b]
    }
    {
      a2 ~
      a4 ^\markup{\italic Fine}r8 e'

    }
  }

  \repeat volta 2{
    \mark \default
    e8  [a a a]
    a8 e c'16 b a8|
    gs8 [a f e]
    d4. d8  %20

    cs8 [d e f]
    gs8 [a gs f]
    e2~
    e4 \breathe g,

    g8 [c c e]
    g8 [g f e]
    a8 [d, d d]
    d8 e16 d c8 b

    a4 e'8 c
  }
  \alternative {
    {
      d8[d c c]
      e2
      a4\trill r8 e
    }
    {
      d8 [d c b]
      a2
      r8 e' [f e]
    }

  }

  \repeat volta 2{
    \break
    \mark \default
    a2 \trill
    r8 e[c b]
    a2
    r8 e'[f e]

    c'2 ~
    \tuplet 3/2{c8 b a}\tuplet 3/2{gs a b}
    a2
    r8 g[fs g]

    a8 [bf a g]
    fs8[g f e]
    fs8[g f e]
    d4. c8

    c8 d4 c8
    \tuplet 3/2{e8 d c}\tuplet 3/2 {c b a}
    a2

  }
  \alternative{
    {r8 e'[f e]}
    {r8 e,[ a b]}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s8*3
  a2*3:m
  %r2*2
  g2:7
  c2*3
  %r2*2
  g2:7
  c4
  g4:7
  c2
  e2:7
  a4:m
  g4:7
  c2
  e2:7
  a2:m
  e2:7
  %b part
  a2*2:m
  %r2
  a2:7
  d2*2:m
  %r2
  e2:7
  a4*3:m
  %r4
  g4:7
  c2
  c4
  a4:7
  d4*3:m
  %r4
  e4:7
  a2:m
  e2:7 %first end
  a2:m
  d2:m %2nd end
  e2:7
  a4*3:m
  %r4
  e4:7
  %C part
  a4*3:m
  %r4
  e4:7
  a2:m
  e4:7
  a4*3:m
  %r4
  e4:7
  a2*2:m
  %r2
  a2
  c2*2
  %r2
  d2:m
  a2:m
  e2:7
  a4*3:m
  %r4
  e2:7
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
    title= "Nakht In Gan Edyn"
    subtitle="A Night in the Garden of Eden"
    composer= "Harry Kandel's Orchestra"
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
