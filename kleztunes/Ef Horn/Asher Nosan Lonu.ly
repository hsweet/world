\version "2.12.2"


\header{
  title= "Ahser Nosan Lonu"
  subtitle=""
  composer= "Leon Schwartz"
  instrument ="Ef Horn"
  arranger= "H. Sweet"
}

\markup { Play fifth higher on repeat }

%melody =  \transpose c d \transpose c a \relative c' {  %transpose for clarinet
melody = \transpose c a \relative c' {
  \clef treble
  \key d \minor
  \time 2/4
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{

     d16->\p ^\markup {\box A} g g g g8 g
    g8 d g bes
    g16-> bes bes bes bes8 bes
    bes8 g bes c
    g16-> c c c c8 c
    c8 bes c ees
    d c bes a


    %{
    d8 ^\markup { \box A} \times 2/3 {g16 g g} g8 g
    g8 d g bes
    g8 \times 2/3 {bes16 bes bes} bes8 bes
    bes8 g bes c
    g8 \times 2/3 {c16 c c} c8 c
    c8 bes c ees
    d c bes a
  %}

  }

  \alternative { {g8 \times 2/3{bes16 a c} bes8 a16 g }{g2} }

   g8 ^\markup { \box B} a16 bes a8 bes16 c
   g8 f f f
   g8 a16 bes a8 bes16 c
   g8 f f f
   f'8-3 ees d c
   bes f bes c
   d c bes a
   g2
}


\addlyrics{
A- sher no- san lo- nu toy- ras em- es
A- sher no- san lo- nu toy- ras em- es
A- sher no- san lo- nu toy- ras em- es
Toy- ras e- e- mes
}
\addlyrics{
V'- khay- ey oy- lom nota b'- soy- khey- nu
V'- khay- ey oy- lom nota b'- soy- khey- nu
V'- khay- ey oy- lom nota b'- soy- khey- nu
Nota b'- soy- khey- nu
}
harmonies = \transpose c a \chordmode {
  g2:m r4*5 c4:m
  r4*4
  d2
  g2:m g2:m
  %b section
  g4:m c4:m f2
  g4:m c4:m f2 c2:m g2:m d2 g2:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
  #(set-paper-size "letter")
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{ }
  \midi { }
}
