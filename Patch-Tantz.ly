\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
  \markup{ \italic{ \date  }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key c \major
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    c16 c c c d8 c|
    f8 e d c
    e16 c e g f8 d
    f8 e d c

    c16 c c c d8 c|
    f8 e d c
    e16 c e g f8 d

  }
  \alternative { {c4 r }{c4 c16 c d e } }
  \break

  \repeat volta 2{
    \mark \default
    f8 f c4
    f16 e f e d4
    f16 e g f e d f e
  }
  \alternative { {  d16 c e d c16 c d e}{  d16 c e d c8 c} }
  \break
  \repeat volta 2{
    \mark \default
    g'2
    g2
    g4 g
    g4 g
    g8 c, g'4
    g16 f f e g4
    g8 c, g'4
    g16 f f e g4
    f8 c f4
    g8 ef d c
    ef16 ef ef g f8 d% d d d g
    c4. r8

  }
  % \alternative { { }{ } }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  c4*5
  g4:7
  c4*7
  g4:7
  c2*2
  %b
  f4*3
  g4*4
  c4*3
  %c
  c2*4:m
  c2*4
  f2:m
  c4*3:m
  g4
  c2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff  \melody
  >>
  \header{
    title= "Patch Tantz"
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