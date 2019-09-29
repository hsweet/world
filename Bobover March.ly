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
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global

  \partial 4*1 d4    %lead in notes
  \mark \default
  g8. a16 b4 b b
  b8 c a b g2
  a8. g16 a8 b c b a g
  b1

  g8. a16 b4 b b
  b8 c a b g2
  a8. g16 a8 b c b a b
  g1

  \repeat volta 2{
    \mark \default
    b8. c16 d4 d  d|
    e4 d c g
    c8. b16 c8 b c e d c
    b1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    b8. d16 c4 c c16 b c cs|
    d4 b a g
    a8. g16 a8 b c b a g

  }
  \alternative { {b1 }{g1 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s4
  g4*5
  d4
  g2
  d1
  g4*9
  d4
  g2
  d1
  g1
  %
  g1
  c4
  g4
  d4 %?
  g4
  c1
  g1
  %
  g4
  c4*3
  d2
  g2
  d1
  g1*2

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
    title= "Bobover March"
    subtitle="Chasiddik"
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
