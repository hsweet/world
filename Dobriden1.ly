\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \key g \minor
  \time 3/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  d8. g16 d8. g16 d8. g16
  d2 bf4 \trill
  c16 d c8 g4 g8 a|
  bf16 d c8 bf4 a8 g

  d'8. g16 d8. g16 d8. g16
  d2 bf4 \trill
  c8 c g4 a8 bf|
  c4. r8 bf4 \bar "||"
  a8 [bf] c [df] c [bf]|
  c2 \trill bf4
  d8 c bf4(a)

  g8. bf16(a8.) c16(bf4)| %kvetch

  a8 [bf] c [df] c [bf]|
  c2 \trill bf4
  d8. c16 b4 a
  g2 r4 \bar"||"

  d'4 g\trill f8 ef|
  d8 bf c4.\trill g8
  c32(d c8.) bf4(a)|
  g8. bf16(a8.) c16(bf4)| %kvetch

  d4 g\trill f8 ef|
  d8. bf16 c2|
  c16 d c8(bf4) a
  g2.
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g4*6:m
  c4*3:m
  g4*9:m
  c4*6:m
  %bar
  d4*9
  g4*3:m
  d4*9
  g4*6:m
  %bar
  c4*6:m
  g4*7:m
  c4*4
  d4
  g4*3:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Dobriden  1"
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
