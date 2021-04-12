\version "2.20.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default
    d8 a'16 g f8 f
    f16 g e f d4
    d16 a f' d a' f d' a
    d8 c16 bf a4|

    a16 g c bf a8 g16 f |
    g16 af g af g4|
    f16 f e e f f ef ef
    d2
  }

  %\break
  \repeat volta 2{
    \mark \default
    c8 f16 g  a8 g16 f
    a8 g16 f a8. c16
    c16 bf bf a c bf bf a
    c16 bf bf a c bf bf a

    r16 c, d e f g a bf
    c16 d ef d c bf a g
    f16 f e e f f ef ef
    d2
  }
  %\break
  \repeat volta 2{
    \mark \default
    f4. f8
    g8 ef d4
    f4. f8
    g8 ef d4
    ef'16 d c bf a g f e
    f16 c' a c g4
    f16 f e e f f ef ef
    d2
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  % Judy's chords
  d2*4:m
  f2
  g2:m
  d4:m g4:m
  d2:m
  %b
  f2*6
  d4:m c4:m
  d2:m
  %c
  d2:m
  c4:m d4*3:m
  c4:m d4:m
  f4*3 g4:m
  d4:m c4:m
  d2:m

 %{    mayrent chords
  d2*4:m
  f2*2
  a2
  d2:m
  %
  f2*6
  d2*2:m
  %
  d2:m
  c4:m
  d4*3:m
  c4:m
  d4:m
  f2*2
  a2
  d2:m
 %}
}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Dem Trisker Rebn's Khusid"
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
  \font-size #2
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
