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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   %\mark \default
   a4. d8 a g
   f4 d d
   a'4. d8 a f
   g4. bf8 a g

   d8 e f g a f
   g8 d g4 g
   %d4. g8 d c
   f4. g8 ef f
   d8 d f a d f

   a4. d8 a g
   f4 d d
   a'4. d8 a g
   g4. bf8 a g

   f8 g a bf c16 bf a8|
   g8 d g4 g
   f4. g8 ef f
   d8 d, f a d f \bar"||"
   \break
   %   B part
   <<a2 f'>><< e8  g,>> <<f d'>>
   <<e8 g,>> a,cs e a c
   <<f,4 d'>> <<e,4. c'>> <<d,8 bf'>>
   <<a2. c,>>
   % higher note 2nd
   <<bf'4 d,>><<c a'>> <<bf, g' >>
   <<c,4 a'>> <<f d'>> <<g, e'>>
   <<{a,4. g8 f a
      g2.
      a2 g8 f
     }
     {f'4. e8 f g
      e2.
      f2 e8 d
   }>>

   <<g,8 e'>> a,, cs e a c %maybe f #

   <<{f,4  e4. d8
      c2.
      ef4 ef bf
      c4 f, bf
      a4. bf8 g a
      f2.
     }
     {d''4 c4. bf8
     a2.
     bf4 a g
     a4 d, g
     f4.g8 ef f
     d2.
   }>>


  }




}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d2.*3:m
  g2.:m
  d2.:m
  g2.:m
  d4.:m ef4.
  d2.*4:m
  g2.:m
  f2.
  g2.:m
  d4.:m ef4.
  d2.:m
  % high part
  d2.:m
  a2.
  bf8*5 c8
  f2.
  g2.:m
  d2.*2:m
  a2.:7
  d2.:m
  a2.
  bf8*5 c8
  fs2.
  g2.:m
  d4*3:m
  d4.:m ef4.:
  d2.:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Flatbush Waltz"
    subtitle=""
    composer= "Andy Statman"
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


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
