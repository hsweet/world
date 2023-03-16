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
melody = \relative c'' {
  \global
  %lead in notes

  \repeat volta 2{

    a4 c e c
    d2 c4 b
    e2 d
    a4 e8 e a a b4|

    c4 e g g
    a2 g4 f
    e1
    fs2 gs

    b4 a8 e(e2)
    r4 c8 c b b a4|
    e'4 d8 f(f2)~
    f2 g4 f

    e2 d4 c
    e4 d c a8 b
    a1
    fs'2 gs

    b4 a8 e(e2)
    r4 c8 c b b a4
    e'4 d8 f(f2)~
    f2 g4 f
    e2 d4 c
  }
  \alternative {
    {
      e8 e d d c4 b8 a
      a1
      a4 e8 e fs4 gs
    }
    {
      e'8 e f f fs4 gs8 a~
      a1~
      a1
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
  a2:m
  c2:6
  d1:m
  a2:m
  e2:7
  a2:m
  d4:m
  g4:7
  c1
  f2
  g2:7
  c1   %7
  b2:7
  e2
  %
  a1*2:m
  d1:m
  d1:m6
  a1:m
  e1:7
  a1:m   %15
  b2:7
  e2
  a1*2:m
  d1:m
  d1:m6
  a1:m
  %
  e1:7
  a1*2:m
  e1:7
  a1*2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
     \transpose a, e\harmonies
    }
    \new Staff
   \transpose a, e, \melody
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
