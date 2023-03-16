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
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    fs4 b d
    fs8 es fs4. g8
    fs4 as,2~
    as2.

    fs4 as cs8 cs
    e4 d cs
  }
  \alternative {
    { d2.~ d2.}
    {b2.~ b2.}
  }

  %b
  \mark \default
  b4 ds fs
  a4 g fs
  g8 fs e2~
  e2.

  a,4 cs e
  g4 fs e
  fs8 e d4. fs8|
  e8 d cs2 \bar"||"

  fs,4 b d
  fs8 es fs4. g8
  fs4 as,2~
  as2.

  fs4 as cs
  e4 d cs
  b2.~ b2.


}
%################################# Lyrics #####################
%{
\addlyrics{ \set stanza = #"1. "
            Vu nemt men a bi -- se -- le ma -- zl,
            Vu nemt men a bi -- se -- le glik,


            _ Di velt iz ba -- sha -- fn far ye -- dn,
            Ba --sha -- fn far ye -- dn va glaykh.
            Oy, vu nemt men a bisele,
            Khotsh nor a  bisele mazl, a bisele glik?
            Oy, vu nemt men a bisele Khotsh nor a bisele
            mazl, a bisele glik?

}
\addlyrics {
 Er rey -- dl zol zikh  ib -- er -- drey -- en
            Un breyn -- gen dos ma -- zl tsu -- _ rik.}

%}

%################################# Chords #######################
harmonies = \chordmode {
  b2.*2:m
  fs2.*4:7
  b2.*2:m
  b2.*2:m
  %b
  b2.*2:7
  e2.*2:m
  a2.*2:7
  d2.
  fs2.:7
  %dbl bar
  b2.*2:m
  fs2.*4:7
  b2.:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Mazel"
    subtitle=""
    composer= "Ellstein-Pican"
    instrument =""
    arranger= "Socolov"
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}

%{
Vu nemt men a bisele mazl,
Vu nemt men a bisele glik,
Er reydl zol zikh  iberdreyen
Un breyngen dos mazl tsurik.

Di velt iz bashafn far yedn,
Bashafn far yedn va glaykh.
Oy, vu nemt men a bisele,
Khotsh nor a  bisele mazl, a bisele glik?
Oy, vu nemt men a bisele Khotsh nor a bisele
mazl, a bisele glik?

Vi mentshn zol zikh eyn zel mazl
Zer loikhn zer  yuddn zer gik
E nasah vol zeys oyf dos mazl
Ken mumer  nit habn zurik
Oy, vu nemt men a bisele,
Khotsh nor a bisele mazl, a  bisele glik?
Oy, vu nemt men a bisele Khotsh nor a bisele mazl, a bisele  glik?

Oy, vu nemt men a bisele,
Khotsh nor a bisele mazl, a bisele glik?
Oy, vu nemt men a bisele
Khotsh nor a bisele mazl, a bisele glik?

Oy, vu nemt men a bisele mazl, a bisele glik?
Oy, vu nemt men a bisele  mazl, a bisele glik?
Oy, vu nemt men a bisele mazl, a bisele glik?

Oy,  vu nemt men a bisele,
Khotsh nor a bisele mazl, a bisele glik?
Oy, vu  nemt men a bisele
Khotsh nor a bisele mazl, a bisele glik?

%}

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
