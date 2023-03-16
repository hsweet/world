\version "2.18.0"
\language "english"
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

melody = \transpose a, g, \relative c' {
  \clef treble

  \key a \minor
  \time 3/4



  \partial 8*2 \tuplet 3/2 {e8 a b}

  c8 a r a  \tuplet 3/2{ d8 [d a] }
  a2 \tuplet 3/2 {e8 a b}
  c8 a r4 \tuplet 3/2{a8 g a}
  g4(g8.) g16 \tuplet 3/2 {g8 c d}| %4

  e8 c4 e8 g16 g f e
  d4. d8 \tuplet 3/2{a'8 [a, a]}
  a16 a a8 r c \tuplet3/2 {d8 [d bf]}
  a4. e'8 \tuplet 3/2{g8 [f e]}| %8

  g4. e8 \tuplet 3/2 {d16 [c d]} c16 d
  c4. e8 g16 g a g
  c4. g8 g16  f e f
  e4. e8 \tuplet 3/2  {f8 [e d]}| %12

  f4. e8 \tuplet 3/2 {e8 [d c]}
  e4. d8 \tuplet 3/2 {d8 [c b]}
  d2 \tuplet 3/2 {c8 b a}
  e'4. e8 \tuplet 3/2 {f8 [e d]}| %16

  f4. e8 \tuplet 3/2 {e8 [d c]}
  e4. d8 \tuplet 3/2 {d8 [c b]}
  d2 \tuplet 3/2 {ds8 e c}|

  %time change
  \time 2/4
  a4 r %20
  r2

  c2 ~
  c8 c d16 c d8
  c2 ~
  c8 c d16 c d8|

  e8 d16 e d8 c16(d)
  c16 b a8 \tuplet 3/2 {d8 d a}
  c2 ~
  c16 e g f e f e d|


  c2 ~
  c8 c d16 c d8
  c2 ~
  c8 c d16 c d8|

  c2 ~
  c8 c d16 c d8
  e8 d16 e
  d8 c16 d|

  c16 b a8 c d
  a2~
  a8 r r4

  e'8 e f16 e f8
  g4 a16 g f8
  e8 c d g,
  c4 r8 c8
  e8 e f16 e f8
  g8 g af16 g f8

  %page 262
  e8 e d16(c)d8
  e2

  c2~
  c8 c d16 c d8
  c2~
  c8 c d16 c d8
  e8 d16 e d8 c16(d)
  c16 b a8 \tuplet 3/2 {f'8 f e}
  a2~
  a8 r8 r4



}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \transpose a, g, \chordmode {
  s8*2 a2:m d4:m a1:m a2:m g2 g4
  c2 a4:7 d2:m d4:m a1:m a4:m  c2 c4 g4
  c4*9  d4*3:m  a4:m a2:m %14

  e2:7 f4 e4 a4:7 d2:m d2:m a2:m d4:m e2 e4
  %change to 2/4
  a2*3:m a4:m d4:m a4*3:m  d4:m c4 d4:m
  a4:m d4:m a4*3:m  e4:7 a4*3:m d4:m a4*3:m  d4:m
  a4*3:m  d4:m c4 d4:m a8*3:m  d8:m a2:m r4 g4:7 c4 f4
  c4 f4 c4 g4 c4*3  d4:m c4 f4:m c4 d4:m e2:7
  a4*3:m d4:m a4*3:m  d4:m c4 d4:m a4:m d4:m a2:m

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
