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
  \key g \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8 d8   %lead in notes
   d4 g g g
   bf g c bf
   d, g g g
   bf8 g bf g d4.d8

   d4 g g g
   bf g c bf
   d, g g g
   bf8 g bf g d2

   bf'4 c8 d c4 bf
   bf8 g bf g bf2
   bf4 c8 d c4 bf
   bf8 g bf g bf2

   bf4 c8 d c4 bf
   bf4 a8 bf a4 g
   d'8 d d d d d d d
   g,2.   g8 ^Refrain g
   \break
   %refrain
   bf2. g8 g
   bf2. g8 g
   c4 bf a g



   a8 c bf2 g8 g

   bf2. g8 g
   \break
   bf2. g8 g
   c4 bf a g
   a8 bf g2.

   c4 c8 c c c c c|
   \break
   d4 bf8 bf bf bf bf bf
   a4 a8 a a a a a
   bf4 g d2


   c'4 c8 c c c c c|
   d4 bf8 bf bf bf bf bf
   a4 a8 a a a a a
   bf4 g g r


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
  g1*3:m
  ef2 d2:7
  g1*3:m
  ef2 g2:m
  g1*6:m
  d1:7
  g1:m \bar"||"
  %b
  g1*2:m
  c4*5:m
  g4*3:m
  g1*2:m
  c2:m d2:7
  d4:7 g4*3:m
  c1:m
  g1:m
  d1:7
  g1:m
  c1:m
  g1:m
  d2*3:7

  g2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \transpose g d \harmonies
    }
    \new Staff  \transpose g d \melody
  >>
  \header{
    title= ""
    subtitle="Tshiri Bim"
    composer= ""
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
