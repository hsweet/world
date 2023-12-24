\version "2.18.0"
\language "english"
%\pointAndClickOff
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
  \key d \minor
  %\key g \minor
  \time 6/8
}
%\markup{ Got something to say? }

%#################################### Melody ########################
notes = \transpose g d\relative c''' {

  %\partial 16*3 a16 d f   %lead in notes


  g8  g4 a8 g4
  \grace {a16 ([bf]} c8) a4 a8 g4
  bf8 bf16[ (c d8)] d d4|
  \grace c8 (d)bf4 a8 g4

  f8 f16[(g a8)]g8 g4
  f8 f4 g8 f s8|
  bf8 bf4 bf8 d[ (cs16 d)]|
  d8 bf4 a8 g4


  \grace g16(c8) bf4 a8 g4
  a8 g4 a g8

  \repeat volta 2{
    \time 4/4
    d8 d d d a'4(a16 g a g)|
    d8 d4. d4 s4
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
harmonies = \transpose g d \chordmode {
  g4:m s4*2
  f8 s8*2
  c8  s8*2
  bf8 s8*2
  d8 s8*2
  g8:m s8*5
  f8 s8*2
  c8 s8*2

  f8 s8*2
  c8
  f8
  s8
  bf8 s8*2
  d8 s8*2
  g8:m s8*5

  ef8 s8*5
  g8:m s8*2
  a8 s8*2
  d2
  a2
  d1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Sir a Kislany"
instrument= "Violin"
instrument= "Violin"
    subtitle="Hungarian"
instrument= "Violin"
instrument= "Violin"
    composer= ""
    arranger= ""

  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}