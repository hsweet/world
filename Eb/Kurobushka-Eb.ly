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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    fs4. as8
    cs4 as8 fs
    b4. d8|
    fs4 e8 d

    cs4. d8
    e4 fs
    d4 b
    b'8 [a g fs]

    e4. g8
    b4 a8 g
    b4 fs
    fs4 e8 d

    cs4. d8
    e4 fs
    d4 b
    b'8 [a g fs]

    e4. g8
    b4 a8 g
    b4 fs
    fs4 e8 d

    cs4. d8
    e4 fs
    d4 b
  }
  \alternative { {b2 }{b4. es8 } }

  \repeat volta 2{
    \mark \default
    fs4. es8
    fs4. es8
    fs8 es fs es
    fs2

    fs4 cs8 d
    fs8[e d cs]
    d4 b

  }
  \alternative { {b8 [cs d e] }{b'8 [a g fs] } }


  \repeat volta 2{
    \mark \default
    e4. g8
    b4 a8 g
    b4 fs
    fs4 e8 d

    cs4. d8|
    e4 fs
    d4 b
  }
  \alternative { {b'8[a g fs] }{b,2 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  fs2*2:7
  b2*2:m
  fs2*2:7
  b2:m
  b2:7
  e2*2:m
  b2*2:m
  fs2*2:7
  b2:m
  b2:7
  e2*2:m
  b2*2:m
  fs2*2:7
  b2*3:m
  %bridge
  fs2*6:7
  b2*2:m
  b2:7
  %end
  e2*2:m
  b2*2:m
  fs2*2:7
  b2:m
  b2:7
  b2:m
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
