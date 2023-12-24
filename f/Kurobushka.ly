\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    a4. cs8
    e4 cs8 a
    d4. f8|
    a4 g8 f

    e4. f8
    g4 a
    f4 d
    d'8 [c bf a]

    g4. bf8
    d4 c8 bf
    d4 a
    a4 g8 f

    e4. f8
    g4 a
    f4 d
    d'8 [c bf a]

    g4. bf8
    d4 c8 bf
    d4 a
    a4 g8 f

    e4. f8
    g4 a
    f4 d
  }
  \alternative { {d2 }{d4. gs8 } }

  \repeat volta 2{
    \mark \default
    a4. gs8
    a4. gs8
    a8 gs a gs
    a2

    a4 e8 f
    a8[g f e]
    f4 d

  }
  \alternative { {d8 [e f g] }{d'8 [c bf a] } }


  \repeat volta 2{
    \mark \default
    g4. bf8
    d4 c8 bf
    d4 a
    a4 g8 f

    e4. f8|
    g4 a
    f4 d
  }
  \alternative { {d'8[c bf a] }{d,2 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2*2:7
  d2*2:m
  a2*2:7
  d2:m
  d2:7
  g2*2:m
  d2*2:m
  a2*2:7
  d2:m
  d2:7
  g2*2:m
  d2*2:m
  a2*2:7
  d2*3:m
  %bridge
  a2*6:7
  d2*2:m
  d2:7
  %end
  g2*2:m
  d2*2:m
  a2*2:7
  d2:m
  d2:7
  d2:m
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
    title= "Kurobushka"
    subtitle=""
    composer= ""
    instrument = "F Horn"
    arranger= "Sokolow"
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
