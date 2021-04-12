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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
first =  { r8 e16 e e8 e f e f [e]| }
second = { r8 d16 d d8 d e d e [d]  }
third =  { r8 a16 a a8 a b a b [a]  }

melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \first
  \first
  r8 e16 e e8 e f e d [c]|
  d16 c b8 (b2.)|
  \second
  \second
  r8 d16 d d8 d e d c [d]|
  e1
  \first
  \first
  r8 e16 e e8 e a a a [g]
  g4 f2.|

  \third
  %\time 3/4
  r8 b4 a8 f4 d|
  \time 4/4
  \transpose c c'\third
  %\time 3/4
  r8 c'4 a8 e4 c|
  %\time 4/4
  \first
  gs8 f e d c4 d
  e1
  r8 e16 e e8 e a^rit a  a [g]|
  g4 f2.|
  %\time 3/4
  r8 a16 a  a8 a b a b [c]
  r8 a16 a a8 a d c b [a]|
  %\time 4/4
  gs8 [f] e [d] c [d] b [c]
  a1 \fermata

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a1*3:m
  e1*4:7
  a1*4:m
  d4*12:m
  a4*8:m
  e1*2:7
  a1*2:m
  \parenthesize d4*8:m
  a4*4:m
  e1:7
  a1:m
}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff  \melody
    %\new Staff \transpose c c'\melody

  >>
  \header{
    title= "Porch Tango"
    subtitle=""
    composer= "Dushka Ramic"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}
