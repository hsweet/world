\version "2.18.0"
\language "english"
\paper{
  tagline = ##f
  #print-all-headers ##t
  #(set-paper-size "letter")
}

\header{
  title= "Beltz"
instrument= "Violin"
instrument= "Violin"
  arranger=""

}date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

melody = \transpose d c \relative c' {
  \clef treble

  \key d \minor
  \time 3/4



  \partial 8*2 \tuplet 3/2 {a8 d e}

  f8 d r d  \tuplet 3/2{ g8 [g d] }
  d2 \tuplet 3/2 {a8 d e}
  f8 d r4 \tuplet 3/2{d8 c d}
  c4(c8.) c16 \tuplet 3/2 {c8 f g}| %4

  a8 f4 a8 c16 c bf a
  g4. g8 \tuplet 3/2{d'8 [d, d]}
  d16 d d8 r f \tuplet3/2 {g8 [g ef]}
  d4. a'8 \tuplet 3/2{c8 [bf a]}| %8

  c4. a8 \tuplet 3/2 {g16 [f g]} f16 g
  f4. a8 c16 c d c
  f4. c8 c16  bf a bf
  a4. a8 \tuplet 3/2  {bf8 [a g]}| %12

  bf4. a8 \tuplet 3/2 {a8 [g f]}
  a4. g8 \tuplet 3/2 {g8 [f e]}
  g2 \tuplet 3/2 {f8 e d}
  a'4. a8 \tuplet 3/2 {bf8 [a g]}| %16

  bf4. a8 \tuplet 3/2 {a8 [g f]}
  a4. g8 \tuplet 3/2 {g8 [f e]}
  g2 \tuplet 3/2 {gs8 a f}|

  %time change
  \time 2/4
  d4 r %20
  r2

  f2 ~
  f8 f g16 f g8
  f2 ~
  f8 f g16 f g8|

  a8 g16 a g8 f16(g)
  f16 e d8 \tuplet 3/2 {g8 g d}
  f2 ~
  f16 a c bf a bf a g|


  f2 ~
  f8 f g16 f g8
  f2 ~
  f8 f g16 f g8|

  f2 ~
  f8 f g16 f g8
  a8 g16 a
  g8 f16 g|

  f16 e d8 f g
  d2~
  d8 r r4

  a'8 a bf16 a bf8
  c4 d16 c bf8
  a8 f g c,
  f4 r8 f8
  a8 a bf16 a bf8
  c8 c df16 c bf8

  %page 262
  a8 a g16(f)g8
  a2

  f2~
  f8 f g16 f g8
  f2~
  f8 f g16 f g8
  a8 g16 a g8 f16(g)
  f16 e d8 \tuplet 3/2 {bf'8 bf a}
  d2~
  d8 r8 r4



}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \transpose d c \chordmode {
  s8*2 d2:m g4:m d1:m d2:m c2 c4
  f2 d4:7 g2:m g4:m d1:m d4:m  f2 f4 c4
  f4*9  g4*3:m  d4:m d2:m %14

  a2:7 bf4 a4 d4:7 g2:m g2:m d2:m g4:m a2 a4
  %change to 2/4
  d2*3:m d4:m g4:m d4*3:m  g4:m f4 g4:m
  d4:m g4:m d4*3:m  a4:7 d4*3:m g4:m d4*3:m  g4:m
  d4*3:m  g4:m f4 g4:m d8*3:m  g8:m d2:m r4 c4:7 f4 bf4
  f4 bf4 f4 c4 f4*3  g4:m f4 bf4:m f4 g4:m a2:7
  d4*3:m g4:m d4*3:m  g4:m f4 g4:m d4:m g4:m d2:m

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

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
