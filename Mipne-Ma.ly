\version "2.22.0"
\include "english.ly"
%\pointAndClickOff
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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default
    d4 bf' g4 r
    d4 bf' g4 r8 g8
    a4. (g8) a4. (g8)
    a4 c bf8 (a) g4

    d4 bf' g4 r
    d'4 d g, r
    a4. g8 a4 c8 bf

  }
  \alternative {
    {a4 g r2}
    {a4 g r4 bf8 c }
  }

  \repeat volta 2{
    \mark \default
    d2 d
    c2 bf4. bf8
    c4. (bf8) c4 d
    f4 d c bf8 c

    d2 d
    c2 bf4. bf8
    c8 (bf c bf) c4 d |
    c bf g r

  }
  \alternative {
    { }
    { }
  }

  \repeat volta 2{
    bf2 d
    c8 (d c bf) g4. g8
    a4. (g8) a4. (g8)
    a4 c bf8 (a) g4

    bf2 d
    c8 (d c bf) g4. g8
    a4 g a c8 (bf)
    a4 g r2
  }

}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "

  Mip -- ne -- ma
  Mip -- ne -- ma
  Yo -- re -- do  ha -- nes -- o -- mo
  Mip -- ne -- ma
  Mip -- ne -- ma
  Yo -- re -- do  han -- es -- o -- mo
  _ _
  m -- e -- ig -- ro ro -- mo
  Le -- vi -- ro a -- m -- ik -- to
  m -- e -- ig -- ro ro -- mo
  Le -- vi -- ro a -- m -- ik -- to

  %
  Ha -- ye -- ri -- do
  Ts -- oy -- rehk al -- i  -- o -- ti
  Ha -- ye -- ri -- do
  Ts -- oy -- rehk al -- i  -- o -- ti

}
%################################# Chords #######################
harmonies = \chordmode {
  g1*2:m
  d1:m
  c4:m  d4:m g2:m
  g1*2:m
  d2:m
  c2:m
  g1:m
  g1:m
  %
  g1:m
  c2:m g2:m
  c1:m
  d2:m g2:m
   g1:m
  c2:m g2:m
  c1:m
  d2:m g2:m
  %
  g1:m
  d2:m g2:m
  c1:m
  d2:m g2:m
  g1:m
  d2:m g2:m
  c2:m
  d2:m g2:m

}

\score {
  % transpose score below
  \transpose g d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Mipney Ma"
    subtitle=""
    composer= ""

    instrument =""
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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