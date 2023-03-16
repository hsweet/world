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
  \key a \minor
  \time 2/4
  
  
  %introduction
  
 % {d4 d d2 d4 d d2}
  
  % A section, 1 repeat
  \repeat volta 2{
  \mark \default
    a2 a' 
    f4 e d f
    e8 f e f | e d4 c16 b
    a2 ~ a 
    e' c' 
    b4 b
    b8 a gs a
    b4 b
    b8 a gs f
    e2  ~ e4 \times 2/3 {e8 es f} 
    g4 g | a2
    g8 a g4 
    c, d 
    e e 
    e8 d4 c16 b 
    a4 \times 2/3 {c8 b a} 
    gs2\fermata
    a8 b c4 
    e g 
    c, d 
    e8 d c4 
    b  a ~ a8 a' e4 
    c a ~ a2
  }        
  % B section, no repeat
  \break
  \mark \default
  {
    %\bar "||"
    e8 fs4 gs 8 
    a2 a 
    a4 bf g bf 
    a2 a
    a4 bf g bf  
    a4 \times 2/3 {d8 c bf} 
    a4 r8 a8 a gs r a16 bf
    b4 r8 b8 b a r a c4 c c8 b r a gs2 e
    b' b b4 c a4 \times 2/3 {e'8 d c}
    b2 b b4 c a \times 2/3 {e'8  d c}
    b4 b gs e
    e8 gs a b 
    c b e c 
    a 4 r8 a' e4 c a2
  }	
  %C sectio
  \break
  \repeat volta 2{
    \mark \default
    a8 b r c 
    d4 d 
    f2
    d4 d 
    d8 c r b
    c4 c 
    e2
    c4 c 
    c8 b r a
    b4 b 
    gs e
    e8 gs a b 
    
  }	
  \alternative {
    {c8 b e c a4 r8 a' e4  c a2}
    {c8 b a c e2 ~ 
     e4 \times 2/3{b'8 c d}|
     e8 d c b
     a8 g f e
     e2~
     e2
    }
       
  }

}

harmonies = \chordmode {
  %A section
  a2*3:m 
  %r2 * 6
  d2:m 
  a2:m
  e2*4:7
  %r2 * 5
  e2*6
  %r2 * 5
  g2*3
  %r1 
  c2
  e2*2 % r2
  a4*5 % r2
  c4*2
  %r4 
  g4*2
  %r4
  d4*5:m
  %r1
  a2*4:m
  %B section
  %r1 
  a2*11:m
  %r2 * 10
  e2*2
  %r2  
  c2*4
  %r2 * 3
  e2*11
  %r2 * 10
  a2*5
  % C section	
  %r2 * 4
  d2*5:m
  %r2 * 4 
  a2*4:m
  %r2 * 3
  e2*2 
  %r2 
  a2*4:m
  %r2 * 3
  a2:m
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
