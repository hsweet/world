\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \key d \minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark Intro
   b'8 a a g b2
   a8 g g fs a2
   g8 fs fs e g fs fs e
   e4 b ds fs
   e1
  }
  \alternative {
    { }
    { }
  }

  \repeat volta 2{
   \mark \default
  }
   \alternative {
     { }
     { }
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e1:m
  b1:7
  e1:m
  b1:m
  e1:m
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
    title= "Dos Tsigele"
    subtitle="Itzik Manger"
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
Der tate hot gekoyft a tsigele
mit yorn ful tsurik,
In khad gadye es farshpart,
gebundn oyf a shtrik.
Iz troyerik dos tsigele,
vind iz im un vey,
Zumer zet es nisht keyn groz
un vinter nisht keyn shney.

Zog mayn bruder, "Itsik, her,
vi derlozt es Got?
Tsu iz im nisht dos tsigele
dos vaysinke a shod?"
Zog ikh, "Notl, bist gerekht!"
un nisht lang getrakht,
S'iz geven vi zeltn
ven a sheyne vesne-nakht.
Der tate shloft, di mame shloft,
s'shloft dos gantse hoyz,
Firn mir funem khad gadye
dos tsigele aroys.

Mir firn bay di herner es,
di velt iz vayt un groys,
Un vu mir lozn es aleyn
dos zogn mir nisht oys.
Pesakh di ershte seder-nakht
s'tsigele nishto,
Fregt der tate: "Itsik, du?"
Zog ikh, "Abervo."
Der tate fregt, "Notl, du?"
Zogt er, "Vos un ven,
Zint farayorn pesakh-tsayt
dos tsigele nisht gezen."

Der tate veynt, di mame veynt,
keyner veyst nisht vos,
Zingt men dem khad gadye op
un dos iz shoyn nisht dos.
To vu zhe iz dos tsigele,
s'shpringt arum in feld,
Un hot hanoe fun der zun
un fun der gantser velt.
https://lyricstranslate.com
%}