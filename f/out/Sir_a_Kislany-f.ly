\version "2.18.0"
\language "english"
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
  \key a \minor
  %\key g \minor
  \time 6/8
}
%\markup{ Got something to say? }

%#################################### Melody ########################
notes = \transpose d a,\relative c'' {

  %\partial 16*3 a16 d f   %lead in notes


  d8  d4 e8 d4
  \grace {e16 ([f]} g8) e4 e8 d4
  f8 f16[ (g a8)] a a4|
  \grace g8 (a)f4 e8 d4

  c8 c16[(d e8)]d8 d4
  c8 c4 d8 c s8|
  f8 f4 f8 a[ (gs16 a)]|
  a8 f4 e8 d4


  \grace d16(g8) f4 e8 d4
  e8 d4 e d8

  \repeat volta 2{
    \time 4/4
    a8 a a a e'4(e16 d e d)|
    a8 a4. a4 s4
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
harmonies = \transpose d a, \chordmode {
  d4:m s4*2
  c8 s8*2
  g8  s8*2
  f8 s8*2
  a8 s8*2
  d8:m s8*5
  c8 s8*2
  g8 s8*2

  c8 s8*2
  g8
  c8
  s8
  f8 s8*2
  a8 s8*2
  d8:m s8*5

  bf8 s8*5
  d8:m s8*2
  e8 s8*2
  a2
  e2
  a1
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
