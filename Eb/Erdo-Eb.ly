\version "2.18.0"
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
  \key b \minor
  \time 4/4
}
%\markup{ Got something to say? }

%#################################### Melody ########################
notes = \relative c'' {

  a4.  d8  \tuplet 3/2 { cis4 d2} |
  e2 a2|
  g8 fis e fis e d4.|
  a2 a4 r4|
  a8 d4. cis8 d4.|
  e2 a|

  g8 fis e fis e d4.|
  a2 a4 r4|
  \tuplet 3/2 { a'4 a2 } \tuplet 3/2 { b4 g2 }|
  fis8 e fis g b4 a
  d,4. d8 e e4.
  fis8 e d cis b4 a|
  a4. d8 cis d4.
  e2 a
  g8 fis e fis e d4.
  a2 a4 r|

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
  d1
  a1
  a2:7 d2
  a1
  d1
  a1
  a2:7 d2
  a1
  d2 gis2
  d2 gis4 a4
  d2 a2
  d2 gis4 a4
  d1
  a1
  a2:7 d2
  a1
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
