\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes
  \repeat volta 2{
    \mark \default
    d8 d16 d a8 f
    a4. f8|
    g8 g16 g f8 e||
    d2

    d4 a'
    c4 bf8 a
    a4 g8 f
    g8 a4.

    r8 a d a
    d4. a8
    g8. a16 bf a g8|
    g4. d8 f8 g4 f8
    a16 g f8 g16 f e8 d2~
    d2
  }
  \break

  \repeat volta 2{
    \mark \default
    d'2
    d2
    d4 d
    d4 d

    d8 a f' e
    d8 d d4
    d8 a f' e
    d8 d d4

    d8 a f' e
    d8 c bf a
    g4 c8 bf|
    a8 g f e

    d4 a'8. g16
    g8 f4 e8
    d8 d a'8. g16
    g8 f4 e8

    d4 a'8. g16|
    g8 f4 e8
    e8 g e f
    d2


  }

}
%################################# Lyrics #####################
%{
\addlyrics{
  \set stanza = #"1. "
}
%}

%################################# Chords #######################
harmonies = \chordmode {
  d2*2:m
  a2
  d2*7:m
  g2*2:m
  d2:m
  a2
  d2*2:m
  %B
  d2*10:m
  g2:m
  a2
  d2*6:m
  a2
  d2:m
}

\score {
  % transpose score below
  %\transpose d a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Freylekhs Nokh Der Khupe"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

%{
\markup{~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }
\markup{}
\markup{}

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