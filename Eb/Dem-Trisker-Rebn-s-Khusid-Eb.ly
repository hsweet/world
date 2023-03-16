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
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
cadence = { d'16 cs' cs' d' d' c' c' b }

melody = \relative c' {
  \global
  \partial 8 fs8    %lead in notes

  \repeat volta 2{
    \mark \default
    b8 fs'16 e d8 d
    d16 e cs d b8. b16
    b16 fs d' b fs' d b' fs
    b8 a16 g fs8. fs16|

    fs16 e a g fs8 e16 d |
    e16 f e f e8. d16|
    \cadence
    b2
  }

  %\break
  \repeat volta 2{
    \mark \default
    a8 d16 e  fs8 e16 d
    fs8 e16 d fs8. a16
    a16 g g fs a g g fs
    a16 g g fs a g g fs

    r16 a, b cs d e fs g
    a16 b c b a g fs e
    \cadence
    b2
  }
  %\break
  \repeat volta 2{
    \mark \default
    d4. cs16 d
    e8 c b4
    d4.  cs16 d
    e8 c b8. b'16
    c16 b a g fs e d cs
    d16 a' fs a e8. d16
    \cadence
    b2
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  % Judy's chords
  s8
  b2*4:m
  d2
  e2:m
  b4:m e4:m
  b2:m
  %b
  d2*6
  b4:m a4:m
  b2:m
  %c
  b2:m
  a4:m b4*3:m
  a4:m b4:m
  d4*3 e4:m
  b4:m a4:m
  b2:m

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
