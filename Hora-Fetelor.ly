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
  \key d \minor
  \time 6/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 16*3 a16 b cs   %lead in notes

  \repeat volta 2{
   \mark \default
   d8. a'16 f a d,8. a'16 f a
   d,4. fs
   g8. d'16 bf d g,8. d'16 bf d|
   g,4. (g8.)cs16d ds

   e8. d16 d cs cs8. bf16 bf a
   a8 d d d8. c16 c bf
   a8. g16 g f c'8. bf16 c bf
   a4.(a8.) cs16 d ds
   e8. d16 d cs cs8. bf16 bf a

    a8 d d d8. c16 c bf
    a8. bf16 g a f8. g16 e f
    d8. a'16 f a d,4.

  }


  \repeat volta 2{
   \mark \default
   a'8 f' f f8. e16 e d
   c8 e e e4.
   bf8 d d d8. c16 c bf
   a8 c c c4.

   g8 bf bf bf8. a16 a g
   f8 a a a8. a16 c bf

  }
   \alternative {
     {a8. g16 g f c'8. bf16 c bf
     a4.(a4.)}
     {a8. bf16 g a f8. g16 e f
     d8. a'16 f a d,4. }
   }
   \break
     \repeat volta 2{
   \mark \default
   c8. d16 e f g8. a16 bf g
   bf8 a4(a4.)
   g8. f16 f e c'8. bf16 c bf|
   a2.

   c,8. d16 e f g8. a16 bf g|
   a8 bf(bf2\fermata)  |
   a8. bf16 g a f8. g16 e f

     }
  \alternative{
  {d8. a'16 f a d,4.}
  {d8. d'16 a f d4.}
  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s16*3
  d8*9:m d8*3
  g4*6:m
  a4*3:7
  d8*3:m bf8*3
  f8*3 c8*3:7
  f8*6
  a8*6:7
  d8*3:m bf8*3
  d8*3:m a8*3:7
  d8*6:m
  %b
  f8*6
  c8*6
  bf8*6:
  f8*6   %d7
  g8*6:m
  d8*6:m
  d8*3:m c8*3:m
  f8*6
  d8*3:m a8*3:7
  f8*6
  %c
  c8*6:7
  f8*6
  c8*6:7
  f8*6
  c8*6:7
  bf8*6
  d8*3:m
  a8*3:7
  d8*12:m

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
