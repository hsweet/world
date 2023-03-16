\version "2.18.0"
%moved \header into \score for includes to work

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }

common = {
  \clef treble
  \key b \minor
  %\key g \minor
  \time 6/8
}
%\markup{ Got something to say? }

%#################################### Melody ########################
notes = \transpose e' b\relative c''' {

  %\partial 16*3 a16 d f   %lead in notes


  e8  e4 fis8 e4
  \grace {fis16 ([g]} a8) fis4 fis8 e4
  g8 g16[ (a b8)] b b4|
  \grace a8 (b)g4 fis8 e4

  d8 d16[(e fis8)]e8 e4
  d8 d4 e8 d s8|
  g8 g4 g8 b[ (ais16 b)]|
  b8 g4 fis8 e4


  \grace e16(a8) g4 fis8 e4
  fis8 e4 fis e8

  \repeat volta 2{
    \time 4/4
    b8 b b b fis'4(fis16 e fis e)|
    b8 b4. b4 s4
  }

  %\alternative { { }{ } }

}
melody= {
  \common
  \notes
  %{  <<
    \transpose c c' \notes
     \\
  \notes
   >>
  %}
}
%################################# Lyrics #####################
%\addlyrics{ Doe a deer }
%################################# Chords #######################
harmonies = \transpose e' b \chordmode {
  e4:m s4*2
  d8 s8*2
  a8  s8*2
  g8 s8*2
  b8 s8*2
  e8:m s8*5
  d8 s8*2
  a8 s8*2

  d8 s8*2
  a8
  d8
  s8
  g8 s8*2
  b8 s8*2
  e8:m s8*5

  c8 s8*5
  e8:m s8*2
  fis8 s8*2
  b2
  fis2
  b1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Sir a Kislany"
    subtitle="Hungarian"
    composer= ""
    arranger= ""

  }
  \layout{indent = 1.0\cm}
  \midi { }
}
