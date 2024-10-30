\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
%melody =  \transpose c d \relative c {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  e8(fs g fs e d)
  c2.
  c8(d e d c b)
  a2.

  c2( b8 c)
  b2.
  a2.
  g2.

  e'8(fs g fs e d)
  c2.
  c8(d e d c b)
  a2.|

  c2( b8 c)|
  b2 r4|
  \afterGrace b,2.\fermata {c8 b as b([c cs d] ds[ e f fs] g[ gs a as])}
  \afterGrace b2.\fermata  {c8 b as b}
  g2. \fermata
  fs2. \fermata|
  e2.~
  e2.^FINE \bar "||"

  \time 4/4
  b'8 ^Verse b a(g g2)
  g8 a g(g fs2)
  a8 b c (d d4) e8(c)
  b2. \breathe b8 b|
  \break

  \repeat volta 2{
   \mark \default
   e2. \breathe d8 e
   fs8( e4. e4) \breathe d8 e
   fs8 (e4.) d8(c4.)
   b1
   a8 b c(a a2)
   g2 fs
  }
  \alternative {
    {e2. \breathe b'8 b }
    {\time 3/4 e,2. ~ e2. }
  }

  %\repeat volta 2{
   \mark \default
   r2 ^Improv r4
   r2 r4
   b'2 b4
   a4(g2)

   r4 g a
   a4(fs2)~
   fs2.
   a2(b4)
   c2 (d4)
   e4 d(c)
   b2.
   r4 b b
 % }
    \break
   \repeat volta 2{
   \mark \default
   e4 e2
   r4 d e
   fs4(e2)
   r4 d e

   fs4(e2)
   d4(c2)
   b2.~
   b2.

   a2(b4)
   c4(a2)
   g2.
   fs2.

   }
   \alternative{
     {e2. r4 b' b}
     {e,2.~
      e2 _"D.C. al Fine"  r4}
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e4*3:m
  a4*12:m
  e4*3:m
  b4*3:7
  e4*6:m
  a4*12:m
  b4*9:7
  e4*3:m
  b4*3:7
  e4*6:m
  e1:m
  b4*4:7
  a2:m d2:7
  g1
  %
  c1
  d8 c8*7
  d8 c8*3 g8 a8*3:m
  g2 e2:7
  a1:m
  e2:m b2:7
  e1:m
  %
  e4*18:m
  b4*9:7
  a4*6:m
  d4*3:7
  g4*6
  %
  c4*6
  d4 c4*5
  d4 c2
  d4*3:7
  g4*3
  e4*3:7
  a4*6:m
  e4*3:m
  b4*3:7
  e4*12:m

}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
       \transpose e a  \harmonies
    }
    \new Staff  \transpose e a \melody
  >>
  \header{
    title= "Zute Dunje"
    subtitle="Yellow Quinces"
    composer= ""
    instrument = "Eb"
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
