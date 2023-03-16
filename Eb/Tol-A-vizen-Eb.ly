\version "2.18.0"


\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

melody = \relative c'' {
  \clef treble

  \key b \minor
  \time 4/4
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \grace  b \tuplet 3/2 {e4 e8}  \tuplet 9/7 { e8 e2.(b'4)}
    b8 a a a4. \grace g \tuplet 3/2{fis8 e4 }
    \tuplet 5/2{e16 (fis g)g8} b8 b (b2)
    \tuplet 3/2{\grace ais b8} b16 (a) fis8  \grace dis e4 r4 r4

    b'4 b2 cis4 b2
    a4 g2 a4 b
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
