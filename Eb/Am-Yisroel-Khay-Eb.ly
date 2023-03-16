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
  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  b8 b g'8. fs16 e8 e e e |
  e8 d fs8. e16 d8 d d d|
  \grace d8 d8 d b b d d d cs
  d1

  d8 e fs8. e16 e8 e e e|
  e8 d fs8. e16 d8 d d d|
  d8 d b b e e fs e|
  b1

  a8 a b b a a b b
  a8 a b b a a b b
  e8 e e e e e d cs
  d1

  d8 e fs8. e16 e8 e e e|
  e8 d fs8. e16 d8 d d d |
  d8 d b b e e fs e|
  b1
  \grace fs'8 fs8. d16 fs8. d16 fs8 d4 d8|
  fs8 d g fs e4. d8 |
  cs8 cs a'8. g16 g8 fs g r|  %mistake in book?
  fs8 e d cs b2|

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e1:m
  b2*3:m
  e2:m
  b2*3:m
  e2*2:m
  b2*2:m
  fs2:7
  b1:m %whole note
  d1
  a2:7
  d2
  e2:m
  a2:7
  d1
  b2:m
  e2:m
  fs2:7
  b2*2:m
  fs2:7
  b2*5:m
  e2:m
  a2
  d2
  fs4*3:7
  b4:m
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
