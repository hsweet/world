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
  \key fs \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
first =  { r8 cs'16 cs' cs'8 cs' d' cs' d' [cs']| }
second = { r8 b16 b b8 b cs' b cs' [b]  }
third =  { r8 fs'16 fs' fs'8 fs' gs' fs' gs' [fs']  }

melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \first
  \first
  r8 cs16 cs cs8 cs d cs b [a]|
  b16 a gs8 (gs2.)|
  \second
  \second
  r8 b16 b b8 b cs b a [b]|
  cs1
  \first
  \first
  r8 cs16 cs cs8 cs fs fs fs [e]
  e4 d2.|

  \third
  %\time 3/4
  r8 gs4 fs8 d4 b|
  \time 4/4
  \transpose a a'\third
  %\time 3/4
  r8 a'4 fs8 cs4 a|
  %\time 4/4
  \first
  es8 d cs b a4 b
  cs1
  r8 cs16 cs cs8 cs fs^rit fs  fs [e]|
  e4 d2.|
  %\time 3/4
  r8 fs16 fs  fs8 fs gs fs gs [a]
  r8 fs16 fs fs8 fs b a gs [fs]|
  %\time 4/4
  es8 [d] cs [b] a [b] gs [a]
  fs1 \fermata

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  fs1*3:m
  cs1*4:7
  fs1*4:m
  b4*12:m
  fs4*8:m
  cs1*2:7
  fs1*2:m
  \parenthesize b4*8:m
  fs4*4:m
  cs1:7
  fs1:m
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
