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
  \key cs \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c''' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  cs8(ds e ds cs b)
  a2.
  a8(b cs b a gs)
  fs2.

  a2( gs8 a)
  gs2.
  fs2.
  e2.

  cs'8(ds e ds cs b)
  a2.
  a8(b cs b a gs)
  fs2.|

  a2( gs8 a)|
  gs2 r4|
  \afterGrace gs,2.\fermata {a8 gs fss gs([a as b] bs[ cs d ds] e[ es fs fss])}
  \afterGrace gs2.\fermata  {a8 gs fss gs}
  e2. \fermata
  ds2. \fermata|
  cs2.~
  cs2.^FINE \bar "||"

  \time 4/4
  gs'8 ^Verse gs fs(e e2)
  e8 fs e(e ds2)
  fs8 gs a (b b4) cs8(a)
  gs2. \breathe gs8 gs|
  \break

  \repeat volta 2{
   \mark \default
   cs2. \breathe b8 cs
   ds8( cs4. cs4) \breathe b8 cs
   ds8 (cs4.) b8(a4.)
   gs1
   fs8 gs a(fs fs2)
   e2 ds
  }
  \alternative {
    {cs2. \breathe gs'8 gs }
    {\time 3/4 cs,2. ~ cs2. }
  }

  %\repeat volta 2{
   \mark \default
   r2 ^Improv r4
   r2 r4
   gs'2 gs4
   fs4(e2)

   r4 e fs
   fs4(ds2)~
   ds2.
   fs2(gs4)
   a2 (b4)
   cs4 b(a)
   gs2.
   r4 gs gs
 % }
    \break
   \repeat volta 2{
   \mark \default
   cs4 cs2
   r4 b cs
   ds4(cs2)
   r4 b cs

   ds4(cs2)
   b4(a2)
   gs2.~
   gs2.

   fs2(gs4)
   a4(fs2)
   e2.
   ds2.

   }
   \alternative{
     {cs2. r4 gs' gs}
     {cs,2.~
      cs2 _"D.C. al Fine"  r4}
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  cs4*3:m
  fs4*12:m
  cs4*3:m
  gs4*3:7
  cs4*6:m
  fs4*12:m
  gs4*9:7
  cs4*3:m
  gs4*3:7
  cs4*6:m
  cs1:m
  gs4*4:7
  fs2:m b2:7
  e1
  %
  a1
  b8 a8*7
  b8 a8*3 e8 fs8*3:m
  e2 cs2:7
  fs1:m
  cs2:m gs2:7
  cs1:m
  %
  cs4*18:m
  gs4*9:7
  fs4*6:m
  b4*3:7
  e4*6
  %
  a4*6
  b4 a4*5
  b4 a2
  b4*3:7
  e4*3
  cs4*3:7
  fs4*6:m
  cs4*3:m
  gs4*3:7
  cs4*12:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
       \transpose cs' fs'  \harmonies
    }
    \new Staff  \transpose cs' fs' \melody
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
