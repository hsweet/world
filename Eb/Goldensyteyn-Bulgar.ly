\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
%melody =  \transpose c d \relative c {  %transpose for clarinet
endphrase = {
  r8 c16 c b8 c
  d8 ef d c
  r8 g'16 g fs8 g
  a8 bf a g
  fs4  g %
  fs ef
}

melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   d8 bf' a g
   fs4 ef8 d
   r8 g4 g16 g
   %r8 g4. ~
   fs8 g g8. d16
   %g4. d8
   d8 bf'a g
   fs4 ef8 d
   c4. c16 c
   b8 c c4

   \endphrase
  }
  \alternative {
    { d2~
    d4. d8}
    {d2~
    d8 d fs g}
  }
  \break
  \repeat volta 2{
   \mark \default
   a2~
   a2
   d2~
   d2
   \repeat unfold 2{a8 g16 g g8 fs}
   a8 g16 g g8 fs16 fs
   fs8 ef16 ef ef8 d
   c4. c16 c
   b8 c c4
   %c2~ c2
   \endphrase
  }
   \alternative {
     {d2~
    d8 d fs g}
     {d2~d2  }
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  g2*6:m
  c2*8:m
  d2*2
  d2*2
 %b
 d2*8
 c2*8:m
 d2*2
 d2*2
}

\score {\transpose c a
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
    instrument = "Eb"
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
