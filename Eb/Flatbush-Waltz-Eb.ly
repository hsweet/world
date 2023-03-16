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
   b4. e8 b a
   g4 e e
   b'4. e8 b g
   a4. c8 b a

   e8 fs g a b g
   a8 e a4 a
   %d4. g8 d c
   g4. a8 f g
   e8 e, g b e g

   b4. e8 b a
   g4 e e
   b'4. e8 b a
   a4. c8 b a

   g8 a b c d16 c b8|
   a8 e a4 a
   g4. a8 f g
   e8 e, g b e g \bar"||"
   \break
   %   B part
   <<b2 g'>><< fs8  a,>> <<g e'>>
   <<fs8 a,>> b,ds fs b d
   <<g,4 e'>> <<fs,4. d'>> <<e,8 c'>>
   <<b2. d,>>
   % higher note 2nd
   <<c'4 e,>><<d b'>> <<c, a' >>
   <<d,4 b'>> <<g e'>> <<a, fs'>>
   <<{b,4. a8 g b
      a2.
      b2 a8 g
     }
     {g'4. fs8 g a
      fs2.
      g2 fs8 e
   }>>

   <<a,8 fs'>> b,, ds fs b d %maybe f #

   <<{g,4  fs4. e8
      d2.
      f4 f c
      d4 g, c
      b4. c8 a b
      g2.
     }
     {e''4 d4. c8
     b2.
     c4 b a
     b4 e, a
     g4.a8 f g
     e2.
   }>>


  }




}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e2.*3:m
  a2.:m
  e2.:m
  a2.:m
  e4.:m f4.
  e2.*4:m
  a2.:m
  g2.
  a2.:m
  e4.:m f4.
  e2.:m
  % high part
  e2.:m
  b2.
  c8*5 d8
  g2.
  a2.:m
  e2.*2
  b2.
  e2.:m
  b2.
  c8*5 d8
  g2.
  f2.
  e2:m a4:m
  e2:m f4
  e2.:m
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
