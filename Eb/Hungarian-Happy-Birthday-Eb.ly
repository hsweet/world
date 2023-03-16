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
  \key e\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  e4 fs gs gs
  fs4 fs8(gs)e4 fs
  gs8 gs4. fs4 fs8(gs)|
  e2 b

  e4 fs gs8 gs4.
  fs4 fs8(gs) e(ds) cs4
  fs8 fs4(gs8)e4 ds
  cs2 cs2
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 a1
 e2 a2 *2
 e2
 % C,d,a,d,a,E7,a.
 a1 *2
 b2:m fs2:m
 b2:m fs4:m cs4:7
 fs2:m
}

\score {

  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff  \transpose e' a \melody
  >>
  \header{
    title= "Hungarian "
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
