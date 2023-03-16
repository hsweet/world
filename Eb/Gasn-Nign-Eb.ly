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
  \key b \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  \partial 8 d8  %lead in notes

  \repeat volta 2{
    \mark \default
    d16 e8. e8|
    e4 \trill d8
    d16 b(b4)~
    b8 r d

    d16 e8. e8
    e8. \trill d16 fs e
    d8. a16 d a|
    d8 r a

    a8.d16 cs d
    e8. f16 gs a
    b8. c16 b a
    gs8. \trill f16 e d|

    d8. cs16 e cs|

    %f8. e16 g e
    d8. b16 \tuplet 3/2{c b a}
    b8. b'16 fs d|

  }

  \alternative {
    {b8 r4 }
    {b8. fs16 b d}

  }

  \repeat volta 2{
    \mark \default
    fs4.~
    fs8. fs 16 \tuplet 3/2{a gs fs}
    es16 gs fs4~
    fs8. b,16 d fs

    a8. gs16 \tuplet 3/2{a gs fs}
    a8. gs16 \tuplet 3/2{a gs fs}
    es16 gs fs4~
    fs8. fs,16 b d

    <<
      {
    fs8. es16 \tuplet 3/2{fs es d}
    fs8. es16 \tuplet 3/2{fs es d}
    cs16 e d4~
    d8.fs,16 b cs|
      }
    \\
    {b4. a4. gs4. g4.}
    >>

    d'8. cs16 \tuplet 3/2{d cs b}|
    d8. cs16 \tuplet 3/2{d cs b}|
    as16 cs b4~
    b8 r4

  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s8
  e8*6:m
  b8*6:m
  e8*3:m
  a8*3:7
  d8*6
  d8*6:m
  e8*6
  b8*2:m e8:m
  b8*2:m a8:m
  b8*9:m
  %b
   b8*3:m
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
