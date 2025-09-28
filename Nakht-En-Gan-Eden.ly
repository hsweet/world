\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \key d \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  \partial 8*3 a8 [ d e ]   %lead in notes

  \repeat volta 2{
    \mark \default
    f4  e8 d
    f4 e8 d
    e8 f d4
    r8 c [f g]

    a4 g8 e
    a4 g8 e
    g8 a f4
    r8 c [f a]

    c4 bf
    a4 g8 f
    f8 [g f e]
    d4. c8

    f8 g4 f8
    \tuplet 3/2{a8 g f} \tuplet 3/2{f e d}

  }
  \alternative {
    {
      d2
      r8 a [d e]
    }
    {
      d2 ~
      d4 ^\markup{\italic Fine}r8 a'

    }
  }

  \repeat volta 2{
    \mark \default
    a8  [d d d]
    d8 a f'16 e d8|
    cs8 [d bf a]
    g4. g8  %20

    fs8 [g a bf]
    cs8 [d cs bf]
    a2~
    a4 \breathe c,

    c8 [f f a]
    c8 [c bf a]
    d8 [g, g g]
    g8 a16 g f8 e

    d4 a'8 f
  }
  \alternative {
    {
      g8[g f f]
      a2
      d4\trill r8 a
    }
    {
      g8 [g f e]
      d2
      r8 a' [bf a]
    }

  }

  \repeat volta 2{
    \break
    \mark \default
    d2 \trill
    r8 a[f e]
    d2
    r8 a'[bf a]

    f'2 ~
    \tuplet 3/2{f8 e d}\tuplet 3/2{cs d e}
    d2
    r8 c[b c]

    d8 [ef d c]
    b8[c bf a]
    b8[c bf a]
    g4. f8

    f8 g4 f8
    \tuplet 3/2{a8 g f}\tuplet 3/2 {f e d}
    d2

  }
  \alternative{
    {r8 a'[bf a]}
    {r8 a,[ d e]}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s8*3
  d2*3:m
  %r2*2
  c2:7
  f2*3
  %r2*2
  c2:7
  f4
  c4:7
  f2
  a2:7
  d4:m
  c4:7
  f2
  a2:7
  d2:m
  a2:7
  %b part
  d2*2:m
  %r2
  d2:7
  g2*2:m
  %r2
  a2:7
  d4*3:m
  %r4
  c4:7
  f2
  f4
  d4:7
  g4*3:m
  %r4
  a4:7
  d2:m
  a2:7 %first end
  d2:m
  g2:m %2nd end
  a2:7
  d4*3:m
  %r4
  a4:7
  %C part
  d4*3:m
  %r4
  a4:7
  d2:m
  a4:7
  d4*3:m
  %r4
  a4:7
  d2*2:m
  %r2
  d2
  f2*2
  %r2
  g2:m
  d2:m
  a2:7
  d4*3:m
  %r4
  a2:7
  d2:m



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
    title= "Nakht In Gan Edyn"
    subtitle="A Night in the Garden of Eden"
    composer= "Harry Kandel's Orchestra"
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
