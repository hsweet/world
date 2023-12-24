\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8 f8  %lead in notes

  \repeat volta 2{
    \mark \default
    f16 g8. g8|
    g4 \trill f8
    f16 d(d4)~
    d8 r f

    f16 g8. g8
    g8. \trill f16 a g
    f8. c16 f c|
    f8 r c

    c8.f16 e f
    g8. af16 b c
    d8. ef16 d c
    b8. \trill af16 g f|

    f8. e16 g e|

    %f8. e16 g e
    f8. d16 \tuplet 3/2{ef d c}
    d8. d'16 a f|

  }

  \alternative {
    {d8 r4 }
    {d8. a16 d f}

  }

  \repeat volta 2{
    \mark \default
    a4.~
    a8. a 16 \tuplet 3/2{c b a}
    gs16 b a4~
    a8. d,16 f a

    c8. b16 \tuplet 3/2{c b a}
    c8. b16 \tuplet 3/2{c b a}
    gs16 b a4~
    a8. a,16 d f

    <<
      {
    a8. gs16 \tuplet 3/2{a gs f}
    a8. gs16 \tuplet 3/2{a gs f}
    e16 g f4~
    f8.a,16 d e|
      }
    \\
    {d4. c4. b4. bf4.}
    >>

    f'8. e16 \tuplet 3/2{f e d}|
    f8. e16 \tuplet 3/2{f e d}|
    cs16 e d4~
    d8 r4

  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s8
  g8*6:m
  d8*6:m
  g8*3:m
  c8*3:7
  f8*6
  f8*6:m
  g8*6
  d8*2:m g8:m
  d8*2:m c8:m
  d8*9:m
  %b
   d8*3:m
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
