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

concert = {
  \repeat volta 2{
    \mark \default
    a,4 e8 a, e a, e a,|  %change from Pete's
    c4 g,8 c g, c g, c|  %d's => c's
    e4 c8 e d4 b,8 d
  }
  \alternative { {c4 a,8 c b,4 e }{c4 b, a, g, } }

  \repeat volta 2{
    \mark \default
    r8 e' f g, f e d c|
    r8 e f g, f e d c|
    r8 e f g, a, g, f e|
    d4 f8 e d2|

    r8 d e f e f e d
  }
  \alternative {
    {
      c4 e8 d c4. c8
      c8 g, g, c c bf, bf, a,
      a,4 af, g,2|
    }
    {
      c4 e8 d c4. e8
      e8 d d c c b, b, a,
      a,2 r8 e' fs gs,|
    }
  }

  \repeat volta 2{
    \mark \default
    a,8 r4 e8 g, f e d|
    c8 b, a,4 r8 a, b, c
    d4 f e8 d c d
    e2 r8 e fs gs, %?

    a,8 e4 g,8~g, f e d|
    c8 b, a,4 r8 a, b, c
    d4 f e8 d c b,
  }
  \alternative { {a,2 r8 e' fs gs, }{a,,1 } }
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \concert

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  %{ Sokolow's
 d1*2:m
 d2:m g2:m
 d2:m
 a2:7
 d4:m a4:7 d4:m c4:7
  %}
  %Meghan's
  a1:m
  c1
  a2:m d2:m
  a2:m e2:7
  a4:m e4:7 d4:m g4:7
  %B
  c1*2
  c2
  a2:7
  d1:m
  g1:7
  %1st end
  c1
  c2
  g2:m
  a4:m
  af4:7
  g2:7
  %2nd end
  c1
  e1:7
  a2:m
  e2:7
  %c
  a2:m
  d2:m
  a1:m
  d2:m
  e2:7
  a2:m
  e2:7
  a2:m
  d2:m
  a1:m
  d2:m
  e2:7
  %1st end
  a2:m
  e2:m
  a1:m

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
    title= "7:40"
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

%{
convert-ly (GNU LilyPond) 2.12.3
Processing `'...
Applying conversion: 2.12.3


%}
