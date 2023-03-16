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
orbitA = { a,16 [gs f e] }

melody = \relative c'{
  \global
  \override Staff.TimeSignature.stencil = ##f
   \time 4/4
   \key g\major

   % Scales
   d8 ^Gm e f gs a b c d  %gm
   d8  e f gs a b c d

   a,^Dm b c ds e fs g a
    a b c ds e fs g a

   e,, ^Am fs g as b cs d e
    e fs g as b cs d e|

   \break

   \key a \minor
   \time 12/4
   <d,, a'>4 ^Doina (a'16) d f a  gs4 a f4.  gs8-2 a2-2\fermata
   c8  [b  a gs-1]
   f  f-1 f gs-3 |

   a2-4


   \repeat unfold 2 { \orbitA }
   a8 [gs f e \fermata]
   %end cadence
   e16 [f a f]
   e8 cs d2
   %decend
   d8 c a f
   a2

   a8 gs f4 cs d2
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
