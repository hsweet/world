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
  \key d \minor
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
   a4 bf
   cs4 d
   cs4. bf8
   cs8 bf a4

   cs4 d
   e4 f
   e4. d8
   e8 d cs4

   e8 f g f
   g8 f e d
   cs8 d e d
   e8 d cs bf

   a8 g a bf
   cs8 d cs bf
   a4 cs
   e4 a

   e8 f g f
   g8 f e d
   cs8 d e d
   e8 d cs bf
   a8 g a bf
   cs8 d cs bf
   a2~

  }
  \alternative {
    {a2 }
    { a8 a bf cs}
  }

  \repeat volta 2{
   \mark \default
   d4. d8
   d8 a f' e
   d4. d8
   d8 a f' e

   d8 e f g
   a8 g bf a
   g2~
   g4g8 f
   e2~
   e8 d e d
   cs2~
   cs8 bf cs bf

   a8 g a bf
   cs8 d d a
   a2~
  }
   \alternative {
     { a8 a bf cs}
     {a4. r8 }
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 a2*12
 g2*2:m
 a2*6
 g2*2:m
 a2*2
 a2
 %b
 d2*6
 g2*2:m
 a2*4
 g2*2:m
 a2
 a2
 a
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
