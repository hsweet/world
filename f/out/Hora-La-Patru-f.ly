\version "2.18.0"
\include "english.ly"
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
  \key d \minor
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
   cs16 e a,8 bf cs~
   cs16 bf d cs bf a bf g
   cs16 e a,8 bf cs~
   cs16 bf d cs bf a bf g

   cs16 e a,8 bf cs~
   cs16 bf d cs bf a g fs
   g16a bf cs d e cs8~
  }
  \alternative {
    {cs16 a bf g a cs e8 }
    {cs16 a bf g a8 r}
  }
  \break
  \repeat volta 2{
   \mark \default
   a16 d8 d16 d8 d
   d4(d16) cs d e
   f16 e d cs d e f e
   d16 e cs8(cs16)bf a g|

   a16 bf8 bf16 bf8 bf
   bf4(bf16) a bf cs|
   e16 d d cs bf a bf g
  }
   \alternative {
     { a16 bf cs d e8 a,}
     { a16 bf g bf a8 r}
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a2*6
  g2:m
  a2
  g4:m a4
  %b
  d2*3:m
  a2
  g2*3:m
  a2
  a8 g8:m
  a4
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
    title= "Hora La Patru"
    subtitle=""
    %composer= "Wallachia"
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
