\version "2.20.0"
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
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
   \mark \default
   a4. e'8 e4 e
   f8 e f a e4. e8
   d4. d8 c4 d
   \times 2/3{e8 f g} \times 2/3{f e d} c b a4

   a4. e'8 e4 e
   f8 e f a e4. e8
   d4. d8 c4 d
   \times 2/3{e8 f g} \times 2/3{f e d} c b a e

   a4. b8 c4 d
   e8 f e d c b a4
   b8 c c b d16 c b a gs8 a |
   b8 c d16 c b a gs8 f e4

   a4. b8 c4 d
   e8 f e d c b a4
   b8 c c b b a a gs
   a1
  }


  \repeat volta 2{
   \mark \default
   e'8 f e d c b c d
   e8 f e d c b a4
   b8 c c b d16 c b a gs8 a

   b8 c d16 c b a gs8 f e4|
   e'8 f e d c b c d|
   e8 f e d c b a4|
   b8 c c b b a a gs
  }
   \alternative {
     {a1 }
     {a2. a4 }
   }

  \repeat volta 2{
  a'4. g8 g f f e
  e1
  e8 g, c e \times 2/3{g f e} d4~
  d8 a' a g g f f e

  e2. g,4
  c8 d e4 e e|
  e8 d e f e d c4
  r16 g a b  c d e f g8 f f e

  e8 d e f e d c4
  cs8 d4. cs8 bf bf a
  a4 bf'16( a g f e f e d cs d cs b)
  cs8 d4. cs8 bf bf a
  a1
  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a1:m
  d2:m
  a2:m
  d2:m e2:7
  a1*2:m
  d2:m a2:m
  d2:m e2:7
  a1*3:m
  e1*2:7
  a1*2:m
  e1:7
  a1:m
  %b
  a1*2:m
  e1*2:7
  a1*2:m
  e1:7
  a1:m
  a1:m
  %
  a1*2:m
  c2 a4:7 d4*5:m
  a2:m g2:7
  c1
  g2:7 c2*3

  g2:7 c2
  g1:m
  a1
  g1:m
  a1

}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Terk In America"
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
  \font-size #2
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
