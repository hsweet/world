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
    d4 f
    a4 d
    f2~
    f2

    e8 f g f
    e8 d cs d
    e2~
    e8 a, bf a|

    a4. cs8
    e4. d8
    \tuplet 3/2{cs8 d e} \tuplet 3/2{d cs bf}
    a2

    e'8 d cs bf
    a8 g f e
  }
  \alternative {
    {
      d2
      \tuplet 3/2{a'8 gs f} \tuplet 3/2{f e d}
    }
    { d2~d2 }
  }
  \break
  \repeat volta 2{
    \mark \default
    a'8 d f e
    d8 [c bf a]
    a8 bf bf bf
    bf2

    g8 bf e d
    cs8 bf a g
    gs8 a a a
    a2|

    a8 bf cs d
    e8 f \tuplet 3/2{f8 e d}|
    cs2~
    cs2

    e8 d cs bf
    a8 g f e
    d2
    d4. r8
  }
  %
  \break
  %c
  \repeat volta 2{
    \mark \default
    a''4 gs
    a4 bf
    a4. f8
    d2

    bf'4. a8
    g8 a bf g
    a2~
    a2

    bf8 a g4
    g8 f e4
    g8 f e4
    e8 d cs4

    a8 bf cs d
    e8 f cs e
  }
  \alternative {
    {
      d2
      \tuplet 3/2{a'8 gs f} \tuplet 3/2{f e d}
    }
    { d2~d4 r}
  }
}

secund = \relative c' {
  \global

  \repeat volta 2{
    d4 f
    a4 d
    d2~
    d8 a d f

    e8 f g f
    e8 d cs d
    cs2
    e8 a, bf a

    a4. cs8
    e4. d8
    \tuplet 3/2{cs8 d e} \tuplet 3/2{d cs bf}
    a2

    e'8 d cs bf
    a8 g f e
  }
  \alternative{
    {
      d2
      \tuplet 3/2{a'8 gs f}\tuplet 3/2 {f e d}
    }
    {
      d8(f) f(a)
      d4. r8
    }
  }

  \repeat volta 2{
    a8 d f e
    d8 [c bf a]
    a8 bf bf bf
    bf d, g bf

    g8 a e' d
    cs8 bf a g
    gs8 a a a
    a8 f e d

    a'8 g cs d
    e8 f \tuplet 3/2{f e d}
    a2~
    a8 e a cs

    e8 d cs bf
    a8 g f e
    d2
    d4. r8
  }

  %*********** C ************
  {
    f'4 f
    f4 f
    f4. d8
    a8 d e a

    g4. d8
    bf8 d g e
    f8 a, d e
    f8 e d f

    g8 e e4
    e8 d cs4
    df8 a g4
    g8 f e bf
    a8 bf cs d
    e8 f cs d

    % \alternative {
    d'2
    \tuplet 3/2{a'8 gs f} \tuplet 3/2{f e d}
    %}
    d4. a8
    f'8 d a f
    % }
    %}
  }

}




%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d2*6:m
  a2*2
  a2*6:7
  d2:m
  a2:7
  d2*2:m
  %b
  d2*2:m
  g2*4:m
  d2*2:m
  a2*6:7
  d2*2:m
  %c
  d2*4:m
  g2*2:m
  d2*2:m
  g2*4:m
  a2*2:7
  d2*4:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \melody
    %\new Staff \secund
  >>
  \header{
    title= "Happy Nign"
    subtitle=""
    composer= ""
    instrument = "F Horn"
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
