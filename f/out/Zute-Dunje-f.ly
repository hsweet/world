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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  b8(cs d cs b a)
  g2.
  g8(a b a g fs)
  e2.

  g2( fs8 g)
  fs2.
  e2.
  d2.

  b'8(cs d cs b a)
  g2.
  g8(a b a g fs)
  e2.|

  g2( fs8 g)|
  fs2 r4|
  \afterGrace fs,2.\fermata {g8 fs es fs([g gs a] as[ b c cs] d[ ds e es])}
  \afterGrace fs2.\fermata  {g8 fs es fs}
  d2. \fermata
  cs2. \fermata|
  b2.~
  b2.^FINE \bar "||"

  \time 4/4
  fs'8 ^Verse fs e(d d2)
  d8 e d(d cs2)
  e8 fs g (a a4) b8(g)
  fs2. \breathe fs8 fs|
  \break

  \repeat volta 2{
   \mark \default
   b2. \breathe a8 b
   cs8( b4. b4) \breathe a8 b
   cs8 (b4.) a8(g4.)
   fs1
   e8 fs g(e e2)
   d2 cs
  }
  \alternative {
    {b2. \breathe fs'8 fs }
    {\time 3/4 b,2. ~ b2. }
  }

  %\repeat volta 2{
   \mark \default
   r2 ^Improv r4
   r2 r4
   fs'2 fs4
   e4(d2)

   r4 d e
   e4(cs2)~
   cs2.
   e2(fs4)
   g2 (a4)
   b4 a(g)
   fs2.
   r4 fs fs
 % }
    \break
   \repeat volta 2{
   \mark \default
   b4 b2
   r4 a b
   cs4(b2)
   r4 a b

   cs4(b2)
   a4(g2)
   fs2.~
   fs2.

   e2(fs4)
   g4(e2)
   d2.
   cs2.

   }
   \alternative{
     {b2. r4 fs' fs}
     {b,2.~
      b2 _"D.C. al Fine"  r4}
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b4*3:m
  e4*12:m
  b4*3:m
  fs4*3:7
  b4*6:m
  e4*12:m
  fs4*9:7
  b4*3:m
  fs4*3:7
  b4*6:m
  b1:m
  fs4*4:7
  e2:m a2:7
  d1
  %
  g1
  a8 g8*7
  a8 g8*3 d8 e8*3:m
  d2 b2:7
  e1:m
  b2:m fs2:7
  b1:m
  %
  b4*18:m
  fs4*9:7
  e4*6:m
  a4*3:7
  d4*6
  %
  g4*6
  a4 g4*5
  a4 g2
  a4*3:7
  d4*3
  b4*3:7
  e4*6:m
  b4*3:m
  fs4*3:7
  b4*12:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
       \transpose b, e  \harmonies
    }
    \new Staff  \transpose b, e \melody
  >>
  \header{
    title= "Zute Dunje"
    subtitle="Yellow Quinces"
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
