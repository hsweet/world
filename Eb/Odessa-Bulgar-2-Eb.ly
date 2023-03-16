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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
   \mark \default
   b4 c
   ds4 e
   ds4. c8
   ds8 c b4

   ds4 e
   fs4 g
   fs4. e8
   fs8 e ds4

   fs8 g a g
   a8 g fs e
   ds8 e fs e
   fs8 e ds c

   b8 a b c
   ds8 e ds c
   b4 ds
   fs4 b

   fs8 g a g
   a8 g fs e
   ds8 e fs e
   fs8 e ds c
   b8 a b c
   ds8 e ds c
   b2~

  }
  \alternative {
    {b2 }
    { b8 b c ds}
  }

  \repeat volta 2{
   \mark \default
   e4. e8
   e8 b g' fs
   e4. e8
   e8 b g' fs

   e8 fs g a
   b8 a c b
   a2~
   a4a8 g
   fs2~
   fs8 e fs e
   ds2~
   ds8 c ds c

   b8 a b c
   ds8 e e b
   b2~
  }
   \alternative {
     { b8 b c ds}
     {b4. r8 }
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 b2*12
 a2*2:m
 b2*6
 a2*2:m
 b2*2
 b2
 %b
 e2*6
 a2*2:m
 b2*4
 a2*2:m
 b2
 b2
 b
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
