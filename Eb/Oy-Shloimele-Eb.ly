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
  \key b \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   b4 d fs
   b4 fs d
   fs e2~
   e2.

   e4 d b
   e d b
   d2.~ d2.

   a4 d fs
   a4 g fs
   a4 e2~ e2.
   e4 fs g
   b4 a g
   fs2.~fs2.

  }

  \repeat volta 2{
   \mark \default
   d2.
   d4 cs b
   d2.
   d4 cs b
   d4 cs b
   d4 cs b
   cs2.~
   cs2.
   e2.
   e4 d cs
   d2.
   d4 cs b
   cs cs cs
   cs d cs
   b2. ~ b2.

  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b2.*2:m
  e2.*4:m
  b2.*2:m
  d2.
  b2.:7
  e2.*3:m
  a2.:7
  d2.
  fs2.:7
  %b
  b2.*5:m
  cs2.:7
  fs2.*2:7
  e2.:m6
  fs2.:7
  b2.*2:m
  e2.:m6
  fs2.:7
  b2.:m
  b2.:m
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
