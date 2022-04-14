\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key c\major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes


  \mark \default
  a8 b c d e e r4
  %e8 d c b c a4.~
  e8 d c b e a,4.~
  a1
  a8 b c d e8 e r4 |
  e8 e fs gs b4. a8~
  a1\fermata

  %\key c\major
  \repeat volta 2{
    \mark \default
    %\repeat unfold 3{
    g8 f g f a16 f e8 r4
    e8 ds f e d c r4|

    g'8 f g f a16 f e8 r4
  }
  \alternative{
    {e8 e fs gs b a  r4}
    {
      e8 fs gs a  b4. a8~|
      a1\fermata
    }
  }

  %\bar"||"|
  \break
  \repeat volta 2{
    \mark \default
    g8 ^\markup {\italic {accelerando}} f e f g f e f
    f e ds e f e ds e
    e d cs d e d cs d
    d c b c d c b c

    c b bf b c b bf b
    b8 a gs a b a gs a|

    e8 e r8  fs8 fs4 gs4  |
    a1

  }

}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "

  Ci -- gan -- ka sam ma -- la,
  O -- ci mo -- je go -- re
  Ig -- ram, pe -- vam, ple -- sem
  Ce -- lu noc do zo -- re.

  Ja sam ma -- la﻿ ga -- ra -- va,
  Cr -- na tvo -- ja ci -- ganka
  Ja sam ma -- la﻿ ga -- ra -- va,
  Cr -- na tvo -- ja ci -- ganka
}
\addlyrics {
  \set stanza = #"2. "
  Da si mo -- je o -- ci
  Ti ran -- ije s -- r -- eo,
  Os -- ta --o bih mo --mak
  Za svoj zi -- vot ce -- o…

  Sve zbog ma -- le ga -- ra -- ve
  Cr -- ne tvo -- je ci -- ganke
  Sve zbog ma -- le ga -- ra -- ve
  Cr -- ne tvo -- je ci -- ganke
}
%{\addlyrics {
  \set stanza = #"3. "
  Kad ti o -- ci gle -- dam,
  Za -- bo -- ra -- vi tu -- gu
  Sr -- ce ho -- ce jed -- no,
  Ra -- zum tra -- zi dru -- go

  Sve zbog ma -- le ga -- ra -- ve
  Crne tvo -- je ci -- gan -- ke
   Sve zbog ma -- le ga -- ra -- ve
  Crne tvo -- je ci -- gan -- ke
%}

}
%################################# Chords #######################
harmonies = \chordmode {
  a1:m
  e1:7
  a1*2:m
  e2:7
  f2*3 % Dushka has the F only on last note of measure
  %
  d2:m a2:7
  e2:7 a2:m
  %d2:m a2:7
  %e2:7 a2:m
  d2:m a2:7
  e2:7 a2:m

  e2:7 f2~
  f1
%%%%%%%%
  d1:m
  a1:m
  e1:7
  a1:m
  e1:7
  a1:m
  e1:7

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
    title= "Cyganca Sam Mala "
    subtitle=""
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

%{
Ciganka sam mala,
Oci moje gore
Igram, pevam, plesem
Celu noc do zore.

Ja sam mala﻿ garava,
Crna tvoja ciganka x4

Da si moje oci
Ti ranije sreo,
Ostao bih momak
Za svoj zivot ceo…

Sve zbog male garave
Crne tvoje ciganke x4

Kad ti oci gledam,
Zaboravi tugu
Srce hoce jedno,
Razum trazi drugo

Sve zbog male garave
Crne tvoje ciganke x4

Evo banke cigane moj
Cigane moj, sviraj mi ti x2

Ja cu tebi pevati
Ti ces meni svirati

Evo banke cigane moj
Cigane moj, sviraj mi ti

Sampanj ce mo otvoriti
Otvoriti i popiti (x2)

A kad dodje onaj cas,
Sampanj obori ce nas

Evo banke cigane﻿ moj
Cigane moj, sviraj mi ti

Am a little gipsy girl (Translation)
Am a little gipsy girl
My eyes are burning
I play, sing and dance
All the night ’till dawn

I’m you little swarthy(?)
Dark-haired gipsy girl x4

Had you earlier met my eyes
You’d be a boy
For your entire life…
All because of your little swarthy
Dark-haired gipsy girl x4

When I look into your eyes
I forget﻿ all sorrow
The hart wants one thing
The mind yearns for another.

All because of your little swarthy
Dark-haired gipsy girl x4

%}