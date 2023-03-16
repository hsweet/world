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
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
cadence = {
  d'16 d' cs' cs' d' d' c' c'
  b2
}

melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   b8 fs'16 e d8 d
   d16 e cs d b4
   b16 fs d' b fs' d b' fs
   b8 a16 g fs4

   fs16 e a g fs8 e16 d
   e16 f e f e4
   \cadence
  }

  \repeat volta 2{
   \mark \default
   a8 d16 e fs8  e16 d
   fs8 e16 d fs8 e16 fs
   \repeat unfold 4{a16 g g fs}
   r16 a, b cs d e fs g|
   a b c b a g fs e
   \cadence

  }

   \repeat volta 2{
   \mark \default
   d4. d8
   e8 c b4
   d4. d8
   e8 c b4

   c'16 b a g fs e d cs
   d16 a' fs g e4
   \cadence
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b2*4:m
  d2*2
  fs2
  b2:m
  %b
  d2*6
  b2*2:m
  %c
  b2:m
  a4:m b4*3:m
  a4:m b4:m
  d2*2
  fs2
  b2:m


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
    title= "Dem Trisker Rebns Nign"
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
