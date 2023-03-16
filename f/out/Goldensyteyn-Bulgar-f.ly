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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
endphrase = {
  r8 g16 g fs8 g,
  a8 bf a g
  r8 d'16 d cs8 d
  e8 f e d
  cs4  d %
  cs bf
}

melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   a8 f' e d
   cs4 bf8 a
   r8 d4 d16 d
   %r8 g4. ~
   cs8 d d8. a16
   %g4. d8
   a8 f'e d
   cs4 bf8 a
   g4. g16 g
   fs8 g g4

   \endphrase
  }
  \alternative {
    { a2~
    a4. a8}
    {a2~
    a8 a cs d}
  }
  \break
  \repeat volta 2{
   \mark \default
   e2'~
   e2
   a2~
   a2
   \repeat unfold 2{e8 d16 d d8 cs}
   e8 d16 d d8 cs16 cs
   cs8 bf16 bf bf8 a
   g4. g16 g
   fs8 g g4
   %c2~ c2
   \endphrase
  }
   \alternative {
     {a2~
    a8 a cs d}
     {a2~a2  }
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d2*6:m
  g2*8:m
  a2*2
  a2*2
 %b
 a2*8
 g2*8:m
 a2*2
 a2*2
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
    title= "Goldensyteyn Bulgar"
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
