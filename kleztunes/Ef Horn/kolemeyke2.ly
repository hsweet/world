\version "2.12.2"


\header{
  title= "Kolemeike"
  subtitle=""
  instrument ="Ef Horn"
  arranger= "D. Strauss"
}



%melody =  \transpose c d \transpose c a \relative c' {  %transpose for clarinet
melody = \transpose c a \relative c' {
  \clef treble
  \key c \major
  \time 2/4
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    a'8 ^\markup { \box A}
    a'-. a-. a-.
    a-. a-. f e16 f
    d8 a'-.
    a-. a-. f e16 f a8 r8
    r8 a8-.  a-.  a-.
    gis16 a b a gis f e d
    e f g f e d e f
    d2
  }

  %\alternative { {}{} }
  \repeat volta 2{
    e16 ^\markup { \box B} f g4 g16 f|
    a g g f a g g f
    g8 c b a
    gis f a r
    e16 f g f e d e f
    d8 a16 a d8 d
    e16 f g f e d e f
    d2
  }

  %\alternative { { }{ } }

  \repeat volta 2{
    d'8 ^\markup { \box C} a r8 g f e d
    a d e f g
    a2
    a,8 cis a cis
    d f g16 f e d
    a8 cis a cis
    d4 d
  }

  %\alternative { { }{ } }

}



harmonies = \transpose c a \chordmode {
  d2:m r2*5 a2 d2:m
  g2:m r2*2 d2:m a2 d2:m a2 d2:m
  d2:m r2*3 a2 d2:m a2 d2:m

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
