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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  \partial 8 b8   %lead in notes
   b4 e e e
   g e a g
   b, e e e
   g8 e g e b4.b8

   b4 e e e
   g e a g
   b, e e e
   g8 e g e b2

   g'4 a8 b a4 g
   g8 e g e g2
   g4 a8 b a4 g
   g8 e g e g2

   g4 a8 b a4 g
   g4 fs8 g fs4 e
   b'8 b b b b b b b
   e,2.   e8 ^Refrain e
   \break
   %refrain
   g2. e8 e
   g2. e8 e
   a4 g fs e



   fs8 a g2 e8 e

   g2. e8 e
   \break
   g2. e8 e
   a4 g fs e
   fs8 g e2.

   a4 a8 a a a a a|
   \break
   b4 g8 g g g g g
   fs4 fs8 fs fs fs fs fs
   g4 e b2


   a'4 a8 a a a a a|
   b4 g8 g g g g g
   fs4 fs8 fs fs fs fs fs
   g4 e e r


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
  e1*3:m
  c2 b2:7
  e1*3:m
  c2 e2:m
  e1*6:m
  b1:7
  e1:m \bar"||"
  %b
  e1*2:m
  a4*5:m
  e4*3:m
  e1*2:m
  a2:m b2:7
  b4:7 e4*3:m
  a1:m
  e1:m
  b1:7
  e1:m
  a1:m
  e1:m
  b2*3:7

  e2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose e' b \harmonies
    }
    \new Staff  \transpose e' b \melody
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
