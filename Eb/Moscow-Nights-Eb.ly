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
melody = \relative c''' {
  \global
  %lead in notes

  \repeat volta 2{

    b4 d fs d
    e2 d4 cs
    fs2 e
    b4 fs8 fs b b cs4|

    d4 fs a a
    b2 a4 g
    fs1
    gs2 as

    cs4 b8 fs(fs2)
    r4 d8 d cs cs b4|
    fs'4 e8 g(g2)~
    g2 a4 g

    fs2 e4 d
    fs4 e d b8 cs
    b1
    gs'2 as

    cs4 b8 fs(fs2)
    r4 d8 d cs cs b4
    fs'4 e8 g(g2)~
    g2 a4 g
    fs2 e4 d
  }
  \alternative {
    {
      fs8 fs e e d4 cs8 b
      b1
      b4 fs8 fs gs4 as
    }
    {
      fs'8 fs g g gs4 as8 b~
      b1~
      b1
    }
  }

  \repeat volta 2{

  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b2:m
  d2:6
  e1:m
  b2:m
  fs2:7
  b2:m
  e4:m
  a4:7
  d1
  g2
  a2:7
  d1   %7
  cs2:7
  fs2
  %
  b1*2:m
  e1:m
  e1:m6
  b1:m
  fs1:7
  b1:m   %15
  cs2:7
  fs2
  b1*2:m
  e1:m
  e1:m6
  b1:m
  %
  fs1:7
  b1*2:m
  fs1:7
  b1*2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
     \transpose b fs'\harmonies
    }
    \new Staff
   \transpose b fs \melody
  >>
  \header{
    title= "Moscow Nights"
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
