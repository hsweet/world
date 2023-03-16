\version "2.18.0"
\language "english"
%\include "english.ly"
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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r8 a8 a8  a8  | %
    g8  fs16 g16  a4 | %
    r8 a8 a8  a8  | %
    g8  fs16 g16  a4 | %
    r8 cs8 cs8  cs8  | %
    d8.  cs16  bf8  a8  | %
    r8 e'8 e8  e8  | %
    f8.  e16  d8  cs8  | %
    a8  a8  g8  fs16 g16
    a2

  }
  \break
  \repeat volta 2{
    \mark \default
    r8 d8 d8  d8
    d8  cs16 d16  e4 (
    e8 )  cs8  cs8  cs8
    cs8  bf8  bf8  a8
    r8 d8 d8  d8
    d8  cs16 d16  a'4 (
    a8 )  cs,8  cs8  cs8
    cs8  bf8  bf8  a
  }
  \break
  \repeat volta 2{
    \mark \default
    a'8  a8  a8  g16 f16
    e16  f16  g4.
    f8  f  f  e16 d
    cs16  d16  e4.
    d8  d8  d8  cs16 bf16
    a16  bf16  cs4.
    g8  a8  bf16  d16 cs16 bf16
    a2
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2
  g4:m a4
  a2
  g4:m a4
  a2
  d2:m
  a2
  d2:m
  g4:m a4
  a2
  %b
  s8 d8*3:m
  d2:m
  a2*2
  s8 d8*3:m
  d2:m
  a2*2
  %C
  d2:m
  a2
  d2:m
  a2
  g2:m
  a2
  g2:m
  a2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose a, d
      \harmonies
    }
    \new Staff
    \transpose a, d
    \melody
  >>
  \header{
    title= "Nakhes Fun Kinder"
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
