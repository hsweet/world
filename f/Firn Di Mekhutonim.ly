\version "2.20.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key g \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
end = {
  \times 2/3 {ef16 d c} %8

  d8. fs16 a[g]
  fs8. a16 c[bf]
  a8. c16 ef[d]
  c8. bf16 a [g]

  fs8. g16 a [g]
  fs8. ef16 d [c]
  d8. d'16 a[fs]
}

melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default
    fs4 \times 2/3 {ef16 d c}
    d4.~
    d8 bf' a
    g8. g16 fs [a]

   g4 \times 2/3 {ef16 d c}
   c4.
   c8 a' g
   fs4 \end
   d8 r \times 2/3{d16 d d}
  }
 \break

  \repeat volta 2{
    \mark \default
    d8 bf' a
    g8. d16 g[d]
    g4.~
    g4.

    g8 ef' d
    c8. g16 c[g]
    c4.~
    c8. bf16 bf[a]

    a16 c c bf bf a
    a16 c c bf bf a
    a4.~
    a8. bf16 a[g]

    fs16 a a g g fs
    fs16 a a g g fs
    fs4.
    fs8. [ef16] \end
    d8 r d16 d
   \break
  }
  \mark \default
  d'4.~
  d4.~
  d4.~
  d4 c8

  bf4.~
  bf4 a8
  g4.~
  g4 f8

  ef4.~
  ef4 d8
  c4.~
  c4.

  a'4 a8
  a4 \times 2/3{bf16 a g}
  fs4 fs8
  fs4 \times 2/3{ef16 d c}

  d8. f16 a [g]
  fs8. a16 c[bf]
  a8. c16 ef[d]
  c8. bf16 a[g]

  fs8. g16 a[g]
  fs8. ef16 ef[d]
  d8. d'16 a[fs]
  d8 r r

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d4.*2
  d4.:7
  g4.*2:m
  c4.*2:m
  d4 c8:m
  d4.*3
  c4.:m
  d4.
  c4.:m
  d4.*2
  %B
  d4.
  g4.*4:m
  c4.*3:m
  d4.*7
  d4 c8:m
  %same
  d4.*3
  c4.:m
  d4.
  c4.:m
  d4.*2
  %c
  g8*11:m
  f8
  bf8*5 d8:7
  g4.*2:m
  c4.*4:m
  d8*11 c8:m
  d4.*3
  c4.:m
  d4.
  c4.:m
  d4.*2


}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Firn Di Mekhuntonim Ahem"
    subtitle=""
    composer= ""\version "2.22.2"

    instrument = "F Horn"
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
  \font-size #2
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