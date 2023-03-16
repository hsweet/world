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
  \key e \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 8*3 b8 b b   %lead in notes
  \mark \default
  %r4 r8 e e e
  g'4 ds2~|
  ds4 a b
  a4 g2~
  g4 e' fs8 e
  d4 a2~|
  a4 b c
  c4 b2~|
  b4 f' \tuplet 3/2 {f8 f f}|
  f4 e2~
  e4 e e
  d4 c2|

  g'4  g g|%orig chart has 1/8ths
  g4 fs2~|
  fs4 ef fs| %af?
  fs4 b,2~| %rit
  b4 g'^"tacit chords" fs
  \break

  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    c2.~
    c4 fs e
    b2.~
    b4 as b

    cs2.|
    ds2 d4 |%check time


  }
  \alternative {
    {
      e2.~|
      e4 g fs |
    }
    {
      e2.~
      e2 r4
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e4*3:m
  b4*6:7
  e4*6:m
  d4*6:7
  g4*3
  d4*3:m6
  e4*6:7
  a4*3:m
  as4*3:m %diminished too
  fs4*6:7
  b4*6:7

  %b
  a4*6:m
  e4*6:m
  fs4*3:7
  b4*3:7
  e4*12:m

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
    title= "Ne Serdis'"
    subtitle="Don't Be Mad"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 200

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
