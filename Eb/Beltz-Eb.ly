\version "2.18.0"
\paper{
  tagline = ##f
  #print-all-headers = ##t
  #(set-paper-size "letter")
}

\header{
  title= "Beltz"
  arranger=""

}date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

melody = \transpose b a \relative c' {
  \clef treble

  \key b \minor
  \time 3/4



  \partial 8*2 \tuplet 3/2 {fis8 b cis}

  d8 b r b  \tuplet 3/2{ e8 [e b] }
  b2 \tuplet 3/2 {fis8 b cis}
  d8 b r4 \tuplet 3/2{b8 a b}
  a4(a8.) a16 \tuplet 3/2 {a8 d e}| %4

  fis8 d4 fis8 a16 a g fis
  e4. e8 \tuplet 3/2{b'8 [b, b]}
  b16 b b8 r d \tuplet3/2 {e8 [e c]}
  b4. fis'8 \tuplet 3/2{a8 [g fis]}| %8

  a4. fis8 \tuplet 3/2 {e16 [d e]} d16 e
  d4. fis8 a16 a b a
  d4. a8 a16  g fis g
  fis4. fis8 \tuplet 3/2  {g8 [fis e]}| %12

  g4. fis8 \tuplet 3/2 {fis8 [e d]}
  fis4. e8 \tuplet 3/2 {e8 [d cis]}
  e2 \tuplet 3/2 {d8 cis b}
  fis'4. fis8 \tuplet 3/2 {g8 [fis e]}| %16

  g4. fis8 \tuplet 3/2 {fis8 [e d]}
  fis4. e8 \tuplet 3/2 {e8 [d cis]}
  e2 \tuplet 3/2 {eis8 fis d}|

  %time change
  \time 2/4
  b4 r %20
  r2

  d2 ~
  d8 d e16 d e8
  d2 ~
  d8 d e16 d e8|

  fis8 e16 fis e8 d16(e)
  d16 cis b8 \tuplet 3/2 {e8 e b}
  d2 ~
  d16 fis a g fis g fis e|


  d2 ~
  d8 d e16 d e8
  d2 ~
  d8 d e16 d e8|

  d2 ~
  d8 d e16 d e8
  fis8 e16 fis
  e8 d16 e|

  d16 cis b8 d e
  b2~
  b8 r r4

  fis'8 fis g16 fis g8
  a4 b16 a g8
  fis8 d e a,
  d4 r8 d8
  fis8 fis g16 fis g8
  a8 a bes16 a g8

  %page 262
  fis8 fis e16(d)e8
  fis2

  d2~
  d8 d e16 d e8
  d2~
  d8 d e16 d e8
  fis8 e16 fis e8 d16(e)
  d16 cis b8 \tuplet 3/2 {g'8 g fis}
  b2~
  b8 r8 r4



}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \transpose b a \chordmode {
  s8*2 b2:m e4:m b1:m b2:m a2 a4
  d2 b4:7 e2:m e4:m b1:m b4:m  d2 d4 a4
  d4*9  e4*3:m  b4:m b2:m %14

  fis2:7 g4 fis4 b4:7 e2:m e2:m b2:m e4:m fis2 fis4
  %change to 2/4
  b2*3:m b4:m e4:m b4*3:m  e4:m d4 e4:m
  b4:m e4:m b4*3:m  fis4:7 b4*3:m e4:m b4*3:m  e4:m
  b4*3:m  e4:m d4 e4:m b8*3:m  e8:m b2:m r4 a4:7 d4 g4
  d4 g4 d4 a4 d4*3  e4:m d4 g4:m d4 e4:m fis2:7
  b4*3:m e4:m b4*3:m  e4:m d4 e4:m b4:m e4:m b2:m

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

  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
