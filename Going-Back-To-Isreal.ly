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
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
theme = {
  a8 g a b c b c d
  e4 a r e'~
  e8 g8 e d c b a b
  c8 b a g
  e8 d c b
}

melody = \relative c' {
  \global
  \partial 8 g8 %lead in notes

  \repeat volta 2{
   \mark \default
   \theme
   \theme
   %e4 a, a2~


  }
  \alternative {
    {e4 a, a r8 g8}

    {e'4 a, a2 }
  }

  \repeat volta 2{
   \mark \default
   e''4 a a8 b a g
  e4 a a2
  e4 g2 g4|
  a8 b a g e d c d

  e4 a a8 b a g
  e4 a a2

  e8 g8 e d c b a b
  c8 b a g
  e8 d c b
   e4 a, a2~
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 s8
 a1*6:m
 f1
 e1
 a1*2:m
 % B
 a1*2:m
 g1*2
 a1*2:m
 f1
 e1
 a1:m
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
    title= "Going Back To Isreal"
    subtitle=""
    composer= "June Drucker"
    instrument =""
    arranger= "as played by H. Sweet"
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
