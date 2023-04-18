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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   d4 f a
   d4 a f
   a g2~
   g2.

   g4 f d
   g f d
   f2.~ f2.

   c4 f a
   c4 bf a
   c4 g2~ g2.
   g4 a bf
   d4 c bf
   a2.~a2.

  }

  \repeat volta 2{
   \mark \default
   f2.
   f4 e d
   f2.
   f4 e d
   f4 e d
   f4 e d
   e2.~
   e2.
   g2.
   g4 f e
   f2.
   f4 e d
   e e e
   e f e
   d2. ~ d2.

  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d2.*2:m
  g2.*4:m
  d2.*2:m
  f2.
  d2.:7
  g2.*3:m
  c2.:7
  f2.
  a2.:7
  %b
  d2.*5:m
  e2.:7
  a2.*2:7
  g2.:m6
  a2.:7
  d2.*2:m
  g2.:m6
  a2.:7
  d2.:m
  d2.:m
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
    title= "Oy Shloimele"
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
