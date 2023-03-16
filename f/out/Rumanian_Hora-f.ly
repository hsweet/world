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

%#################################### Melody ########################
melody =  \relative c'{
  \clef treble
  \key d \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a8. bf16 a bf|
    cs8. d16 cs d|
    \grace {e16} e8 e8 e8|
    e8. d16 cs bf |

    a8. bf16 a bf|
    cs8. d16 cs d
    e4 a8
    a4.

    a,8. bf16 a bf|
    cs8. d16 cs d
    \grace {e16} e8 e8 e8|
    e8. d16 cs bf

    e8. d16 cs bf
    cs8. bf16 a g

  }
  \alternative {
    {
      a4 e8
      a4 e8
    }
    {
      a8. a'16 e cs
      a4 r8|
    }
  }

  \repeat volta 2{
  \mark \default
    a'8. g16 f e
    a8. g16 f e|
    e16 g f8 [f]
    f4.|

    e8 f \grace {a16}g16 [f]
    g8. f16 e d -2
    d16 f e8 [e]

  }
  \alternative {
    {e4 a,8 }
    { e'4 r8}
  }

  \repeat volta 2{
  \mark \default
    cs8 e16 [d]
    cs8. bf16 a g
    g8 g g
    g'4.

    g8. f16 e-3 d
    e8. d16 cs bf
  }

  \alternative {
    {
      cs8. bf16 a g
      a4 r8
    }
    {
      a8. a'16 e cs
      a4 r8
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a8*6
  %r2*8
  g8:m
  s8*5
  % r8*3
  a8*18
  %b
  %r8*14
  d8*6:m
  %r4 r8*3 = 5/8
  g8*8:m
  %r8*4 r8*3 = 7/8
  a8*13
  %r4 r8*10 =12/8
  g8*9:m
  %r4 r8*6 =8/8
  a8
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
    title= "Romanian Hora"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "Kamman 13"
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
