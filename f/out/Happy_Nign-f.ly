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
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    a4 c
    e4 a
    c2~
    c2

    b8 c d c
    b8 a gs a
    b2~
    b8 e, f e|

    e4. gs8
    b4. a8
    \tuplet 3/2{gs8 a b} \tuplet 3/2{a gs f}
    e2

    b'8 a gs f
    e8 d c b
  }
  \alternative {
    {
      a2
      \tuplet 3/2{e'8 ds c} \tuplet 3/2{c b a}
    }
    { a2~a2 }
  }
  \break
  \repeat volta 2{
    \mark \default
    e'8 a c b
    a8 [g f e]
    e8 f f f
    f2

    d8 f b a
    gs8 f e d
    ds8 e e e
    e2|

    e8 f gs a
    b8 c \tuplet 3/2{c8 b a}|
    gs2~
    gs2

    b8 a gs f
    e8 d c b
    a2
    a4. r8
  }
  %
  \break
  %c
  \repeat volta 2{
    \mark \default
    e''4 ds
    e4 f
    e4. c8
    a2

    f'4. e8
    d8 e f d
    e2~
    e2

    f8 e d4
    d8 c b4
    d8 c b4
    b8 a gs4

    e8 f gs a
    b8 c gs b
  }
  \alternative {
    {
      a2
      \tuplet 3/2{e'8 ds c} \tuplet 3/2{c b a}
    }
    { a2~a4 r}
  }
}

secund = \relative c' {
  \global

  \repeat volta 2{
    a4 c
    e4 a
    a2~
    a8 e a c

    b8 c d c
    b8 a gs a
    gs2
    b8 e, f e

    e4. gs8
    b4. a8
    \tuplet 3/2{gs8 a b} \tuplet 3/2{a gs f}
    e2

    b'8 a gs f
    e8 d c b
  }
  \alternative{
    {
      a2
      \tuplet 3/2{e'8 ds c}\tuplet 3/2 {c b a}
    }
    {
      a8(c) c(e)
      a4. r8
    }
  }

  \repeat volta 2{
    e8 a c b
    a8 [g f e]
    e8 f f f
    f a, d f

    d8 e b' a
    gs8 f e d
    ds8 e e e
    e8 c b a

    e'8 d gs a
    b8 c \tuplet 3/2{c b a}
    e2~
    e8 b e gs

    b8 a gs f
    e8 d c b
    a2
    a4. r8
  }

  %*********** C ************
  {
    c'4 c
    c4 c
    c4. a8
    e8 a b e

    d4. a8
    f8 a d b
    c8 e, a b
    c8 b a c

    d8 b b4
    b8 a gs4
    af8 e d4
    d8 c b f
    e8 f gs a
    b8 c gs a

    % \alternative {
    a'2
    \tuplet 3/2{e'8 ds c} \tuplet 3/2{c b a}
    %}
    a4. e8
    c'8 a e c
    % }
    %}
  }

}




%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2*6:m
  e2*2
  e2*6:7
  a2:m
  e2:7
  a2*2:m
  %b
  a2*2:m
  d2*4:m
  a2*2:m
  e2*6:7
  a2*2:m
  %c
  a2*4:m
  d2*2:m
  a2*2:m
  d2*4:m
  e2*2:7
  a2*4:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
    %\new Staff \secund
  >>
  \header{
    title= "Happy Nign"
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
