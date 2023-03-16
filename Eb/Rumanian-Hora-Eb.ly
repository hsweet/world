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
melody =  \relative c''{
  \clef treble
  \key e \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b8. c16 b c|
    ds8. e16 ds e|
    \grace {fs16} fs8 fs8 fs8|
    fs8. e16 ds c |

    b8. c16 b c|
    ds8. e16 ds e
    fs4 b8
    b4.

    b,8. c16 b c|
    ds8. e16 ds e
    \grace {fs16} fs8 fs8 fs8|
    fs8. e16 ds c

    fs8. e16 ds c
    ds8. c16 b a

  }
  \alternative {
    {
      b4 fs8
      b4 fs8
    }
    {
      b8. b'16 fs ds
      b4 r8|
    }
  }

  \repeat volta 2{
  \mark \default
    b'8. a16 g fs
    b8. a16 g fs|
    fs16 a g8 [g]
    g4.|

    fs8 g \grace {b16}a16 [g]
    a8. g16 fs e -2
    e16 g fs8 [fs]

  }
  \alternative {
    {fs4 b,8 }
    { fs'4 r8}
  }

  \repeat volta 2{
  \mark \default
    ds8 fs16 [e]
    ds8. c16 b a
    a8 a a
    a'4.

    a8. g16 fs-3 e
    fs8. e16 ds c
  }

  \alternative {
    {
      ds8. c16 b a
      b4 r8
    }
    {
      b8. b'16 fs ds
      b4 r8
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b8*6
  %r2*8
  a8:m
  s8*5
  % r8*3
  b8*18
  %b
  %r8*14
  e8*6:m
  %r4 r8*3 = 5/8
  a8*8:m
  %r8*4 r8*3 = 7/8
  b8*13
  %r4 r8*10 =12/8
  a8*9:m
  %r4 r8*6 =8/8
  b8
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
