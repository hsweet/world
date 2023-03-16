\version "2.18.0"
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
  \key a \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  \partial 8 c8  %lead in notes

  \repeat volta 2{
    \mark \default
    c16 d8. d8|
    d4 \trill c8
    c16 a(a4)~
    a8 r c

    c16 d8. d8
    d8. \trill c16 e d
    c8. g16 c g|
    c8 r g

    g8.c16 b c
    d8. ef16 fs g
    a8. bf16 a g
    fs8. \trill ef16 d c|

    c8. b16 d b|

    %f8. e16 g e
    c8. a16 \tuplet 3/2{bf a g}
    a8. a'16 e c|

  }

  \alternative {
    {a8 r4 }
    {a8. e16 a c}

  }

  \repeat volta 2{
    \mark \default
    e4.~
    e8. e 16 \tuplet 3/2{g fs e}
    ds16 fs e4~
    e8. a,16 c e

    g8. fs16 \tuplet 3/2{g fs e}
    g8. fs16 \tuplet 3/2{g fs e}
    ds16 fs e4~
    e8. e,16 a c

    <<
      {
    e8. ds16 \tuplet 3/2{e ds c}
    e8. ds16 \tuplet 3/2{e ds c}
    b16 d c4~
    c8.e,16 a b|
      }
    \\
    {a4. g4. fs4. f4.}
    >>

    c'8. b16 \tuplet 3/2{c b a}|
    c8. b16 \tuplet 3/2{c b a}|
    gs16 b a4~
    a8 r4

  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s8
  d8*6:m
  a8*6:m
  d8*3:m
  g8*3:7
  c8*6
  c8*6:m
  d8*6
  a8*2:m d8:m
  a8*2:m g8:m
  a8*9:m
  %b
   a8*3:m
  %{ old b chords
  d8*12:m
  c8*6:m
  d8*12:m
  g8*3:m
  d8*3:m
  f8*6:m
  d8*6:m
    %}
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
   % \new Staff \transpose c c'\melody
  >>
  \header{
    title= "Gasn Nign"
    subtitle="Street Tune"
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
