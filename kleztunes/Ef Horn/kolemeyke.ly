\version "2.10.5"

\header{
  title= "Kolemeike"
  
  composer= "Beregovski"
  
}   


melody = \transpose c a \relative c' {
  \clef treble
  \key c \major
  \time 2/4
  \partial 16*3 a16 d f
  \repeat volta 2{
    a'16 f e d a' f e d
    a'16 f e d a' f e d
    e16 f gis a gis f e d 
    gis8 a ~ a4
    a16 f e d a' f e d
    a16 f e d a' f e d
    e' f gis a gis f e d 
    d4 ~ d16 a d f
  }
  \repeat volta 2{
    c'8 c ~ c16 b d c
    b8 b ~ b16a c b 
    a8 a ~ a16 gis b c
    gis8. f16 g f e d
    e16 f gis a gis f e d
    gis8 a ~ a4
    c8 c ~ c16 b d c
    b8 b ~ b16a c b 
    a8 a ~ a16 gis b c
    gis8. f16 gis f e d
    e16 f gis a gis f e f
    d2	
  }
  \repeat volta 2{
    a16 d f a a, d f a
    a,16 d f a gis f e d
    a16 d f a gis f e d
    gis 8 a ~ a4 
    c16  b d c b a c b
    a16 gis b a g f e d
    e16 f gis a gis f e f
    d2 	
  }
}

harmonies = \transpose c a \chordmode {
  {	{r16*3} d2:m
    {r2*5} a2:7 
    d2
  }{
    d2:m
    {r2*9} a2:7
    d2:m	
  }{
    d2:m
    {r2*5} a2:7
    d2:m	
  }
  
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
