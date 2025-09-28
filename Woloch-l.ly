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
  \key g \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 8 d8    %lead in notes

  \repeat volta 2{
    \mark \default
    g4. fs16 d
    g4. fs16 d
    g8 fs16 d g8 fs16 d|
    g4. g16 a

    bf8 bf a bf16 a|
    g4. g16 a
    bf8 bf a bf16 a|
    g8 a bf c16 a|

    bf8 bf16 a a8 a16 fs
    g8 a bf c16 a|
    bf8 bf16 a a8 a16 fs
    g4. r8

  }


  \repeat volta 2{
    \mark \default
    g8 ef' ef16 d d c
    d2
    g,8 ef' ef16 d d c
    d2

    d16 c bf a g a bf c|
    d16 c bf a g a bf g
    a2
    c8 c16 c c8 bf
    a8 a16 a c8 bf
    a8 a16 g a8 a16 fs
    g2
  }
  \mark \default
  g4. a16 bf
  c16 bf a g a8 a
  d4 r

  g,4. a16 bf
  c16 bf a g d'8 d
  d4 r|

  g,4. a16 b
  c8 c16 a b8 b16 g|
  %a8 a16 fs  g4. fs16 d    % ????????????? mistake in original chart
  \time 3/4
  a8 a16 fs g4. fs16 d
  % \partial 4 g8 ^pickup_measure fs16d  % half measure
}

%################################# Chords #######################
harmonies = \chordmode {
  s8
  g2*12:m
  g2*6:m
  d2*4
  g2:m
  g2*2:m
  d2
  g4*3:m
  d4*3
  g2*3

}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Woloch'l"
    subtitle="KMDMP 16-15-1403a"
    composer= ""

    instrument =""
    arranger= "Arr. Christina Crowder"
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
