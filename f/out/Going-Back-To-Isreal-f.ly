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
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
theme = {
  e8 d e fs g, fs g, a,
  b,4 e r b~
  b,8 d8 b, a, g, fs e fs
  g,8 fs e d
  b,8 a, g, fs
}

melody = \relative c {
  \global
  \partial 8 d8 %lead in notes

  \repeat volta 2{
   \mark \default
   \theme
   \theme
   %e4 a, a2~


  }
  \alternative {
    {b4 e, e r8 d8}

    {b'4 e, e2 }
  }

  \repeat volta 2{
   \mark \default
   b''4 e e8 fs e d
  b4 e e2
  b4 d2 d4|
  e8 fs e d b a g a

  b4 e e8 fs e d
  b4 e e2

  b8 d8 b a g fs e fs
  g8 fs e d
  b8 a g fs
   b4 e, e2~
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 s8
 e1*6:m
 c1
 b1
 e1*2:m
 % B
 e1*2:m
 d1*2
 e1*2:m
 c1
 b1
 e1:m
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
