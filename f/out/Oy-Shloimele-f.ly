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
  \key a \minor
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
   a4 c e
   a4 e c
   e d2~
   d2.

   d4 c a
   d c a
   c2.~ c2.

   g4 c e
   g4 f e
   g4 d2~ d2.
   d4 e f
   a4 g f
   e2.~e2.

  }

  \repeat volta 2{
   \mark \default
   c2.
   c4 b a
   c2.
   c4 b a
   c4 b a
   c4 b a
   b2.~
   b2.
   d2.
   d4 c b
   c2.
   c4 b a
   b b b
   b c b
   a2. ~ a2.

  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a2.*2:m
  d2.*4:m
  a2.*2:m
  c2.
  a2.:7
  d2.*3:m
  g2.:7
  c2.
  e2.:7
  %b
  a2.*5:m
  b2.:7
  e2.*2:7
  d2.:m6
  e2.:7
  a2.*2:m
  d2.:m6
  e2.:7
  a2.:m
  a2.:m
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
    title= "Oy Shloimele"
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
