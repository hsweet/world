\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   fs16 a d,8 ef fs~
   fs16 ef g fs ef d ef c
   fs16 a d,8 ef fs~
   fs16 ef g fs ef d ef c

   fs16 a d,8 ef fs~
   fs16 ef g fs ef d c b
   c16d ef fs g a fs8~
  }
  \alternative {
    {fs16 d ef c d fs a8 }
    {fs16 d ef c d8 r}
  }
  \break
  \repeat volta 2{
   \mark \default
   d16 g8 g16 g8 g
   g4(g16) fs g a
   bf16 a g fs g a bf a
   g16 a fs8(fs16)ef d c|

   d16 ef8 ef16 ef8 ef
   ef4(ef16) d ef fs|
   a16 g g fs ef d ef c
  }
   \alternative {
     { d16 ef fs g a8 d,}
     { d16 ef c ef d8 r}
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d2*6
  c2:m
  d2
  c4:m d4
  %b
  g2*3:m
  d2
  c2*3:m
  d2
  d8 c8:m
  d4
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Hora La Patru"
    subtitle=""
    %composer= "Wallachia"
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
