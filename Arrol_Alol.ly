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

melody = \transpose bf f \relative c' {
  \clef treble

  \key d \minor

  %\partial 16*3 a16 d f   %lead in notes

  \time 3/4
  bf'8 ^\markup "Poco Rubato" g g g4.
  bf8  bf bf d4.
  \time 4/4 cs4 bf a r \break

  \time 3/4 g8 bf d d4.
  g8 f e d4.
  \time 4/4 a8 a4. a4 r \break

  \time 3/4 g8 bf d d4.
  g8 f e d4.
  \time 4/4 cs4 bf a r \break

  \time 3/4 bf'8  g g g4.
  d8 d cs4 bf
  \time 4/4 g8 g4. g4 r


  %\alternative { { }{ } }


}
%************************Lyrics Block****************
\addlyrics{
  Ar- rol a- lol so- li - en ral az dg,
  Az en ba- bam most ir- ja bus le- ve- let.
  Jrd meg, ba- bam, a szo- mo- ru sor- so- det
  Hadd tud- jam meg, mi- hez tart- sam ma- ga- mat

}

harmonies = \chordmode {
  %chords are in the transposed key
  d4:m s2
  f4 s2
  e2:7
  a2

  d4:m r4*5 e2:7
  a2

  d4:m s4*5 e2:7 a2
  d4:m s2 f4 s2 d1:m
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
    title= "Arrol Alol Soteten Borul Az Eg"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
