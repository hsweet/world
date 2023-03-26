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
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 16*3 b16 cs ds   %lead in notes

  \repeat volta 2{
   \mark \default
   e8. b'16 g b e,8. b'16 g b
   e,4. gs
   a8. e'16 c e a,8. e'16 c e|
   a,4. (a8.)ds16e es

   fs8. e16 e ds ds8. c16 c b
   b8 e e e8. d16 d c
   b8. a16 a g d'8. c16 d c
   b4.(b8.) ds16 e es
   fs8. e16 e ds ds8. c16 c b

    b8 e e e8. d16 d c
    b8. c16 a b g8. a16 fs g
    e8. b'16 g b e,4.

  }


  \repeat volta 2{
   \mark \default
   b'8 g' g g8. fs16 fs e
   d8 fs fs fs4.
   c8 e e e8. d16 d c
   b8 d d d4.

   a8 c c c8. b16 b a
   g8 b b b8. b16 d c

  }
   \alternative {
     {b8. a16 a g d'8. c16 d c
     b4.(b4.)}
     {b8. c16 a b g8. a16 fs g
     e8. b'16 g b e,4. }
   }
   \break
     \repeat volta 2{
   \mark \default
   d8. e16 fs g a8. b16 c a
   c8 b4(b4.)
   a8. g16 g fs d'8. c16 d c|
   b4.~|
   b4.

   d,8. e16 fs g a8. b16 c a|
   b8 c(c8 )~|
   c4. \fermata |
   b8. c16 a b g8. a16 fs g|

     }
  \alternative{
  {e8. b'16 g b e,4.}
  {e8. e'16 b g e4.}
  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s16*3
  e8*9:m e8*3
  a4*6:m
  b4*3:7
  e8*3:m c8*3
  g8*3 d8*3:7
  g8*6
  b8*6:7
  e8*3:m c8*3
  e8*3:m b8*3:7
  e8*6:m
  %b
  g8*6
  d8*6
  c8*6:
  g8*3   %d7
  \parenthesize e8*3:7
  a8*6:m
  e8*6:m
  e8*3:m d8*3:m
  g8*6
  e8*3:m b8*3:7
  e8*6:m
  %c
  d8*6:7
  g8*6
  d8*6:7
  g8*6
  d8*6:7
  c8*6
  e8*3:m
  b8*3:7
  e8*6:m
  e8*6:m

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
    title= "Hora Fetelor"
    %composer="Sergei Lunkevitch"
    %composer= ""
    instrument = "Violin"
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
