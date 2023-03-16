%http://zemerl.com/cgi-bin//print.pl?title=Beygelach
\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key a \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c''' {
  \global
  \partial 4*3 cs4 e d   %lead in notes
  cs2 b4 a~
  a4 b a gs
  fs1~
  fs4 cs fs gs \bar"||"

  a2 gs4 fs~
  fs4 b a gs
  a2 gs4 fs~
  fs4 fs a cs

  fs2 es4 fs~
  fs4 a gs fs
  cs1~
  cs4 cs d ds

  e2 d4 cs~
  cs4 fs e d
  cs2 b4-.a~
  a4 cs e d|

  cs2 b4-. a~
  a4 b a gs
  fs2 a
  gs4 e a b \bar"||"

  cs2 b4-. a~
  a4 e' ds d
  cs2 b4-. a~
  a4 e a cs

  e2 ds4 e~
  e4 a gs fs
  cs1~
  cs4 cs-. fs gs

  a2 gs4-. fs~
  fs4 cs e d

  cs2 b4-. a~
  a4 cs e d
  cs2 b4-. a~
  a4 b a gs
  fs1~
  fs4 r fs r

  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s4*3

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Bublitchki"
    subtitle="Bagels"
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
 Es rikt zich on di nacht
Ich gey arum farshmacht
Aroysgetribn micht fun umetum
Kleyder tserissene, nit keyn gevashene
An oysgematerte gey ich arum.
Koyft mayne beygelach
Frishinke beygelach
Nu, koyftshe gicher, koyft
Ich darf dos geld.
Ich bin an oreme
Un a farloyrene
A na-venadnitse
Do oyf der velt.

Mayn tate shikert nor
On dem koym lebt er gor,
Di shvester handelt itst
Mit zich aleyn.
In shtub iz groys di noyt
Nito keyn shtikl broyt
Fun tsores mid zing ich
Mayn troyer lid:

Oy koyftshe beygelach
Aaaheysinke beygelach
Zet, mayne eygelach
Zenen farbrent.
Oy, oy, oy, laytelach
Git oyf popaytelach
Un dos iz ales vos
Ich hob gemeynt.
Nu, koyftshe beygelach
Vayl mer keyn koyches iz
Shoyn bald nito.
S'vert shvach di lingelach
Kumt gicher yingelach
Koyft a por beygelach
Bay mir ot do.

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
