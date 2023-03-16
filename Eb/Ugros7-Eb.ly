\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody =\transpose b e'\relative c''' {
  \clef treble
  \key fis \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes


  b8  [cis d b]
  cis4 ais8 fis
  b8 [cis d b]
  cis4 ais8 fis \bar ".."

  e8 [e e e] |
  a4 a8 a
  b8 [b a g]
  fis4 fis8 fis|


  %\alternative { { }{ } }


  b8-.  cis-. d16->(cis)b8-.|
  cis4-- ais8->-. fis-.|
  b16\upbow(ais)b cis  d->(cis) b8-.|
  cis4-- ais8\upbow-. fis \upbow -.

  \repeat volta 2{
  \mark \default
    \grace dis e8 e fis16-> e fis gis|
    a8-- gis16(a) b16-> a gis a|
    b16 ais b8-. a->-.  g-.|
    fis4 \grace b fis8->-. fis->-.



  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
  A -- dott Is -- ten sze -- ke -- ret,
  Sze -- de -- rem -- nek ke -- re -- ket,
  U -- ve -- gem -- nek fe -- ne -- ket,
  Ab -- bol i -- szom e -- le -- get.
}
%################################# Chords #######################
harmonies = \chordmode {

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
    title= "Adott Isten szekeret"
    subtitle="Urgros 7"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
