\version "2.24.0"
\language "english"
%\pointAndClickOff


\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

melody = \relative c' {
  \clef treble

  \key d \minor
  \time 4/4
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \grace  d \tuplet 3/2 {g4 g8}  \tuplet 9/7 { g8 g2.(d'4)}
    d8 c c c4. \grace bf \tuplet 3/2{a8 g4 }
    \tuplet 5/2{g16 (a bf)bf8} d8 d (d2)
    \tuplet 3/2{\grace cs d8} d16 (c) a8  \grace fs g4 r4 r4

    d'4 d2 e4 d2
    c4 bf2 c4 d
  }

  %\alternative { { }{ } }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {

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
    title= "Tol a Vizen Van Egy Malom"
instrument= "Violin"
instrument= "Violin"
    subtitle=""
instrument= "Violin"
instrument= "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
