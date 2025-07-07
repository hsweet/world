\version "2.24.0"
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
  \key e\minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 16 e16    %lead in notes

  \repeat volta 2{
    \mark \default
   b'2(d8)c b c
   b2. (a8 g)
   g8 a a g g f f e|
   e2 r4 r16 a b cs|

   d8 cs(cs4) b8 a(a4)|
   d8 cs(cs4) b8 cs cs b|
   a2. \times 2/3{e8 a e}
   a4 r2 r8.a16|

   b2(d8)c b c
   b2. (a8 g)
   g8 a a g g8.\trill f16 f8 e|
   e8 d f16 e e d d4 r|

   d'8 c c b b a a gs
   b8 a a gs gs8. \trill f16 \times 2/3{a8 gs f}|
 e4 r8. e16 d8 e f d

  }
  \alternative {
    {e4 r4 r8 b e g| }
    {e4 r4 r8. e16 gs b8.| }
  }

  \repeat volta 2{
    \mark \default
    ds4 e e e
    b2.(b8) a
    cs8 d(d4) e e
    b2 r

    g'8 fs(fs4) e2
    d2(d8.) b16 \times 2/3{c8 b a}
    d16 a8. (a2) b8 c|
    a4 r r8 b c16 cs 8.|

    cs8 d d d d c c b|
    a8 g b16 a a g g4. r8|
    a8 b a b a4 g8 fs
    e8 d f16 e e d d4 r|

    %d'8 c cl b b a a gs
    d'8 c c b b a a gs
    b8 a a gs gs8. \trill f16 g f e d
    e4 r8. e16 d8 e f d
  }
  \alternative {
    {e2 r8 e gs b| }
    {e,2 r8  b e g| }
  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s16
  e1*4:m
  a1*4
  e1*3:m
  d1*3:m
  e2 d2:m
  e1*2:m
  %B
  e1*2:m
  b1*2:m
  e1*2:m
  a1*2:m
  g1*2
  e1:m
  d1*3:m
  e2 d2:m
  e1*2:m



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
    title= "Yidisher Soldat in di Trentches"
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