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

%#################################### Melody ########################
melody =  \relative c'{
  \clef treble
  \key g \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    d8. ef16 d ef|
    fs8. g16 fs g|
    \grace {a16} a8 a8 a8|
    a8. g16 fs ef |

    d8. ef16 d ef|
    fs8. g16 fs g
    a4 d8
    d4.

    d,8. ef16 d ef|
    fs8. g16 fs g
    \grace {a16} a8 a8 a8|
    a8. g16 fs ef

    a8. g16 fs ef
    fs8. ef16 d c

  }
  \alternative {
    {
      d4 a8
      d4 a8
    }
    {
      d8. d'16 a fs
      d4 r8|
    }
  }

  \repeat volta 2{
  \mark \default
    d'8. c16 bf a
    d8. c16 bf a|
    a16 c bf8 [bf]
    bf4.|

    a8 bf \grace {d16}c16 [bf]
    c8. bf16 a g -2
    g16 bf a8 [a]

  }
  \alternative {
    {a4 d,8 }
    { a'4 r8}
  }

  \repeat volta 2{
  \mark \default
    fs8 a16 [g]
    fs8. ef16 d c
    c8 c c
    c'4.

    c8. bf16 a-3 g
    a8. g16 fs ef
  }

  \alternative {
    {
      fs8. ef16 d c
      d4 r8
    }
    {
      d8. d'16 a fs
      d4 r8
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d8*6
  %r2*8
  c8:m
  s8*5
  % r8*3
  d8*18
  %b
  %r8*14
  g8*6:m
  %r4 r8*3 = 5/8
  c8*8:m
  %r8*4 r8*3 = 7/8
  d8*13
  %r4 r8*10 =12/8
  c8*9:m
  %r4 r8*6 =8/8
  d8
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
    title= "Romanian Hora"
    subtitle=""
    composer= ""
    instrument = "Eb"
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
