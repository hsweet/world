\version "2.12.2"


\header{
  title= "Serba Popular"
  subtitle=""
  composer= ""
  instrument ="Ef Horn"
  arranger= "H. Sweet"
}

%\markup{ Got something to say? }

%melody =  \transpose c d \transpose c a \relative c' {  %transpose for clarinet
melody = \transpose c a \relative c' {
  \clef treble

  \key g \minor
  \time 2/4
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    r8 ^\markup { \box A}c' bes c
    bes8.\prall a16 g8 a |
    bes8.\prall a16 g8 a |
    bes8 a c-> r

    r8 f, g a
    bes a c a
    bes g gis f
    g2

  }


  \repeat volta 2{
    g'4-> ^\markup { \box B} d8.\upbow c16\upbow|
    b8 c d ees|
    d c b c|
    d4 g8-> r|

    r8 f, g a
    bes a c a
    bes g gis f|
    g2
  }


  f'2-3 ^\markup { \box C}(f)
  e2  (e)
  d2 (d d d4) r%7 beats + r?
  g4 d8\upbow-. d\upbow-.
  g4 d8 d
  g4 d8 d|
  d8 c c r
  f4 c8 c
  c8 b b a
  a2 (a4. c8)|
  \times 2/3{c8 (b a)} \times 2/3{a8 (g f)}
  f2
  c2

  \repeat volta 2{
    e16^\markup { \box D} f g ais b8.\prall ais16|
    c16 b ais g g8 f
    e16 f g ais b8.\prall ais16|
    c16 b ais g g8 f
    e16 f g ais b8.\prall ais16|
    c16 b ais g g f e f
    g2 (g2)
    g16 f e f g f e f
    g16 f e f g f e f
    g2 (g2)
  }
}
harmonies = \transpose c a \chordmode {
  c2:m g2:m g2:m g4:m
  c4:m r2*3 g2:m
  %b=============
  g2 r2*3
  c2:m r2*2 g2:m
  %c==============
  f2:m r2
  e2:m  r2
  g2 r2*6
  c2 f2 r2*5
  c2
  %d===============
  a4 g4 c4 f4
  a4 g4 c4 f4
  a4 g4 c4 g4

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
  #(set-paper-size "letter")
      \harmonies
    }
    \new Staff \with {
      instrumentName = "Ef Horn"} \melody
  >>

  \layout{ }
  \midi { }
}
