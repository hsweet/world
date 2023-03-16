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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    e4. gs8
    b4 gs8 e
    a4. c8|
    e4 d8 c

    b4. c8
    d4 e
    c4 a
    a'8 [g f e]

    d4. f8
    a4 g8 f
    a4 e
    e4 d8 c

    b4. c8
    d4 e
    c4 a
    a'8 [g f e]

    d4. f8
    a4 g8 f
    a4 e
    e4 d8 c

    b4. c8
    d4 e
    c4 a
  }
  \alternative { {a2 }{a4. ds8 } }

  \repeat volta 2{
    \mark \default
    e4. ds8
    e4. ds8
    e8 ds e ds
    e2

    e4 b8 c
    e8[d c b]
    c4 a

  }
  \alternative { {a8 [b c d] }{a'8 [g f e] } }


  \repeat volta 2{
    \mark \default
    d4. f8
    a4 g8 f
    a4 e
    e4 d8 c

    b4. c8|
    d4 e
    c4 a
  }
  \alternative { {a'8[g f e] }{a,2 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e2*2:7
  a2*2:m
  e2*2:7
  a2:m
  a2:7
  d2*2:m
  a2*2:m
  e2*2:7
  a2:m
  a2:7
  d2*2:m
  a2*2:m
  e2*2:7
  a2*3:m
  %bridge
  e2*6:7
  a2*2:m
  a2:7
  %end
  d2*2:m
  a2*2:m
  e2*2:7
  a2:m
  a2:7
  a2:m
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
    title= "Kurobushka"
    subtitle=""
    composer= ""
    instrument =""
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
