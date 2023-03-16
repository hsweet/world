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
melody =\transpose d g\relative c'' {
  \clef treble
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes


  d8  [e f d]
  e4 cs8 a
  d8 [e f d]
  e4 cs8 a \bar ".."

  g8 [g g g] |
  c4 c8 c
  d8 [d c bf]
  a4 a8 a|


  %\alternative { { }{ } }


  d8-.  e-. f16->(e)d8-.|
  e4-- cs8->-. a-.|
  d16\upbow(cs)d e  f->(e) d8-.|
  e4-- cs8\upbow-. a \upbow -.

  \repeat volta 2{
  \mark \default
    \grace fs g8 g a16-> g a b|
    c8-- b16(c) d16-> c b c|
    d16 cs d8-. c->-.  bf-.|
    a4 \grace d a8->-. a->-.



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
