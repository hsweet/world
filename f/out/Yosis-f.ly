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
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    a8 f' e d cs a cs d
    e4 e e e
    a,8 f' e d cs a cs d
    e4. a8(a2)|

    a,8 f' e d cs a cs d
    e4 e e e
    g8 f e d cs d bf cs

  }
  \alternative { { a1}{ a4 a b cs} }
  \break

  \repeat volta 2{
    d4. f8(f2)
    r8 f f f f e e d|
    d4. f8(f2)
    r8 f f f f e e d|

    e4. g8(g2)
    r8 g g g g a16 g f8 g|
    a4 g f g
  }
  \alternative {
    {

      a4 g f e
    }
    {
      a4 g f e
      d1
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a1*6
  g1:m
  a1*2
  %add progression for 2nd ending
  d1*2:m
  bf1*2
  c1
  a1:7
  f1
  a1
  a1
  d1:m


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
    title= "Yosis ישיש"
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
