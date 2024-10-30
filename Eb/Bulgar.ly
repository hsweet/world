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
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes


  \mark \default
  d4. (ef8)
  fs4. (ef8)
  fs4. (ef8)
  fs8ef d4

  fs4.(g8)
  a4.(g8)
  a4.(g8)
  a8 g fs4|
  \break

  \repeat volta 2{
    \mark \default
    a8 bf c bf
    c8 bf \tuplet 3/2{bf a g}
    fs8 g a g
    a8 g \tuplet 3/2{g fs ef}

    d8 ef d c
    a'8 g \tuplet 3/2{g fs ef}
  }
  \alternative {
    {
      d4 fs
      a4 d
    }
    {
      d,2
      d2
    }
  }
  \mark \default
  g4.(d8)
  bf'4. (g8)
  d'8.(c16) bf8 a|
  f4. r8

  ef4.(c8)
  a'4.(g8)
  fs8 ef \tuplet 3/2 {ef(d) c}
  d4 r
  \repeat volta 2{
    \mark \default
    d8 fs a g
    fs8 a c bf
    a8 c ef d
    c8 bf a g
    fs8 g a g
    fs8 ef d ef
  }
  \alternative {
    {
      d4 fs
      a4 d
    }
    {
      d,2
      d2
    }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d2*12
  c2*2:m
  d2*4
  g2*4:m
  c2*4:m
  d2*5:m
  c2:m
  d2*2
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Bulgar"
    subtitle=""
    composer= ""
    instrument = "Eb"
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
