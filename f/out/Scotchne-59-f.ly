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
  \key a \minor
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
   e8 a e a
   e8 a c16 b a8
   c16 b a8 b c
   ds8 e4.

   e,8 a e a
   e8 a c16 b a8
   c16 b a8 b c
   a2
  }


   \mark \default
   ds8 e fs g
   fs8 e4.
   e8 ds4.
   ds8 c4.

  \tuplet 3/2{ g'8 fs e} \tuplet 3/2{e ds c }
  \tuplet 3/2{ e8 ds c} \tuplet 3/2{c b a}
   a2~
   a2

   ds8 e fs g
   fs8 b4.->
   a8 g fs e
   ds8 c4.

   \tuplet 3/2{ g'8 fs e} \tuplet 3/2{e ds c }
  \tuplet 3/2{ e8 ds c} \tuplet 3/2{ds c b}
   %c'8 b a gs
   %a8 gs f e
   a2~
   a2

   e'8 a, b c
   d8 c b a
   c8 b c d
   e2

   g8 fs e ds
   e8 ds e fs
   g8 fs e ds
   e4. e8
\repeat volta 2{
   ds8 e fs g
   fs8 b4.->
   a8 g fs e
   ds8 c4.

   \tuplet 3/2{ g'8 fs e} \tuplet 3/2{e ds c }
   \tuplet 3/2{ e8 ds c} \tuplet 3/2{ds c b}
   %c'8 b a gs
   %a8 gs f e
   a2~
   a2
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a2*6:m
  e2:7
  a2:m
  %b
  a2*5:m
  e2:7
  a2*3:m
  b2
  a2*3:m
  e2:7
  a2*11:m
  b2
  a2*3:m
  e2:7
  a2*2:m

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
