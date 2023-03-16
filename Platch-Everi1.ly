\version "2.16.0"
\language "english"

\paper{
  %print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Platch Everi"
  subtitle="(Yevrieskaya Melodie)"
  composer= "Naye Kapele"
  %arranger= "H. Sweet"
}   


melody = \relative c' 
{
  \clef treble
  \key d \minor
  \time 2/4
  
  
  %introduction
  
 % {d4 d d2 d4 d d2}
  
  % A section, 1 repeat
  \repeat volta 2{
  \mark \default
    d2 d' 
    bf4 a g bf
    a8 bf a bf | a g4 f16 e
    d2 ~ d 
    a' f' 
    e4 e
    e8 d cs d
    e4 e
    e8 d cs bf
    a2  ~ a4 \times 2/3 {a8 as bf} 
    c4 c | d2
    c8 d c4 
    f, g 
    a a 
    a8 g4 f16 e 
    d4 \times 2/3 {f8 e d} 
    cs2\fermata
    d8 e f4 
    a c 
    f, g 
    a8 g f4 
    e  d ~ d8 d' a4 
    f d ~ d2
  }        
  % B section, no repeat
  \break
  \mark \default
  {
    %\bar "||"
    a8 b4 cs 8 
    d2 d 
    d4 ef c ef 
    d2 d
    d4 ef c ef  
    d4 \times 2/3 {g8 f ef} 
    d4 r8 d8 d cs r d16 ef
    e4 r8 e8 e d r d f4 f f8 e r d cs2 a
    e' e e4 f d4 \times 2/3 {a'8 g f}
    e2 e e4 f d \times 2/3 {a'8  g f}
    e4 e cs a
    a8 cs d e 
    f e a f 
    d 4 r8 d' a4 f d2
  }	
  %C sectio
  \break
  \repeat volta 2{
    \mark \default
    d8 e r f 
    g4 g 
    bf2
    g4 g 
    g8 f r e
    f4 f 
    a2
    f4 f 
    f8 e r d
    e4 e 
    cs a
    a8 cs d e 
    
  }	
  \alternative {
    {f8 e a f d4 r8 d' a4  f d2}
    {f8 e d f a2 ~ 
     a4 \times 2/3{e'8 f g}|
     a8 g f e
     d8 c bf a
     a2~
     a2
    }
       
  }

}

harmonies = \chordmode {
  %A section
  d2*3:m 
  %r2 * 6
  g2:m 
  d2:m
  a2*4:7
  %r2 * 5
  a2*6
  %r2 * 5
  c2*3
  %r1 
  f2
  a2*2 % r2
  d4*5 % r2
  f4*2
  %r4 
  c4*2
  %r4
  g4*5:m
  %r1
  d2*4:m
  %B section
  %r1 
  d2*11:m
  %r2 * 10
  a2*2
  %r2  
  f2*4
  %r2 * 3
  a2*11
  %r2 * 10
  d2*5
  % C section	
  %r2 * 4
  g2*5:m
  %r2 * 4 
  d2*4:m
  %r2 * 3
  a2*2 
  %r2 
  d2*4:m
  %r2 * 3
  d2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>
  
  \layout{ }
  \midi { }
}
