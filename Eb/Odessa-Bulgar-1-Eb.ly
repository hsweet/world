\version "2.20.0"
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
  \key a \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8*3 fs8 [b d]    %lead in notes

  \repeat volta 2{
   \mark \default
   fs4 es
   fs gs
   a4 gs
   fs8 [es] d4|

   es16 [gs] fs4 fs8|
   fs8 [es] d [es]
   fs8 gs fs es d cs d es
   fs4 es

   fs gs
   a4 gs
   fs8 es d4
   cs8 d fs16 es d8
   es4 fs
   b,4. fs'8
   fs16 es d8 d4
   cs8 d fs16 es d8
   es4 fs
  }
  \alternative {
    {b,2~ b8 fs [b d] }
    {b2~b2}
  }

  \repeat volta 2{
   \mark \default
   r8 b' b b
   b8 b b b
   b8 a gs b
   a8 gs fs a
   gs8 fs es gs
   fs8 es d4cs8 d fs16 es d8
  es4 fs
  b,4. fs'8
  fs16 es d8 d4
  %gs8 a f16 e d8
  cs8 d fs16 es d8
  es4 fs
  b,2~b2
  }

   \repeat volta 2{
     \mark \default
     fs8 b4 fs'8
     fs16 es d8 d4
     cs8 b cs d
     es8 fs  d16 cs b8

     fs8 b4 fs'8
     fs16 es d8 d4
     cs8 b cs d
    b4. r8

  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
s8*3
b2*12:m
fs2*2:7
b2*2:m
fs2*2:7
b2*2:m
b2*2:m
%b
b2*2:m
cs2:7
fs2:m
cs2:7
b2:m
fs2*2:7
b2*2:m
fs2*2:7
b2*2:m
%c
b2*2:m
fs2:7
b2*3:m
fs2:7
b2:m
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
    title= "Odessa Bulgar #1"
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
