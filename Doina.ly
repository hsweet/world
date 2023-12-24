\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
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
orbitA = { d16 [cs bf a] }

melody = \relative c''{
  \global
  \override Staff.TimeSignature.stencil = ##f
   \time 4/4
   \key c\major

   % Scales
   g,8 ^Gm a bf cs d e f g  %gm
   g8  a bf cs d e f g

   d,^Dm e f gs a b c d
    d e f gs a b c d

   a,, ^Am b c ds e fs g a
    a b c ds e fs g a|

   \break

   \key d \minor
   \time 12/4
   <g,, d'>4 ^Doina (d'16) g bf d  cs'4 d bf4.  cs8-2 d2-2\fermata
   f8  [e  d cs-1]
   bf  bf-1 bf cs-3 |

   d2-4


   \repeat unfold 2 { \orbitA }
   d8 [cs bf a \fermata]
   %end cadence
   a16 [bf d bf]
   a8 fs g2
   %decend
   g8 f d bf
   d2

   d8 cs bf4 fs g2
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
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Doina"
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
