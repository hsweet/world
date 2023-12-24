\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
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

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %lead in notes

  \repeat volta 2{

    d4 f a f
    g2 f4 e
    a2 g
    d4 a8 a d d e4|

    f4 a c c
    d2 c4 bf
    a1
    b2 cs

    e4 d8 a(a2)
    r4 f8 f e e d4|
    a'4 g8 bf(bf2)~
    bf2 c4 bf

    a2 g4 f
    a4 g f d8 e
    d1
    b'2 cs

    e4 d8 a(a2)
    r4 f8 f e e d4
    a'4 g8 bf(bf2)~
    bf2 c4 bf
    a2 g4 f
  }
  \alternative {
    {
      a8 a g g f4 e8 d
      d1
      d4 a8 a b4 cs
    }
    {
      a'8 a bf bf b4 cs8 d~
      d1~
      d1
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
  d2:m
  f2:6
  g1:m
  d2:m
  a2:7
  d2:m
  g4:m
  c4:7
  f1
  bf2
  c2:7
  f1   %7
  e2:7
  a2
  %
  d1*2:m
  g1:m
  g1:m6
  d1:m
  a1:7
  d1:m   %15
  e2:7
  a2
  d1*2:m
  g1:m
  g1:m6
  d1:m
  %
  a1:7
  d1*2:m
  a1:7
  d1*2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
     \transpose d a\harmonies
    }
    \new Staff
   \transpose d a, \melody
  >>
  \header{
    title= "Moscow Nights"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
