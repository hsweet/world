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

melody = \transpose f c \relative c' {
  \clef treble

  \key a \minor

  %\partial 16*3 a16 d f   %lead in notes

  \time 3/4
  f8 ^\markup "Poco Rubato" d d d4.
  f8  f f a4.
  \time 4/4 gs4 f e r \break

  \time 3/4 d8 f a a4.
  d8 c b a4.
  \time 4/4 e8 e4. e4 r \break

  \time 3/4 d8 f a a4.
  d8 c b a4.
  \time 4/4 gs4 f e r \break

  \time 3/4 f'8  d d d4.
  a8 a gs4 f
  \time 4/4 d8 d4. d4 r


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
  a4:m s2
  c4 s2
  b2:7
  e2

  a4:m r4*5 b2:7
  e2

  a4:m s4*5 b2:7 e2
  a4:m s2 c4 s2 a1:m
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
