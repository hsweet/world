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
  \key d \minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  d8 d bf'8. a16 g8 g g g |
  g8 f a8. g16 f8 f f f|
  \grace f8 f8 f d d f f f e
  f1

  f8 g a8. g16 g8 g g g|
  g8 f a8. g16 f8 f f f|
  f8 f d d g g a g|
  d1

  c8 c d d c c d d
  c8 c d d c c d d
  g8 g g g g g f e
  f1

  f8 g a8. g16 g8 g g g|
  g8 f a8. g16 f8 f f f |
  f8 f d d g g a g|
  d1
  \grace a'8 a8. f16 a8. f16 a8 f4 f8|
  a8 f bf a g4. f8 |
  e8 e c'8. bf16 bf8 a bf r|  %mistake in book?
  a8 g f e d2|

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g1:m
  d2*3:m
  g2:m
  d2*3:m
  g2*2:m
  d2*2:m
  a2:7
  d1:m %whole note
  f1
  c2:7
  f2
  g2:m
  c2:7
  f1
  d2:m
  g2:m
  a2:7
  d2*2:m
  a2:7
  d2*5:m
  g2:m
  c2
  f2
  a4*3:7
  d4:m
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
    title= "Am Yisroel Khay"
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
