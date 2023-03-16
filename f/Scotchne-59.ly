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
  \key d \minor
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
   a8 d a d
   a8 d f16 e d8
   f16 e d8 e f
   gs8 a4.

   a,8 d a d
   a8 d f16 e d8
   f16 e d8 e f
   d2
  }


   \mark \default
   gs8 a b c
   b8 a4.
   a8 gs4.
   gs8 f4.

  \tuplet 3/2{ c'8 b a} \tuplet 3/2{a gs f }
  \tuplet 3/2{ a8 gs f} \tuplet 3/2{f e d}
   d2~
   d2

   gs8 a b c
   b8 e4.->
   d8 c b a
   gs8 f4.

   \tuplet 3/2{ c'8 b a} \tuplet 3/2{a gs f }
  \tuplet 3/2{ a8 gs f} \tuplet 3/2{gs f e}
   %c'8 b a gs
   %a8 gs f e
   d2~
   d2

   a'8 d, e f
   g8 f e d
   f8 e f g
   a2

   c8 b a gs
   a8 gs a b
   c8 b a gs
   a4. a8
\repeat volta 2{
   gs8 a b c
   b8 e4.->
   d8 c b a
   gs8 f4.

   \tuplet 3/2{ c'8 b a} \tuplet 3/2{a gs f }
   \tuplet 3/2{ a8 gs f} \tuplet 3/2{gs f e}
   %c'8 b a gs
   %a8 gs f e
   d2~
   d2
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d2*6:m
  a2:7
  d2:m
  %b
  d2*5:m
  a2:7
  d2*3:m
  e2
  d2*3:m
  a2:7
  d2*11:m
  e2
  d2*3:m
  a2:7
  d2*2:m

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
