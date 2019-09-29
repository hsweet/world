\version "2.18.0"
%\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
%date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
    r8 e8 e8  e8  | %
    d8  cis16 d16  e4 | %
    r8 e8 e8  e8  | %
    d8  cis16 d16  e4 | %
    r8 gis8 gis8  gis8  | %
    a8.  gis16  f8  e8  | %
    r8 b'8 b8  b8  | %
    c8.  b16  a8  gis8  | %
    e8  e8  d8  cis16 d16  
    e2
 
  }
  
  \repeat volta 2{
   \mark \default
    r8 a8 a8  a8  
  a8  gis16 a16  b4 ( 
  b8 )  gis8  gis8  gis8  
  gis8  f8  f8  e8  
  r8 a8 a8  a8  
  a8  gis16 a16  e'4 ( 
  e8 )  gis,8  gis8  gis8  
  gis8  f8  f8  e
  }
   
   \repeat volta 2{
   \mark \default
    e'8  e8  e8  d16 c16  
    b16  c16  d4. 
    c8  c8  c8  b16 a16  
    gis16  a16  b4. 
    a8  a8  a8  gis16 f16  
    e16  f16  gis4. 
    d8  e8  f16  a16 gis16 f16
    e2
   }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
 e2:m
 d4:m e4
 e2
 d4:m e4
 e2
 a2:m
 e2
 a2:m
 d4:m e4
 e2
 %b
 s8 a8*3:m
 a2:m
 e2*2
 s8 a8*3:m
 a2:m
 e2*2
 %C
 a2:m
 e2
 a2:m
 e2
 d2:m
 e2
 d2:m
 e2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose e d \harmonies
    }
    \new Staff   \transpose e d\melody
  >>
  \header{
    title= "Nakhes Fun Kinder"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm} 
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
