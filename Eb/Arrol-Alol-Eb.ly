\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

melody = \transpose g' d' \relative c''' {
  \clef treble

  \key b \minor

  %\partial 16*3 a16 d f   %lead in notes

  \time 3/4
  g8 ^\markup "Poco Rubato" e e e4.
  g8  g g b4.
  \time 4/4 ais4 g fis r \break

  \time 3/4 e8 g b b4.
  e8 d cis b4.
  \time 4/4 fis8 fis4. fis4 r \break

  \time 3/4 e8 g b b4.
  e8 d cis b4.
  \time 4/4 ais4 g fis r \break

  \time 3/4 g'8  e e e4.
  b8 b ais4 g
  \time 4/4 e8 e4. e4 r


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
  b4:m s2
  d4 s2
  cis2:7
  fis2

  b4:m r4*5 cis2:7
  fis2

  b4:m s4*5 cis2:7 fis2
  b4:m s2 d4 s2 b1:m
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
