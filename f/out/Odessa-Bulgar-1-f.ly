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
  \key g \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c'' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8*3 e8 [a c]    %lead in notes

  \repeat volta 2{
   \mark \default
   e4 ds
   e fs
   g4 fs
   e8 [ds] c4|

   ds16 [fs] e4 e8|
   e8 [ds] c [ds]
   e8 fs e ds c b c ds
   e4 ds

   e fs
   g4 fs
   e8 ds c4
   b8 c e16 ds c8
   ds4 e
   a,4. e'8
   e16 ds c8 c4
   b8 c e16 ds c8
   ds4 e
  }
  \alternative {
    {a,2~ a8 e [a c] }
    {a2~a2}
  }

  \repeat volta 2{
   \mark \default
   r8 a' a a
   a8 a a a
   a8 g fs a
   g8 fs e g
   fs8 e ds fs
   e8 ds c4b8 c e16 ds c8
  ds4 e
  a,4. e'8
  e16 ds c8 c4
  %gs8 a f16 e d8
  b8 c e16 ds c8
  ds4 e
  a,2~a2
  }

   \repeat volta 2{
     \mark \default
     e8 a4 e'8
     e16 ds c8 c4
     b8 a b c
     ds8 e  c16 b a8

     e8 a4 e'8
     e16 ds c8 c4
     b8 a b c
    a4. r8

  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
s8*3
a2*12:m
e2*2:7
a2*2:m
e2*2:7
a2*2:m
a2*2:m
%b
a2*2:m
b2:7
e2:m
b2:7
a2:m
e2*2:7
a2*2:m
e2*2:7
a2*2:m
%c
a2*2:m
e2:7
a2*3:m
e2:7
a2:m
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
