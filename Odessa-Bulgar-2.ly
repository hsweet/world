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
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
   \mark \default
   d4 ef
   fs4 g
   fs4. ef8
   fs8 ef d4

   fs4 g
   a4 bf
   a4. g8
   a8 g fs4

   a8 bf c bf
   c8 bf a g
   fs8 g a g
   a8 g fs ef

   d8 c d ef
   fs8 g fs ef
   d4 fs
   a4 d

   a8 bf c bf
   c8 bf a g
   fs8 g a g
   a8 g fs ef
   d8 c d ef
   fs8 g fs ef
   d2~

  }
  \alternative {
    {d2 }
    { d8 d ef fs}
  }

  \repeat volta 2{
   \mark \default
   g4. g8
   g8 d bf' a
   g4. g8
   g8 d bf' a

   g8 a bf c
   d8 c ef d
   c2~
   c4c8 bf
   a2~
   a8 g a g
   fs2~
   fs8 ef fs ef

   d8 c d ef
   fs8 g g d
   d2~
  }
   \alternative {
     { d8 d ef fs}
     {d4. r8 }
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 d2*12
 c2*2:m
 d2*6
 c2*2:m
 d2*2
 d2
 %b
 g2*6
 c2*2:m
 d2*4
 c2*2:m
 d2
 d2
 d
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
    title= "Odessa Bulgar #2"
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
