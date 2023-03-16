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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes


  \mark \default
  a4. (bf8)
  cs4. (bf8)
  cs4. (bf8)
  cs8bf a4

  cs4.(d8)
  e4.(d8)
  e4.(d8)
  e8 d cs4|
  \break

  \repeat volta 2{
    \mark \default
    e8 f g f
    g8 f \tuplet 3/2{f e d}
    cs8 d e d
    e8 d \tuplet 3/2{d cs bf}

    a8 bf a g
    e'8 d \tuplet 3/2{d cs bf}
  }
  \alternative {
    {
      a4 cs
      e4 a
    }
    {
      a,2
      a2
    }
  }
  \mark \default
  d4.(a8)
  f'4. (d8)
  a'8.(g16) f8 e|
  c4. r8

  bf4.(g8)
  e'4.(d8)
  cs8 bf \tuplet 3/2 {bf(a) g}
  a4 r
  \repeat volta 2{
    \mark \default
    a8 cs e d
    cs8 e g f
    e8 g bf a
    g8 f e d
    cs8 d e d
    cs8 bf a bf
  }
  \alternative {
    {
      a4 cs
      e4 a
    }
    {
      a,2
      a2
    }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2*12
  g2*2:m
  a2*4
  d2*4:m
  g2*4:m
  a2*5:m
  g2:m
  a2*2
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
    title= "Bulgar"
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
