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
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 16*3 fs16 gs as   %lead in notes

  \repeat volta 2{
   \mark \default
   b8. fs'16 d fs b,8. fs'16 d fs
   b,4. ds
   e8. b'16 g b e,8. b'16 g b|
   e,4. (e8.)as16b bs

   cs8. b16 b as as8. g16 g fs
   fs8 b b b8. a16 a g
   fs8. e16 e d a'8. g16 a g
   fs4.(fs8.) as16 b bs
   cs8. b16 b as as8. g16 g fs

    fs8 b b b8. a16 a g
    fs8. g16 e fs d8. e16 cs d
    b8. fs'16 d fs b,4.

  }


  \repeat volta 2{
   \mark \default
   fs'8 d' d d8. cs16 cs b
   a8 cs cs cs4.
   g8 b b b8. a16 a g
   fs8 a a a4.

   e8 g g g8. fs16 fs e
   d8 fs fs fs8. fs16 a g

  }
   \alternative {
     {fs8. e16 e d a'8. g16 a g
     fs4.(fs4.)}
     {fs8. g16 e fs d8. e16 cs d
     b8. fs'16 d fs b,4. }
   }
   \break
     \repeat volta 2{
   \mark \default
   a8. b16 cs d e8. fs16 g e
   g8 fs4(fs4.)
   e8. d16 d cs a'8. g16 a g|
   fs4.~|
   fs4.

   a,8. b16 cs d e8. fs16 g e|
   fs8 g(g8 )~|
   g4. \fermata |
   fs8. g16 e fs d8. e16 cs d|

     }
  \alternative{
  {b8. fs'16 d fs b,4.}
  {b8. b'16 fs d b4.}
  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  s16*3
  b8*9:m b8*3
  e4*6:m
  fs4*3:7
  b8*3:m g8*3
  d8*3 a8*3:7
  d8*6
  fs8*6:7
  b8*3:m g8*3
  b8*3:m fs8*3:7
  b8*6:m
  %b
  d8*6
  a8*6
  g8*6:
  d8*3   %d7
  \parenthesize b8*3:7
  e8*6:m
  b8*6:m
  b8*3:m a8*3:m
  d8*6
  b8*3:m fs8*3:7
  b8*6:m
  %c
  a8*6:7
  d8*6
  a8*6:7
  d8*6
  a8*6:7
  g8*6
  b8*3:m
  fs8*3:7
  b8*6:m
  b8*6:m

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
