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
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    b4 d
    fs4 b
    d2~
    d2

    cs8 d e d
    cs8 b as b
    cs2~
    cs8 fs, g fs|

    fs4. as8
    cs4. b8
    \tuplet 3/2{as8 b cs} \tuplet 3/2{b as g}
    fs2

    cs'8 b as g
    fs8 e d cs
  }
  \alternative {
    {
      b2
      \tuplet 3/2{fs'8 es d} \tuplet 3/2{d cs b}
    }
    { b2~b2 }
  }
  \break
  \repeat volta 2{
    \mark \default
    fs'8 b d cs
    b8 [a g fs]
    fs8 g g g
    g2

    e8 g cs b
    as8 g fs e
    es8 fs fs fs
    fs2|

    fs8 g as b
    cs8 d \tuplet 3/2{d8 cs b}|
    as2~
    as2

    cs8 b as g
    fs8 e d cs
    b2
    b4. r8
  }
  %
  \break
  %c
  \repeat volta 2{
    \mark \default
    fs''4 es
    fs4 g
    fs4. d8
    b2

    g'4. fs8
    e8 fs g e
    fs2~
    fs2

    g8 fs e4
    e8 d cs4
    e8 d cs4
    cs8 b as4

    fs8 g as b
    cs8 d as cs
  }
  \alternative {
    {
      b2
      \tuplet 3/2{fs'8 es d} \tuplet 3/2{d cs b}
    }
    { b2~b4 r}
  }
}

secund = \relative c'' {
  \global

  \repeat volta 2{
    b4 d
    fs4 b
    b2~
    b8 fs b d

    cs8 d e d
    cs8 b as b
    as2
    cs8 fs, g fs

    fs4. as8
    cs4. b8
    \tuplet 3/2{as8 b cs} \tuplet 3/2{b as g}
    fs2

    cs'8 b as g
    fs8 e d cs
  }
  \alternative{
    {
      b2
      \tuplet 3/2{fs'8 es d}\tuplet 3/2 {d cs b}
    }
    {
      b8(d) d(fs)
      b4. r8
    }
  }

  \repeat volta 2{
    fs8 b d cs
    b8 [a g fs]
    fs8 g g g
    g b, e g

    e8 fs cs' b
    as8 g fs e
    es8 fs fs fs
    fs8 d cs b

    fs'8 e as b
    cs8 d \tuplet 3/2{d cs b}
    fs2~
    fs8 cs fs as

    cs8 b as g
    fs8 e d cs
    b2
    b4. r8
  }

  %*********** C ************
  {
    d'4 d
    d4 d
    d4. b8
    fs8 b cs fs

    e4. b8
    g8 b e cs
    d8 fs, b cs
    d8 cs b d

    e8 cs cs4
    cs8 b as4
    bf8 fs e4
    e8 d cs g
    fs8 g as b
    cs8 d as b

    % \alternative {
    b'2
    \tuplet 3/2{fs'8 es d} \tuplet 3/2{d cs b}
    %}
    b4. fs8
    d'8 b fs d
    % }
    %}
  }

}




%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b2*6:m
  fs2*2
  fs2*6:7
  b2:m
  fs2:7
  b2*2:m
  %b
  b2*2:m
  e2*4:m
  b2*2:m
  fs2*6:7
  b2*2:m
  %c
  b2*4:m
  e2*2:m
  b2*2:m
  e2*4:m
  fs2*2:7
  b2*4:m

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
