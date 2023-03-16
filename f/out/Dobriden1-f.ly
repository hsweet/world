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
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  a8. d16 a8. d16 a8. d16
  a2 f4 \trill
  g16 a g8 d4 d8 e|
  f16 a g8 f4 e8 d

  a'8. d16 a8. d16 a8. d16
  a2 f4 \trill
  g8 g d4 e8 f|
  g4. r8 f4 \bar "||"
  e8 [f] g [af] g [f]|
  g2 \trill f4
  a8 g f4(e)

  d8. f16(e8.) g16(f4)| %kvetch

  e8 [f] g [af] g [f]|
  g2 \trill f4
  a8. g16 fs4 e
  d2 r4 \bar"||"

  a'4 d\trill c8 bf|
  a8 f g4.\trill d8
  g32(a g8.) f4(e)|
  d8. f16(e8.) g16(f4)| %kvetch

  a4 d\trill c8 bf|
  a8. f16 g2|
  g16 a g8(f4) e
  d2.
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d4*6:m
  g4*3:m
  d4*9:m
  g4*6:m
  %bar
  a4*9
  d4*3:m
  a4*9
  d4*6:m
  %bar
  g4*6:m
  d4*7:m
  g4*4
  a4
  d4*3:m

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
