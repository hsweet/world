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
  \key a \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  \partial 8*1 e8  %lead in notes

  \repeat volta 2{
    \mark \default
    e4 a r8  c
    e8 ds e4. f8
    e4 gs,2~
    gs2.

    e4 gs b8 b
    d4 c b
  }
  \alternative {
    { c2.~ c2 r8 e,}
    {a2.~ a2.}
  }

  %b
  \mark \default
  a4 cs e
  g4 f e
  f8 e d2~
  d2.

  g,4 b d
  f4 e d
  e8 d c4. e8|
  d8 c b2  \breathe  % \bar"||"

  e,4 a c
  e8 ds e4. f8
  e4 gs,2~
  gs2.

  e4 gs b
  d4 c b
  a2.~ a2.


}
%################################# Lyrics #####################

\addlyrics{ \set stanza = #"1. "
            Vu nemt men a bi -- se -- le  _ ma -- zl,
            Vu nemt men a bi -- se -- le glik, Der

        _ Der velt is ba -- sha -- fn ge -- vo -- rn
            %{_ Di velt iz ba -- sha -- fn far ye -- dn,
            Ba --sha -- fn far ye -- dn va glaykh.
            Oy, vu nemt men a bisele,
            Khotsh nor a  bisele mazl, a bisele glik?
            Oy, vu nemt men a bisele Khotsh nor a bisele
            mazl, a bisele glik?  %}

}
\addlyrics {
            _ drey -- dl -- e   zol zikh  shoyn  drey -- en
            Un breyn -- gen dos _ ma -- zl tsu -- _ _ rik }

%}

%################################# Chords #######################
harmonies = \chordmode {
  s8
  a2.*2:m
  e2.*4:7
  a2.*2:m
  a2.*2:m
  %b
  a2.*2:7
  d2.*2:m
  g2.*2:7
  c2.
  e2.:7
  %dbl bar
  a2.*2:m
  e2.*4:7
  a2.:m

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
