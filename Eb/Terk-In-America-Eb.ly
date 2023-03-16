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
  \key b \minor
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
   b4. fs'8 fs4 fs
   g8 fs g b fs4. fs8
   e4. e8 d4 e
   \times 2/3{fs8 g a} \times 2/3{g fs e} d cs b4

   b4. fs'8 fs4 fs
   g8 fs g b fs4. fs8
   e4. e8 d4 e
   \times 2/3{fs8 g a} \times 2/3{g fs e} d cs b fs

   b4. cs8 d4 e
   fs8 g fs e d cs b4
   cs8 d d cs e16 d cs b as8 b |
   cs8 d e16 d cs b as8 g fs4

   b4. cs8 d4 e
   fs8 g fs e d cs b4
   cs8 d d cs cs b b as
   b1
  }


  \repeat volta 2{
   \mark \default
   fs'8 g fs e d cs d e
   fs8 g fs e d cs b4
   cs8 d d cs e16 d cs b as8 b

   cs8 d e16 d cs b as8 g fs4|
   fs'8 g fs e d cs d e|
   fs8 g fs e d cs b4|
   cs8 d d cs cs b b as
  }
   \alternative {
     {b1 }
     {b2. b4 }
   }

  \repeat volta 2{
  b'4. a8 a g g fs
  fs1
  fs8 a, d fs \times 2/3{a g fs} e4~
  e8 b' b a a g g fs

  fs2. a,4
  d8 e fs4 fs fs|
  fs8 e fs g fs e d4
  r16 a b cs  d e fs g a8 g g fs

  fs8 e fs g fs e d4
  ds8 e4. ds8 c c b
  b4 c'16( b a g fs g fs e ds e ds cs)
  ds8 e4. ds8 c c b
  b1
  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b1:m
  e2:m
  b2:m
  e2:m fs2:7
  b1*2:m
  e2:m b2:m
  e2:m fs2:7
  b1*3:m
  fs1*2:7
  b1*2:m
  fs1:7
  b1:m
  %b
  b1*2:m
  fs1*2:7
  b1*2:m
  fs1:7
  b1:m
  b1:m
  %
  b1*2:m
  d2 b4:7 e4*5:m
  b2:m a2:7
  d1
  a2:7 d2*3

  a2:7 d2
  a1:m
  b1
  a1:m
  b1

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
