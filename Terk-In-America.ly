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
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
   \mark \default
   d4. a'8 a4 a
   bf8 a bf d a4. a8
   g4. g8 f4 g
   \times 2/3{a8 bf c} \times 2/3{bf a g} f e d4

   d4. a'8 a4 a
   bf8 a bf d a4. a8
   g4. g8 f4 g
   \times 2/3{a8 bf c} \times 2/3{bf a g} f e d a

   d4. e8 f4 g
   a8 bf a g f e d4
   e8 f f e g16 f e d cs8 d |
   e8 f g16 f e d cs8 bf a4

   d4. e8 f4 g
   a8 bf a g f e d4
   e8 f f e e d d cs
   d1
  }


  \repeat volta 2{
   \mark \default
   a'8 bf a g f e f g
   a8 bf a g f e d4
   e8 f f e g16 f e d cs8 d

   e8 f g16 f e d cs8 bf a4|
   a'8 bf a g f e f g|
   a8 bf a g f e d4|
   e8 f f e e d d cs
  }
   \alternative {
     {d1 }
     {d2. d4 }
   }

  \repeat volta 2{
  d'4. c8 c bf bf a
  a1
  a8 c, f a \times 2/3{c bf a} g4~
  g8 d' d c c bf bf a

  a2. c,4
  f8 g a4 a a|
  a8 g a bf a g f4
  r16 c d e  f g a bf c8 bf bf a

  a8 g a bf a g f4
  fs8 g4. fs8 ef ef d
  d4 ef'16( d c bf a bf a g fs g fs e)
  fs8 g4. fs8 ef ef d
  d1
  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d1:m
  g2:m
  d2:m
  g2:m a2:7
  d1*2:m
  g2:m d2:m
  g2:m a2:7
  d1*3:m
  a1*2:7
  d1*2:m
  a1:7
  d1:m
  %b
  d1*2:m
  a1*2:7
  d1*2:m
  a1:7
  d1:m
  d1:m
  %
  d1*2:m
  f2 d4:7 g4*5:m
  d2:m c2:7
  f1
  c2:7 f2*3

  c2:7 f2
  c1:m
  d1
  c1:m
  d1

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
