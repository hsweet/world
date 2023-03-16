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
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 8*3 fs8 [ b cs ]   %lead in notes

  \repeat volta 2{
    \mark \default
    d4  cs8 b
    d4 cs8 b
    cs8 d b4
    r8 a [d e]

    fs4 e8 cs
    fs4 e8 cs
    e8 fs d4
    r8 a [d fs]

    a4 g
    fs4 e8 d
    d8 [e d cs]
    b4. a8

    d8 e4 d8
    \tuplet 3/2{fs8 e d} \tuplet 3/2{d cs b}

  }
  \alternative {
    {
      b2
      r8 fs [b cs]
    }
    {
      b2 ~
      b4 ^\markup{\italic Fine}r8 fs'

    }
  }

  \repeat volta 2{
    \mark \default
    fs8  [b b b]
    b8 fs d'16 cs b8|
    as8 [b g fs]
    e4. e8  %20

    ds8 [e fs g]
    as8 [b as g]
    fs2~
    fs4 \breathe a,

    a8 [d d fs]
    a8 [a g fs]
    b8 [e, e e]
    e8 fs16 e d8 cs

    b4 fs'8 d
  }
  \alternative {
    {
      e8[e d d]
      fs2
      b4\trill r8 fs
    }
    {
      e8 [e d cs]
      b2
      r8 fs' [g fs]
    }

  }

  \repeat volta 2{
    \break
    \mark \default
    b2 \trill
    r8 fs[d cs]
    b2
    r8 fs'[g fs]

    d'2 ~
    \tuplet 3/2{d8 cs b}\tuplet 3/2{as b cs}
    b2
    r8 a[gs a]

    b8 [c b a]
    gs8[a g fs]
    gs8[a g fs]
    e4. d8

    d8 e4 d8
    \tuplet 3/2{fs8 e d}\tuplet 3/2 {d cs b}
    b2

  }
  \alternative{
    {r8 fs'[g fs]}
    {r8 fs,[ b cs]}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s8*3
  b2*3:m
  %r2*2
  a2:7
  d2*3
  %r2*2
  a2:7
  d4
  a4:7
  d2
  fs2:7
  b4:m
  a4:7
  d2
  fs2:7
  b2:m
  fs2:7
  %b part
  b2*2:m
  %r2
  b2:7
  e2*2:m
  %r2
  fs2:7
  b4*3:m
  %r4
  a4:7
  d2
  d4
  b4:7
  e4*3:m
  %r4
  fs4:7
  b2:m
  fs2:7 %first end
  b2*2:m
  %r2
  e4:m %2nd end
  fs4:7
  b4*3:m
  %r4
  fs4:7
  %C part
  b4*3:m
  %r4
  fs4:7
  b2:m
  fs4:7
  b4*3:m
  %r4
  fs4:7
  b2*2:m
  %r2
  b2
  d2*2
  %r2
  e2:m
  b2:m
  fs2:7
  b4*3:m
  %r4
  fs4:7



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
