\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 8*3 e8 e e   %lead in notes
  \mark \default
  %r4 r8 e e e
  c'4 gs2~|
  gs4 d e
  d4 c2~
  c4 a' b8 a
  g4 d2~|
  d4 e f
  f4 e2~|
  e4 bf' \tuplet 3/2 {bf8 bf bf}|
  bf4 a2~
  a4 a a
  g4 f2|

  c'4  c c|%orig chart has 1/8ths
  c4 b2~|
  b4 af b| %af?
  b4 e,2~| %rit
  e4 c'^"tacit chords" b
  \break

  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    f2.~
    f4 b a
    e2.~
    e4 ds e

    fs2.|
    gs2 g4 |%check time


  }
  \alternative {
    {
      a2.~|
      a4 c b |
    }
    {
      a2.~
      a2 r4
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a4*3:m
  e4*6:7
  a4*6:m
  g4*6:7
  c4*3
  g4*3:m6
  a4*6:7
  d4*3:m
  ds4*3:m %diminished too
  b4*6:7
  e4*6:7

  %b
  d4*6:m
  a4*6:m
  b4*3:7
  e4*3:7
  a4*12:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Ne Serdis'"
    subtitle="Don't Be Mad"
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
