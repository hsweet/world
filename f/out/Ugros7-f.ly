\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody =\transpose a, d\relative c'' {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes


  a8  [b c a]
  b4 gs8 e
  a8 [b c a]
  b4 gs8 e \bar ".."

  d8 [d d d] |
  g4 g8 g
  a8 [a g f]
  e4 e8 e|


  %\alternative { { }{ } }


  a8-.  b-. c16->(b)a8-.|
  b4-- gs8->-. e-.|
  a16\upbow(gs)a b  c->(b) a8-.|
  b4-- gs8\upbow-. e \upbow -.

  \repeat volta 2{
  \mark \default
    \grace cs d8 d e16-> d e fs|
    g8-- fs16(g) a16-> g fs g|
    a16 gs a8-. g->-.  f-.|
    e4 \grace a e8->-. e->-.



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
