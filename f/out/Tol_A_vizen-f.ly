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

melody = \relative c' {
  \clef treble

  \key a \minor
  \time 4/4
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \grace  a \tuplet 3/2 {d4 d8}  \tuplet 9/7 { d8 d2.(a'4)}
    a8 g g g4. \grace f \tuplet 3/2{e8 d4 }
    \tuplet 5/2{d16 (e f)f8} a8 a (a2)
    \tuplet 3/2{\grace gs a8} a16 (g) e8  \grace cs d4 r4 r4

    a'4 a2 b4 a2
    g4 f2 g4 a
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
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Tol a Vizen Van Egy Malom"
    subtitle=""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
