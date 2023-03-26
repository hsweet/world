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
  \key g \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    d,8 bf' a g fs d fs g
    a4 a a a
    d,8 bf' a g fs d fs g
    a4. d8(d2)|

    d,8 bf' a g fs d fs g
    a4 a a a
    c8 bf a g fs g ef fs

  }
  \alternative { { d1}{ d4 d e fs} }
  \break

  \repeat volta 2{
    g4. bf8(bf2)
    r8 bf bf bf bf a a g|
    g4. bf8(bf2)
    r8 bf bf bf bf a a g|

    a4. c8(c2)
    r8 c c c c d16 c bf8 c|
    d4 c bf c
  }
  \alternative {
    {

      d4 c bf a
    }
    {
      d4 c bf a
      g1
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d1*6
  c1:m
  d1
  d1
  %add progression for 2nd ending
  g1*2:m
  ef1*2
  f1
  d1:7
  bf1
  d1
  d1
  g1:m


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
    title= "Yosis ישיש"
    subtitle=""
    composer= ""
    instrument = "Violin"
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
