     \version "2.10.5"

        \header{
                title= "Kolemeikes"
                 
                composer= ""
                
        }   


     berg = \transpose c a \relative c' {
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
     
     bharmonies = \transpose c a \chordmode {
        {       {r16*3} d2:m
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
     
     
     deb = \transpose c a \relative c' {
  \clef treble
  \key c \major
  \time 2/4
  %\partial 16*3 a16 d f   %lead in notes
  
  \repeat volta 2{
    r8 ^\markup { \box A}
    a''-. a-. a-.
    a-. a-. f e  
    d a'-.
    a-. a-. f e  a r8
    r8 a8-.  a-.  a-.
    gis16 a b a gis f e d
    e f g f e d e f
    d2
  }
  
  %\alternative { {}{} }
  \repeat volta 2{
   e16 ^\markup { \box B} f g4 g16 
   f a g g f a g g f
   g f g8 c b a gis f a
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

 

dharmonies = \transpose c a \chordmode {
  d2:m r2*5 a2 d2:m
  g2:m r2*2 d2:m a2 d2:m a2 d2:m
  d2:m r2*3 a2 d2:m a2 d2:m
  
}
     \score {
        <<
           \new ChordNames {
              \set chordChanges = ##t
  #(set-paper-size "letter")
              \bharmonies
           }
        \new Staff \berg
         
        >>
        
        <<
           
        \new Staff \deb
        >>
     
        \layout{ }
        \midi { }
     }
