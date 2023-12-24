\version "2.20.0"
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
  \key c \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8*3 a8 [d f]    %lead in notes

  \repeat volta 2{
   \mark \default
   a4 gs
   a b
   c4 b
   a8 [gs] f4|

   gs16 [b] a4 a8|
   a8 [gs] f [gs]
   a8 b a gs f e f gs
   a4 gs

   a b
   c4 b
   a8 gs f4
   e8 f a16 gs f8
   gs4 a
   d,4. a'8
   a16 gs f8 f4
   e8 f a16 gs f8
   gs4 a
  }
  \alternative {
    {d,2~ d8 a [d f] }
    {d2~d2}
  }

  \repeat volta 2{
   \mark \default
   r8 d' d d
   d8 d d d
   d8 c b d
   c8 b a c
   b8 a gs b
   a8 gs f4e8 f a16 gs f8
  gs4 a
  d,4. a'8
  a16 gs f8 f4
  %gs8 a f16 e d8
  e8 f a16 gs f8
  gs4 a
  d,2~d2
  }

   \repeat volta 2{
     \mark \default
     a8 d4 a'8
     a16 gs f8 f4
     e8 d e f
     gs8 a  f16 e d8

     a8 d4 a'8
     a16 gs f8 f4
     e8 d e f|
  }
  \alternative{
  {d4. r8}
  {d8 a [d f]}
  }

}


%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
s8*3
d2*12:m
a2*2:7
d2*2:m
a2*2:7
d2*2:m
d2*2:m
%b
d2*2:m
e2:7
a2:m
e2:7
d2:m
a2*2:7
d2*2:m
a2*2:7
d2*2:m
%c
d2*2:m
a2:7
d2*3:m
a2:7
d2:m
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
