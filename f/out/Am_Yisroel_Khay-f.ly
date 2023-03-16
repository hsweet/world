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
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  a8 a f'8. e16 d8 d d d |
  d8 c e8. d16 c8 c c c|
  \grace c8 c8 c a a c c c b
  c1

  c8 d e8. d16 d8 d d d|
  d8 c e8. d16 c8 c c c|
  c8 c a a d d e d|
  a1

  g8 g a a g g a a
  g8 g a a g g a a
  d8 d d d d d c b
  c1

  c8 d e8. d16 d8 d d d|
  d8 c e8. d16 c8 c c c |
  c8 c a a d d e d|
  a1
  \grace e'8 e8. c16 e8. c16 e8 c4 c8|
  e8 c f e d4. c8 |
  b8 b g'8. f16 f8 e f r|  %mistake in book?
  e8 d c b a2|

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d1:m
  a2*3:m
  d2:m
  a2*3:m
  d2*2:m
  a2*2:m
  e2:7
  a1:m %whole note
  c1
  g2:7
  c2
  d2:m
  g2:7
  c1
  a2:m
  d2:m
  e2:7
  a2*2:m
  e2:7
  a2*5:m
  d2:m
  g2
  c2
  e4*3:7
  a4:m
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
    title= "Am Yisroel Khay"
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
