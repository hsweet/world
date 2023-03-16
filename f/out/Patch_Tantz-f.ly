\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
  \markup{ \italic{ \date  }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key g \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    g16 g g g a8 g|
    c8 b a g
    b16 g b d c8 a
    c8 b a g

    g16 g g g a8 g|
    c8 b a g
    b16 g b d c8 a

  }
  \alternative { {g4 r }{g4 g16 g a b } }
  \break

  \repeat volta 2{
    \mark \default
    c8 c g4
    c16 b c b a4
    c16 b d c b a c b
  }
  \alternative { {  a16 g b a g16 g a b}{  a16 g b a g8 g} }
  \break
  \repeat volta 2{
    \mark \default
    d'2
    d2
    d4 d
    d4 d
    d8 g, d'4
    d16 c c b d4
    d8 g, d'4
    d16 c c b d4
    c8 g c4
    d8 bf a g
    bf16 bf bf d c8 a% d d d g
    g4. r8

  }
  % \alternative { { }{ } }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g4*5
  d4:7
  g4*7
  d4:7
  g2*2
  %b
  c4*3
  d4*4
  g4*3
  %c
  g2*4:m
  g2*4
  c2:m
  g4*3:m
  d4
  g2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff  \melody
  >>
  \header{
    title= "Patch Tantz"
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