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
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
first =  { r8 b,16 b, b,8 b, c b, c [b,]| }
first_b =  { r8    b'16 ^ Octave b, b,8 b, c b, c [b,]| }   % for octve part
second = { r8 a,16 a, a,8 a, b, a, b, [a,]  }
third =  { r8 e16 e e8 e fs e fs [e]  }

melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \first
  \first
  r8 b16 b b8 b c b a [g]|
  a16 g fs8 (fs2.)|
  \second
  \second
  r8 a16 a a8 a b a g [a]|
  b1
  \first
  \first
  r8 b16 b b8 b e e e [d]
  d4 c2.|

  \third
  %\time 3/4
  r8 fs4 e8 c4 a|
  \time 4/4
  \transpose g, g\third
  %\time 3/4
  r8 g'4 e8 b4 g|
  %\time 4/4
  \first
  ds8 c b a g4 a
  b1
  r8 b16 b b8 b e^rit e  e [d]|
  d4 c2.|
  %\time 3/4
  r8 e16 e  e8 e fs e fs [g]
  r8 e16 e e8 e a g fs [e]|
  %\time 4/4
  ds8 [c] b [a] g [a] fs [g]
  e1 \fermata  \bar"||"


%****************** 8 va ***********************

 \first_b
  \first
  r8 b16 b b8 b c b a [g]|
  a16 g fs8 (fs2.)|
  \second
  \second
  r8 a16 a a8 a b a g [a]|
  b1
  \first
  \first
  r8 b16 b b8 b e e e [d]
  d4 c2.|

  \third
  %\time 3/4
  r8 fs4 e8 c4 a|
  \time 4/4
  \transpose g, g\third
  %\time 3/4
  r8 g'4 e8 b4 g|
  %\time 4/4
  \first
  ds8 c b a g4 a
  b1
  r8 b16 b b8 b e^rit e  e [d]|
  d4 c2.|
  %\time 3/4
  r8 e16 e  e8 e fs e fs [g]
  r8 e16 e e8 e a g fs [e]|
  %\time 4/4
  ds8 [c] b [a] g [a] fs [g]
  e1 \fermata

}
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e1*3:m
  b1*4:7
  e1*4:m
  a4*12:m
  e4*8:m
  b1*2:7
  e1*2:m
  \parenthesize a4*8:m
  e4*4:m
  b1:7
  e1:m
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
