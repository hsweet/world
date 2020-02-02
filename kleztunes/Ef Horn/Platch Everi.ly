     \version "2.10.5"
     
     
\header{
	title= "Platch Everi"
}     

 
 \chords { c  d e f g a b c d e f g a b c d e f g r r a b c }
 
melody = \transpose c a \relative c' 
{
        \clef treble
        \key d \minor
        \time 2/4
	
	
	%introduction
      
	{d4 d d2 d4 d d2}
	
	% A section, 1 repeat
	\repeat volta 2{

		d2 d' 
		bes4 a g bes
		a8 bes a bes | a g4 f16 e
		d2 ~ d 
		a' f' 
		e4 e
		e8 d cis d
		e4 e
		e8 d cis bes
		a2  ~ a4 \times 2/3 {a8 ais bes} 
		c4 c | d2
		c8 d c4 
		f, g 
		a a 
		a8 g4 f16 e 
		d4 \times 2/3 {f8 e d} 
		cis2\fermata
		d8 e f4 
		a c 
		f, g 
		a8 g f4 
		e  d ~ d8 d' a4 
		f d ~ d2
	}        
		% B section, no repeat	
	{
		%\bar "||"
		a8 b4 cis 8 
		d2 d 
		d4 ees c ees 
		d2 d
		d4 ees c ees  
		d4 \times 2/3 {g8 f ees} 
		d4 r8 d8 d cis r d16 ees
		e4 r8 e8 e d r d f4 f f8 e r d cis2 a
		e' e e4 f d4 \times 2/3 {a'8 g f}
		e2 e e4 f d \times 2/3 {a'8  g f}
		e4 e cis a
		a8 cis d e 
		f e a f 
		d 4 r8 d' a4 f d2
	}	
		%C section	
	\repeat volta 2{
		d8 e r f 
		g4 g 
		bes2
		g4 g 
		g8 f r e
		f4 f 
		a2
		f4 f 
		f8 e r d
		e4 e 
		cis a
		a8 cis d e 
		
	}	
		\alternative {
			{f8 e a f d4 r8 d' a4  f d2}
			{f8 e d f a2 ~ a2}
	}

}
     
     \score {
        \new Staff \melody
        \layout { }
        \midi {}
     }
