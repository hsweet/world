\version "2.16.0"
\include "english.ly"
\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8*3 a8 d f  %lead in notes

  \repeat volta 2{
   \mark \default
   a4 a gs a
   f8 e d4(d8) a d f|
   a4 a gs f|
   b8 c a4(a8)a b cs|
   
   d4 a gs a
   f8 e d4(d8) d e f|
   g4. bf8 
   \times 2/3{a8 gs f} \times 2/3{ f e d}
   %a g f e
   
  }
  
  \alternative{
  {d2~
   d8 a d f}
  {d2~
   d8 c f a}
  }
  
  \repeat volta 2{
  \mark \default
  c4 bf
  a4 g8 f
  g8 a f4~
  f2
  
  c'8 d ef16 d c8|
  bf8 a g f
  a2~
  a2
  
  f4 af16 g f8
  g8 af4 c8
  b8 c b af
  g4. af8
  
  a8 a4 gs8
  \times 2/3{a8 gs f} \times 2/3{ f e d}
  }
    \alternative{
  {d2~
   d8 c f a}
  {d,2~
   d8 c f a}
  }
  %{ r2 r8 d'8 cs d
   bf4 r r8 d cs d
   a4 r r8 e f g
   a4 a a a
   
   a8. g16 f8 g a d cs d
   d4 r r8 d8 cs d%}

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s8*3
  d1*6:m
  g2:m a2:7
  d2*3:m %end of a
  c2
  f2*5
  g2:m
  d2*2:m
  f2*2:m
  g2*2:m
  a2*2:7
  d2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \
       \melody
  >>
  \header{
    title= "Khosn Kale Mazel Tov"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{ }
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}
%{
% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."
	\column {
	  ""
	}
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
	\column {
	 ""
	}
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
	\column {
	  ""
	}
      }
      \hspace #0.2 % distance between verses
      \line { "4."
	\column {
	 ""
	}
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}
