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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  \partial 8 a8   %lead in notes
   a4 d d d
   f d g f
   a, d d d
   f8 d f d a4.a8

   a4 d d d
   f d g f
   a, d d d
   f8 d f d a2

   f'4 g8 a g4 f
   f8 d f d f2
   f4 g8 a g4 f
   f8 d f d f2

   f4 g8 a g4 f
   f4 e8 f e4 d
   a'8 a a a a a a a
   d,2.   d8 ^Refrain d
   \break
   %refrain
   f2. d8 d
   f2. d8 d
   g4 f e d



   e8 g f2 d8 d

   f2. d8 d
   \break
   f2. d8 d
   g4 f e d
   e8 f d2.

   g4 g8 g g g g g|
   \break
   a4 f8 f f f f f
   e4 e8 e e e e e
   f4 d a2


   g'4 g8 g g g g g|
   a4 f8 f f f f f
   e4 e8 e e e e e
   f4 d d r


}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "

    Az ihk vel zo -- gen Le -- kho doy -- di;
    zolt ir zo -- gen; Tshi -- ri -- bi -- ri bim;
    Az ihk vel zo -- gn; Lik -- ras ka -- le,
    zolt ir zo -- gn Tshi -- ri -- bir -- ri bam;

    Le -- kho _ doy -- di Tshi -- ri -- bir -- ri bim
    Lik -- ras  _ ka -- le, Tshi -- ri -- bir -- ri bam

     Le -- kho _ doy -- di, Lik -- ras  _ ka -- le,
     Tshi -- ri -- bir -- ri -- bir -- ri -- bir -- ri bam
     % refrain
     Tshi -- ri -- bim, Tshi -- ri -- bam
     Tshi -- ri -- bim -- bam -- bim -- bam
     bi -- re -- bam,

     Tshi -- ri -- bim, Tshi -- ri -- bam
     Tshi -- ri -- bim -- bam -- bim -- bam bi -- ri -- bam

     Ay Tshi -- ri -- bir -- ri  bir -- ri
     Ay Tshi -- ri -- bir -- ri  bir -- ri
     Ay Tshi -- ri -- bir -- ri  bir -- ri
     bim -- bam -- bam

     Ay Tshi -- ri -- bir -- ri  bir -- ri
     Ay Tshi -- ri -- bir -- ri  bir -- ri
     Ay Tshi -- ri -- bir -- ri  bir -- ri
       bim -- bam -- bam
}
 %################################# Chords #######################
harmonies = \chordmode {
  s8
  d1*3:m
  bf2 a2:7
  d1*3:m
  bf2 d2:m
  d1*6:m
  a1:7
  d1:m \bar"||"
  %b
  d1*2:m
  g4*5:m
  d4*3:m
  d1*2:m
  g2:m a2:7
  a4:7 d4*3:m
  g1:m
  d1:m
  a1:7
  d1:m
  g1:m
  d1:m
  a2*3:7

  d2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose d a, \harmonies
    }
    \new Staff  \transpose d a, \melody
  >>
  \header{
    title= ""
    subtitle="Tshiri Bim"
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
