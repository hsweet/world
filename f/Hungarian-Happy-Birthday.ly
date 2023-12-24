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
  \key g\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  g4 a b b
  a4 a8(b)g4 a
  b8 b4. a4 a8(b)|
  g2 d

  g4 a b8 b4.
  a4 a8(b) g(fs) e4
  a8 a4(b8)g4 fs
  e2 e2
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 c1
 g2 c2 *2
 g2
 % C,d,a,d,a,E7,a.
 c1 *2
 d2:m a2:m
 d2:m a4:m e4:7
 a2:m
}

\score {

  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff  \transpose g c \melody
  >>
  \header{
    title= "Hungarian "
    subtitle=""
    composer= ""
    instrument = "F Horn"
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
