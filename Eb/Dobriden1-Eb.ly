\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key e \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  b8. e16 b8. e16 b8. e16
  b2 g4 \trill
  a16 b a8 e4 e8 fs|
  g16 b a8 g4 fs8 e

  b'8. e16 b8. e16 b8. e16
  b2 g4 \trill
  a8 a e4 fs8 g|
  a4. r8 g4 \bar "||"
  fs8 [g] a [bf] a [g]|
  a2 \trill g4
  b8 a g4(fs)

  e8. g16(fs8.) a16(g4)| %kvetch

  fs8 [g] a [bf] a [g]|
  a2 \trill g4
  b8. a16 gs4 fs
  e2 r4 \bar"||"

  b'4 e\trill d8 c|
  b8 g a4.\trill e8
  a32(b a8.) g4(fs)|
  e8. g16(fs8.) a16(g4)| %kvetch

  b4 e\trill d8 c|
  b8. g16 a2|
  a16 b a8(g4) fs
  e2.
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e4*6:m
  a4*3:m
  e4*9:m
  a4*6:m
  %bar
  b4*9
  e4*3:m
  b4*9
  e4*6:m
  %bar
  a4*6:m
  e4*7:m
  a4*4
  b4
  e4*3:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Dobriden  1"
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
