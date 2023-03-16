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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes


  \mark \default
  b4. (c8)
  ds4. (c8)
  ds4. (c8)
  ds8c b4

  ds4.(e8)
  fs4.(e8)
  fs4.(e8)
  fs8 e ds4|
  \break

  \repeat volta 2{
    \mark \default
    fs8 g a g
    a8 g \tuplet 3/2{g fs e}
    ds8 e fs e
    fs8 e \tuplet 3/2{e ds c}

    b8 c b a
    fs'8 e \tuplet 3/2{e ds c}
  }
  \alternative {
    {
      b4 ds
      fs4 b
    }
    {
      b,2
      b2
    }
  }
  \mark \default
  e4.(b8)
  g'4. (e8)
  b'8.(a16) g8 fs|
  d4. r8

  c4.(a8)
  fs'4.(e8)
  ds8 c \tuplet 3/2 {c(b) a}
  b4 r
  \repeat volta 2{
    \mark \default
    b8 ds fs e
    ds8 fs a g
    fs8 a c b
    a8 g fs e
    ds8 e fs e
    ds8 c b c
  }
  \alternative {
    {
      b4 ds
      fs4 b
    }
    {
      b,2
      b2
    }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b2*12
  a2*2:m
  b2*4
  e2*4:m
  a2*4:m
  b2*5:m
  a2:m
  b2*2
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
