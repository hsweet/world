\version "2.18.0"
\language "english"
%\pointAndClickOff
%\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
%date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ \date }  }

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

  \repeat volta 2{
    \mark \default
    r8 d8 d8  d8  | %
    c8  b16 c16  d4 | %
    r8 d8 d8  d8  | %
    c8  b16 c16  d4 | %
    r8 fs8 fs8  fs8  | %
    g8.  fs16  ef8  d8  | %
    r8 a'8 a8  a8  | %
    bf8.  a16  g8  fs8  | %
    d8  d8  c8  b16 c16
    d2

  }
  \break
  \repeat volta 2{
    \mark \default
    r8 g8 g8  g8
    g8  fs16 g16  a4 (
    a8 )  fs8  fs8  fs8
    fs8  ef8  ef8  d8
    r8 g8 g8  g8
    g8  fs16 g16  d'4 (
    d8 )  fs,8  fs8  fs8
    fs8  ef8  ef8  d
  }
  \break
  \repeat volta 2{
    \mark \default
    d'8  d8  d8  c16 bf16
    a16  bf16  c4.
    bf8  bf  bf  a16 g
    fs16  g16  a4.
    g8  g8  g8  fs16 ef16
    d16  ef16  fs4.
    c8  d8  ef16  g16 fs16 ef16
    d2
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d2
  c4:m d4
  d2
  c4:m d4
  d2
  g2:m
  d2
  g2:m
  c4:m d4
  d2
  %b
  s8 g8*3:m
  g2:m
  d2*2
  s8 g8*3:m
  g2:m
  d2*2
  %C
  g2:m
  d2
  g2:m
  d2
  c2:m
  d2
  c2:m
  d2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \transpose d g
      \harmonies
    }
    \new Staff
    \transpose d g
    \melody
  >>
  \header{
    title= "Nakhes Fun Kinder"
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
