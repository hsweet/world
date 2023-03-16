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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    b8 g' fs e ds b ds e
    fs4 fs fs fs
    b,8 g' fs e ds b ds e
    fs4. b8(b2)|

    b,8 g' fs e ds b ds e
    fs4 fs fs fs
    a8 g fs e ds e c ds

  }
  \alternative { { b1}{ b4 b cs ds} }
  \break

  \repeat volta 2{
    e4. g8(g2)
    r8 g g g g fs fs e|
    e4. g8(g2)
    r8 g g g g fs fs e|

    fs4. a8(a2)
    r8 a a a a b16 a g8 a|
    b4 a g a
  }
  \alternative {
    {

      b4 a g fs
    }
    {
      b4 a g fs
      e1
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b1*6
  a1:m
  b1*2
  %add progression for 2nd ending
  e1*2:m
  c1*2
  d1
  b1:7
  g1
  b1
  b1
  e1:m


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
