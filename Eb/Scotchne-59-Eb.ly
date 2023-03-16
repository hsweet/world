\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

\markup{ Changed repeat on B }

global = {
  \clef treble
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   fs8 b fs b
   fs8 b d16 cs b8
   d16 cs b8 cs d
   es8 fs4.

   fs,8 b fs b
   fs8 b d16 cs b8
   d16 cs b8 cs d
   b2
  }


   \mark \default
   es8 fs gs a
   gs8 fs4.
   fs8 es4.
   es8 d4.

  \tuplet 3/2{ a'8 gs fs} \tuplet 3/2{fs es d }
  \tuplet 3/2{ fs8 es d} \tuplet 3/2{d cs b}
   b2~
   b2

   es8 fs gs a
   gs8 cs4.->
   b8 a gs fs
   es8 d4.

   \tuplet 3/2{ a'8 gs fs} \tuplet 3/2{fs es d }
  \tuplet 3/2{ fs8 es d} \tuplet 3/2{es d cs}
   %c'8 b a gs
   %a8 gs f e
   b2~
   b2

   fs'8 b, cs d
   e8 d cs b
   d8 cs d e
   fs2

   a8 gs fs es
   fs8 es fs gs
   a8 gs fs es
   fs4. fs8
\repeat volta 2{
   es8 fs gs a
   gs8 cs4.->
   b8 a gs fs
   es8 d4.

   \tuplet 3/2{ a'8 gs fs} \tuplet 3/2{fs es d }
   \tuplet 3/2{ fs8 es d} \tuplet 3/2{es d cs}
   %c'8 b a gs
   %a8 gs f e
   b2~
   b2
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b2*6:m
  fs2:7
  b2:m
  %b
  b2*5:m
  fs2:7
  b2*3:m
  cs2
  b2*3:m
  fs2:7
  b2*11:m
  cs2
  b2*3:m
  fs2:7
  b2*2:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Scotshne #59"
    subtitle=" ‫סקאָטשנאַ‬"
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
