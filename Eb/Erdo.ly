\version "2.18.0"
\language "english"
\pointAndClickOff
%moved \header into \score for includes to work

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }
common={
  \clef treble
  \key d \minor
  \time 4/4
}
%\markup{ Got something to say? }

%#################################### Melody ########################
notes = \relative c {

  c4.  f8  \tuplet 3/2 { e4 f2} |
  g2 c2|
  bf8 a g a g f4.|
  c2 c4 r4|
  c8 f4. e8 f4.|
  g2 c|

  bf8 a g a g f4.|
  c2 c4 r4|
  \tuplet 3/2 { c'4 c2 } \tuplet 3/2 { d4 bf2 }|
  a8 g a bf d4 c
  f,4. f8 g g4.
  a8 g f e d4 c|
  c4. f8 e f4.
  g2 c
  bf8 a g a g f4.
  c2 c4 r|

}

melody=

<<
  \common
  % \transpose c c' \notes
  \\
  \notes
>>

%################################# Lyrics #####################
%\addlyrics{ Doe a deer }
%################################# Chords #######################
harmonies = \chordmode {
  f1
  c1
  c2:7 f2
  c1
  f1
  c1
  c2:7 f2
  c1
  f2 b2
  f2 b4 c4
  f2 c2
  f2 b4 c4
  f1
  c1
  c2:7 f2
  c1
  %{
  f1
  c1
  bes2
  f2
  c1
  f1
  c1
  bes1
  c1
  f2
  bes2
  f2
  bes4
  c4
  f1
  c1
  f1
  c1
  bes1
  c1
  %}
  %old chords
  %{
  f1 c1 c2:7 f2
  c1
  f1 c1
  c2:7 f2 c1 f2 b2 f2 b4 c4 f2 c2
  f2 b4 c4 f1 c1 c2:7 f2 c1

  %}
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \notes
  >>
  \header{
    title= "Erdo"
instrument= "Eb"
    subtitle= ""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
