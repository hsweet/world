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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
endphrase = {
  r8 a16 a gs'8 a
  b8 c' b a
  r8 e''16 e' ds'8 e'
  fs'8 g' fs' e'
  ds'4  e' %
  ds' c'
}

melody = \relative c''' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   b8 g' fs e
   ds4 c8 b
   r8 e4 e16 e
   %r8 g4. ~
   ds8 e e8. b16
   %g4. d8
   b8 g'fs e
   ds4 c8 b
   a4. a16 a
   gs8 a a4

   \endphrase
  }
  \alternative {
    { b2~
    b4. b8}
    {b2~
    b8 b ds e}
  }
  \break
  \repeat volta 2{
   \mark \default
   fs2~
   fs2
   b2~
   b2
   \repeat unfold 2{fs8 e16 e e8 ds}
   fs8 e16 e e8 ds16 ds
   ds8 c16 c c8 b
   a4. a16 a
   gs8 a a4
   %c2~ c2
   \endphrase
  }
   \alternative {
     {b2~
    b8 b ds e}
     {b2~b2  }
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e2*6:m
  a2*8:m
  b2*2
  b2*2
 %b
 b2*8
 a2*8:m
 b2*2
 b2*2
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
