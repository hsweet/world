\version "2.18.0"
\include "english.ly"
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
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   g8. bf16 [d g]
   bf,8. d16 [g bf]
   d,8. g16[bf d]

   ds16 \trill bf8. [a16 \trill g]

   cs16 [d8.] \times 2/3 {f16 e d}
   cs8. [bf16] \times 2/3 {bf a g}
   d'4 d8
   g4.

   g,,8. bf16 [d g]
   bf,8. d16 [g bf]
   d,8. g16[bf d]
   ds16 \trill bf8. [a16 \trill g]

   cs16 [d8.] \times 2/3 {f16 e d}
   cs8. [bf16] \times 2/3 {bf a g}
   d'8. [g,16] a bf
   d16 [cs bf8] \times 2/3{bf16 a g}

   g8. d16 [bf' a]


  }
  \alternative {
    {g8 r d, }
    {g'8.  fs32(g gs [a bf b] ) }
  }
  \break

  \repeat volta 2{
   \mark \default
   b8 c c
   c4 bf16 a
   a8 bf bf~
   bf8 a8. g16

   a4 a8
   a8. d,16 [e fs]
   g8.[a16] bf c
   d16 [cs bf8] \times 2/3{bf16 a g}

  b8 c (g')|
  c,4-3 bf16 -2 [a-1]
  a8 bf(d)
  bf4 \times 2/3{bf16 a g}

  a4 a8
  d8. d,16 [e fs] |
  g8. bf16 [d bf]|
  }
   \alternative {
     {g8.  fs32(g gs [a bf b] )| }
     {g4 d8 |}
   }
   \break
    \repeat volta 2{
   \mark \default
   g8. bf16 \upbow [bf\upbow a]
   a8. c16 [c bf]
   bf8. d16[d c]
   c8. ef16 [ef d]

   d8. cs16 [cs bf]
   bf8. a16[a g]

   cs16 d8. (d8)
   g4.\trill

   g,8. bf16 \upbow [bf\upbow a]
   a8. c16 [c bf]
   bf8. d16[d c]
   c8. ef16 [ef d]

   d8. cs16 [cs bf]

    }

    \alternative{
      {bf8. a16[a g]
      g8 r16 g d bf
      g8 r d'}
      {bf8. d16 [d fs]
      g8 r16 g'-3 d-4 bf-2
      g4 r8}
    }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  g8*12:m
  d8*6:7
  g8*18:m
  d8*6:7
  g8*8:m
  d8:7
  g8*6:m
  %b
  c8*6:m
  g8*6:m
  d8*6:7
  g8*6:m
  c8*6:m
  g8*6:m
  d8*6:7
  g8*9:m
  %c
  g8*3:m
  d8*3:7
  g8*3:m
  c8*3:m
  g8*3:m
  d8*3:7
  g8*6:m

  g8*3:m
  d8*3:7
  g8*3:m
  c8*3:m
  g8*3:m
  d8*3:7
  g8*3:m
  d8*3:7
  d8*3:7
  g8*3:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Nokh a Glezele Vayn"
    subtitle="In a Rumanashye Shenk"
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
