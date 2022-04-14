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
  \key f \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   f8 f f c f f f c
   f8 f f c f f f4
   af8 af af f af af af f
   af8 af af f af af af4
   
   bf8 bf bf af bf bf bf af
   bf8 bf bf c af g f4
  }
  \alternative {
    {f4 bf bf(af8 g)
    af2. r4
    \break}
    {f4 bf bf(af8 g)
     f2. r8 ef8
    } 
  }

  \repeat volta 2{
    \mark \default
   af8(bf c4) c c8 c|
   df4 df c2|
   df4. c8 c bf bf(af)|
  }
  \alternative {
    {c2. r8 ef, }
    {af2. r8 c,8| }
  }
  
  \repeat volta 2{
  \mark \default
  f8(g af4) af af8 af|
  bf4 bf af2
  }
 \alternative{  
  {bf4. af8 af g g(f)|
   af2. r8 c,|
  }
  {bf'4. af8 af g g(f)
   f2. r4}
}  

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  f1*2:m
  af1*2
  bf2*3:m
  f2:m
  bf4*3:m c4:7
  f1:m
  bf4*3:m c4:7
  f4*3:m ef4:7
  %b
  af1
  ef2:7 af2
  bf1:m
  af1*2
  %c
  f1:m
  bf2:m f2:m
  bf1:m f1:m
  bf2:m c2:7
  f1:m
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
    title= "Siman Tov"
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


