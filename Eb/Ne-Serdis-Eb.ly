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
  \key fs \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c''' {
  \global
  \partial 8*3 cs8 cs cs   %lead in notes
  \mark \default
  %r4 r8 e e e
  a'4 es2~|
  es4 b cs
  b4 a2~
  a4 fs' gs8 fs
  e4 b2~|
  b4 cs d
  d4 cs2~|
  cs4 g' \tuplet 3/2 {g8 g g}|
  g4 fs2~
  fs4 fs fs
  e4 d2|

  a'4  a a|%orig chart has 1/8ths
  a4 gs2~|
  gs4 f gs| %af?
  gs4 cs,2~| %rit
  cs4 a'^"tacit chords" gs
  \break

  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    d2.~
    d4 gs fs
    cs2.~
    cs4 bs cs

    ds2.|
    es2 e4 |%check time


  }
  \alternative {
    {
      fs2.~|
      fs4 a gs |
    }
    {
      fs2.~
      fs2 r4
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  fs4*3:m
  cs4*6:7
  fs4*6:m
  e4*6:7
  a4*3
  e4*3:m6
  fs4*6:7
  b4*3:m
  bs4*3:m %diminished too
  gs4*6:7
  cs4*6:7

  %b
  b4*6:m
  fs4*6:m
  gs4*3:7
  cs4*3:7
  fs4*12:m

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
