\version "2.18.0"
\language "english"
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
  \key a \minor
  \time 4/4
}
%\markup{ Got something to say? }

%#################################### Melody ########################
notes = \relative c' {

  g4.  c8  \tuplet 3/2 { b4 c2} |
  d2 g2|
  f8 e d e d c4.|
  g2 g4 r4|
  g8 c4. b8 c4.|
  d2 g|

  f8 e d e d c4.|
  g2 g4 r4|
  \tuplet 3/2 { g'4 g2 } \tuplet 3/2 { a4 f2 }|
  e8 d e f a4 g
  c,4. c8 d d4.
  e8 d c b a4 g|
  g4. c8 b c4.
  d2 g
  f8 e d e d c4.
  g2 g4 r|

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
  c1
  g1
  g2:7 c2
  g1
  c1
  g1
  g2:7 c2
  g1
  c2 fs2
  c2 fs4 g4
  c2 g2
  c2 fs4 g4
  c1
  g1
  g2:7 c2
  g1
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

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \notes
  >>
  \header{
    title= "Erdo"
    subtitle= ""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
