\version "2.18.0"
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
  \key c \minor
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
  c8. ef16 g c
  ef,8. g16 c ef
  g,8. c16 ef g
  fs16 ef8. d16 [c]
  fs16 g8. \times 2/3{bf16 [a g]}
  fs8. ef16 \times 2/3{ef16[ d c]}
  g'4 g8
  c4.

  c,,8. ef16 g c
  ef,8. g16 c ef
  g,8. c16 ef g
  fs16 ef8. d16 [c]
  fs16 g8. \times 2/3{bf16 [a g]}
  fs8. ef16 \times 2/3{ef16[ d c]}

  g'8. c,16 d ef
  g16 fs ef8 \times 2/3 {ef16 [d c]}
  c8. g16 ef' d
  }
  \alternative {
    {c8 r g, }
    {c'8. b32(c cs [d ef e])  }
  }
  \break
  \repeat volta 2{
   \mark \default
   e8 f f
   f4 ef16 d
   d8 ef ef~
   ef8 d8. c16
   d4 d8
   d8. g,16 a b
   c8. d16 ef f
   g16 fs ef8 \times 2/3 {ef16 [d c]}
   e8 f (c')
   f,4 e16 d
   d8 ef(g)
   ef4 \times 2/3{ef16 d c}
   d4 d8
   g8. g,16 a b
   c8. ef16 g ef


  }
   \alternative {
     {c8. b32(c cs [d ef e])  }
     { c4 g8}
   }
  \break
    \repeat volta 2{
   \mark \default
   c8. ef16 ef d
   d8. f16 f ef
   ef8. g16 g f
   f8. af16 af g

   g8. fs16 fs ef
   ef8. d16 d c
   fs16 g8.(g8)
   c4.
   c,8. ef16 ef d
   d8. f16 f ef
   ef8. g16 g f
   f8. af16 af g

   g8. fs16 fs ef

  }
   \alternative {
     {ef8. d16 d c
     c8 r16 c g ef
     c8 r g'}
     {ef'8. d16 g b,
      c8 r16 c' g ef
     c4 r8}
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  c8*12:m
  g8*6:7
  c8*18:m
  g8*6:7
  c8*8:m g8:7
  c8*6:m
  %b
  f8*6:m
  c8*6:m
  g8*6:7
  c8*6:m
  f8*6:m
  c8*6:m
  g8*6:7
  c8*9:m
  %C
  c8*3:m
  g8*3:7
  f8*3:m
  c8*3:m
  g8*6:7
  c8*21:m
  g8*3:7
  c8*5:m
  g8:7
  g8*3:7
  c8*6:m
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
    title= "Noch a Glezele Vayn"
    subtitle=""
    composer= ""
    instrument ="Hora"
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
