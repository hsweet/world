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
  \key fs \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
theme = {
  fs'8 e' fs' gs' a gs' a b
  cs'4 fs' r cs''~
  cs'8 e'8 cs' b a gs' fs' gs'
  a8 gs' fs' e'
  cs'8 b a gs'
}

melody = \relative c' {
  \global
  \partial 8 e8 %lead in notes

  \repeat volta 2{
   \mark \default
   \theme
   \theme
   %e4 a, a2~


  }
  \alternative {
    {cs4 fs, fs r8 e8}

    {cs'4 fs, fs2 }
  }

  \repeat volta 2{
   \mark \default
   cs''4 fs fs8 gs fs e
  cs4 fs fs2
  cs4 e2 e4|
  fs8 gs fs e cs b a b

  cs4 fs fs8 gs fs e
  cs4 fs fs2

  cs8 e8 cs b a gs fs gs
  a8 gs fs e
  cs8 b a gs
   cs4 fs, fs2~
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
 s8
 fs1*6:m
 d1
 cs1
 fs1*2:m
 % B
 fs1*2:m
 e1*2
 fs1*2:m
 d1
 cs1
 fs1:m
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
