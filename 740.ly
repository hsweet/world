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
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

concert = {
  \repeat volta 2{
    \mark \default
    d4 a8 d a d a d|  %change from Pete's
    f4 c8 f c f c f|  %d's => c's
    a4 f8 a g4 e8 g
  }
  \alternative { {f4 d8 f e4 a }{f4 e d c } }

  \repeat volta 2{
    \mark \default
    r8 a' bf c bf a g f|
    r8 a bf c bf a g f|
    r8 a bf c d c bf a|
    g4 bf8 a g2|

    r8 g a bf a bf a g
  }
  \alternative {
    {
      f4 a8 g f4. f8
      f8 c c f f ef ef d
      d4 df c2|
    }
    {
      f4 a8 g f4. a8
      a8 g g f f e e d
      d2 r8 a' b cs|
    }
  }

  \repeat volta 2{
    \mark \default
    d8 r4 a8 c bf a g|
    f8 e d4 r8 d e f
    g4 bf a8 g f g
    a2 r8 a b cs %?

    d8 a4 c8~c bf a g|
    f8 e d4 r8 d e f
    g4 bf a8 g f e
  }
  \alternative { {d2 r8 a' b cs }{d,1 } }
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
  d1:m
  f1
  d2:m g2:m
  d2:m a2:7
  d4:m a4:7 g4:m c4:7
  %B
  f1*2
  f2
  d2:7
  g1:m
  c1:7
  %1st end
  f1
  f2
  c2:m
  d4:m
  df4:7
  c2:7
  %2nd end
  f1
  a1:7
  d2:m
  a2:7
  %c
  d2:m
  g2:m
  d1:m
  g2:m
  a2:7
  d2:m
  a2:7
  d2:m
  g2:m
  d1:m
  g2:m
  a2:7
  %1st end
  d2:m
  a2:m
  d1:m

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
