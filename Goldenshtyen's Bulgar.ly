\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
firstpart = {
  d8 [ bf'8 ] a8 [ g8 ] | % 2
  fs4 ef8 [ d8 ] | % 3
  g2 ~ | % 4
  g4 r | % 5
  d8 [ bf'8 ] a8 [ g8 ] | % 6
  fs4 ef8 [ d8 ] | % 7
  r8 c4. ~ | % 8
  c4 r | % 9
  r8 c16  c16 bf8  c8  
  d8 ef8  d8 c8 r8 | % 11
  g'16 [ g16 fs8 ] g8 
  a8  | % 12
  bf8  a8  g8  | % 13
  fs4 g4 | % 14
 
}

melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2 {
    \mark \default
    \firstpart
    fs4 ef4 | % 15
    d2 ~ | % 16
    d4 r
  }
  
  \break
  \mark \default
  \firstpart
  a4 g
  d2~
  d8 d8 fs g 
  a2~
  a2
   
  
  d2~
  d2
  a8 [ g16 g16 ] g8 [ f8 ] | % 21
  a8 [ g16 g16 ] g8 [ f8 ] | % 22
  a8 [ g16 g16 ] g8 [ f16 f16 ] | % 23
  f8 [ ef16 ef16 ] ef8 [ d8 ] | % 24
  c2~ | % 25
  c4 r
  r8 c16 [ c16 ] | % 26
  bf8 [ c8 ] d8 [ ef8 ] | % 27
  d8 [ c8 ] r8 g'16 [ g16 ] | % 28
  fs8 [ g8 ] a8 [ bf8 ] | % 29
  a8 [ g8 ] 
  fs4 g4 | % 31
  a4 g4 | % 32
  d2 | % 33
  \bar "|."
  
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Goldenshtyen's Bulgar"
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
