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
  \key a \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    a16 a a a b8 a|
    d8 cs b a
    cs16 a cs e d8 b
    d8 cs b a

    a16 a a a b8 a|
    d8 cs b a
    cs16 a cs e d8 b

  }
  \alternative { {a4 r }{a4 a16 a b cs } }
  \break

  \repeat volta 2{
    \mark \default
    d8 d a4
    d16 cs d cs b4
    d16 cs e d cs b d cs
  }
  \alternative { {  b16 a cs b a16 a b cs}{  b16 a cs b a8 a} }
  \break
  \repeat volta 2{
    \mark \default
    e'2
    e2
    e4 e
    e4 e
    e8 a, e'4
    e16 d d cs e4
    e8 a, e'4
    e16 d d cs e4
    d8 a d4
    e8 c b a
    c16 c c e d8 b% d d d g
    a4. r8

  }
  % \alternative { { }{ } }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a4*5
  e4:7
  a4*7
  e4:7
  a2*2
  %b
  d4*3
  e4*4
  a4*3
  %c
  a2*4:m
  a2*4
  d2:m
  a4*3:m
  e4
  a2:m
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