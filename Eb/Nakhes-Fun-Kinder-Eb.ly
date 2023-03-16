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
  \key cis \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
    r8 cis8 cis8  cis8  | %
    b8  ais16 b16  cis4 | %
    r8 cis8 cis8  cis8  | %
    b8  ais16 b16  cis4 | %
    r8 eis8 eis8  eis8  | %
    fis8.  eis16  d8  cis8  | %
    r8 gis'8 gis8  gis8  | %
    a8.  gis16  fis8  eis8  | %
    cis8  cis8  b8  ais16 b16  
    cis2
 
  }
  
  \repeat volta 2{
   \mark \default
    r8 fis8 fis8  fis8  
  fis8  eis16 fis16  gis4 ( 
  gis8 )  eis8  eis8  eis8  
  eis8  d8  d8  cis8  
  r8 fis8 fis8  fis8  
  fis8  eis16 fis16  cis'4 ( 
  cis8 )  eis,8  eis8  eis8  
  eis8  d8  d8  cis
  }
   
   \repeat volta 2{
   \mark \default
    cis'8  cis8  cis8  b16 a16  
    gis16  a16  b4. 
    a8  a8  a8  gis16 fis16  
    eis16  fis16  gis4. 
    fis8  fis8  fis8  eis16 d16  
    cis16  d16  eis4. 
    b8  cis8  d16  fis16 eis16 d16
    cis2
   }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
 cis2:m
 b4:m cis4
 cis2
 b4:m cis4
 cis2
 fis2:m
 cis2
 fis2:m
 b4:m cis4
 cis2
 %b
 s8 fis8*3:m
 fis2:m
 cis2*2
 s8 fis8*3:m
 fis2:m
 cis2*2
 %C
 fis2:m
 cis2
 fis2:m
 cis2
 b2:m
 cis2
 b2:m
 cis2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose cis' b \harmonies
    }
    \new Staff   \transpose cis' b\melody
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
