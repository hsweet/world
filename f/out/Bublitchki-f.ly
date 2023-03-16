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
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 4*3 b4 d c   %lead in notes
  b2 a4 g~
  g4 a g fs
  e1~
  e4 b e fs \bar"||"

  g2 fs4 e~
  e4 a g fs
  g2 fs4 e~
  e4 e g b

  e2 ds4 e~
  e4 g fs e
  b1~
  b4 b c cs

  d2 c4 b~
  b4 e d c
  b2 a4-.g~
  g4 b d c|

  b2 a4-. g~
  g4 a g fs
  e2 g
  fs4 d g a \bar"||"

  b2 a4-. g~
  g4 d' cs c
  b2 a4-. g~
  g4 d g b

  d2 cs4 d~
  d4 g fs e
  b1~
  b4 b-. e fs

  g2 fs4-. e~
  e4 b d c

  b2 a4-. g~
  g4 b d c
  b2 a4-. g~
  g4 a g fs
  e1~
  e4 r e r

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
