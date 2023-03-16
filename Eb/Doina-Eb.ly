\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

\markup{Scales in 3 keys, then melody }

global = {
  \clef treble
  %\key d \minor
  \time 12/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
orbitA = { b16 [as g' fs'] }

melody = \relative c'{
  \global
  \override Staff.TimeSignature.stencil = ##f
   \time 4/4
   \key a\major

   % Scales
   e8 ^Gm fs g as b cs d e  %gm
   e8  fs g as b cs d e

   b,^Dm cs d es fs gs a b
    b cs d es fs gs a b

   fs,, ^Am gs a bs cs ds e fs
    fs gs a bs cs ds e fs|

   \break

   \key b \minor
   \time 12/4
   <e,, b'>4 ^Doina (b'16) e g b  as'4 b g4.  as8-2 b2-2\fermata
   d8  [cs  b as-1]
   g  g-1 g as-3 |

   b2-4


   \repeat unfold 2 { \orbitA }
   b8 [as g fs \fermata]
   %end cadence
   fs16 [g b g]
   fs8 ds e2
   %decend
   e8 d b g
   b2

   b8 as g4 ds e2
   % key change coming
   %g4 gs a



}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Doina"
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
