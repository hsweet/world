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
   d4. g8 d c
   bf4 g g
   d'4. g8 d bf
   c4. ef8 d c

   g8 a bf c d bf
   c8 g c4 c
   %d4. g8 d c
   bf4. c8 af bf
   g8 g, bf d g bf

   d4. g8 d c
   bf4 g g
   d'4. g8 d c
   c4. ef8 d c

   bf8 c d ef f16 ef d8|
   c8 g c4 c
   bf4. c8 af bf
   g8 g, bf d g bf \bar"||"
   \break
   %   B part
   <<d2 bf'>><< a8  c,>> <<bf g'>>
   <<a8 c,>> d,fs a d f
   <<bf,4 g'>> <<a,4. f'>> <<g,8 ef'>>
   <<d2. f,>>
   % higher note 2nd
   <<ef'4 g,>><<f d'>> <<ef, c' >>
   <<f,4 d'>> <<bf g'>> <<c, a'>>
   <<{d,4. c8 bf d
      c2.
      d2 c8 bf
     }
     {bf'4. a8 bf c
      a2.
      bf2 a8 g
   }>>

   <<c,8 a'>> d,, fs a d f %maybe f #

   <<{bf,4  a4. g8
      f2.
      af4 af ef
      f4 bf, ef
      d4. ef8 c d
      bf2.
     }
     {g''4 f4. ef8
     d2.
     ef4 d c
     d4 g, c
     bf4. a8 af bf
     g2.
   }>>


  }




}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  g2.*3:m
  c2.:m
  g2.:m
  c2.:m
  g4.:m af4.
  g2.*4:m
  c2.:m
  bf2.
  c2.:m
  g4.:m af4.
  g2.:m
  % high part
  g2.:m
  d2.
  ef8*5 f8
  bf2.
  c2.:m
  g2.*2
  d2.
  g2.:m
  d2.
  ef8*5 f8
  bf2.
  af2.
  g2:m c4:m
  g2:m af4
  g2.:m
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
