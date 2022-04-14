\version "2.16.0"
\include "english.ly"
\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   d8 a4 g8 a4 g|
   f8 g4 f8 g4 f|
   d8 d4 c8 f4(e)|
   d2. r4|
  }
   %B
   a'4. bf8 c4 d|
   a8 a4 g8 a(g)f4|
   a4. bf8 c4 d|
   a8 a4 g8 a8(g) f4
   
   f8 g4 f8 g4 f
   d2 d
   c8 d4 c8 f4 e
   d2 d
  
  

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
 d1:m
 g1:m
 d2:m
 a2:7
 d1:m
 %b
 f1
 d1:m
 f1
 d1:m
 g1:m
 d1:m
 a2:m a2:7
 d1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \
       \melody
  >>
  \header{
    title= "Artsa Alinu"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{ }
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
