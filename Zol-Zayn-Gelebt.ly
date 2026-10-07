
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
theme = {
  d8 [ef d ef]
  fs8 g fs8.\prall ef16]  g8 fs4.~|
  fs4 r8 d8|

  fs8 [g fs g]
  %fs8 g fs8.\prall ef16
  a8 bf a8. g16
  bf8 a4.

}

melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
  \repeat volta 2{
    \mark \default
    \theme
    r8 d, e fs|

    g8. fs16 g8 a
    bf8 [a bf b]
    c2~\trill
    c2~
    c8 bf a8. g16

    fs8 [g fs8.\prall ef16]
  }
  \alternative{
    {
      d2~
      d4 r8 a8
    }
    {
      d2
      r4 d
    }
  }
  \break
  \mark \default
  %B
  d'4.cs8
  d4. cs8
  d2~
  d2

  cs8 [d cs bf]|
  a8. g16 fs8 g
  gs8 a4.~
  a4 d,

  d'4.cs8
  d4. cs8
  d2~|
  d4. cs16 d|

  e8 [d cs bf]
  cs8 [bf a g]
  a4-> d->
  d4-> d
  ,\theme % down an octave
  r8 d, e fs

  g8. fs16 g8 a
  bf8 a bf b
  c2 \trill ~
  c2 ~
  c8 bf a8. g16
  fs8 g fs8. ef16|
  d2
  r8 d' a g
  \break
  \repeat volta 2{
    \mark \default
    fs8 g a4
    r8 fs16 a g fs ef8|
    fs8 ef d4~
    d8[ d' a g]

    fs8 [g a bf]
    c8 a16 c bf a g8|
    a2
    r8 d a  g

    fs8 g a4
    r8 fs16 a g fs ef8|
    d8 ef c4~
    c8 [a' bf b]

    c8 [bf a g]
    fs16 g a8 g16 fs ef8

  }
  \alternative{
    {
      d2
      r8 d' a g
    }
    {
      d2~
      d2
    }
  }

}

%################################# Chords #######################
harmonies = \chordmode {
  d2*8
  g2*2:m
  c2*4:m
  d2*2
  d2*2
  %b
  g2*6:m6
  d2*2
  g2*6:m6
  d2*10
  g2*2:m
  c2*4:m
  d2*2
  %c
  d4*21
  c4*7:m
  d2*2
  d2*2

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
    title= "Zol Zayn Gelebt"
    subtitle=""
    composer= "Dave Tarras, 1940"
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 0\cm}
}

