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
  \partial 16 fs16  %lead in notes
  \mark Moderato
   fs8. es16 fs8. g16 fs8 e
   e16 d8.(d2)
   d8. cs16 d8 e d8. as16
   cs8. b16(b2)

   b8 as b cs d8. b16|
   cs16 fs8.(fs2)
   es8 [fs] gs [g] gs as
   gs8 fs(fs2)

   b8 [as] b [fs] g a|
   a8 g((g4.) r16 fs 16
   fs8 [es] fs [cs] d e
   e8 d(d4.) r16 d16|

  d8[cs] d[e] g a|
  g8 fs(fs4.) r16 fs16
  fs8[gs] fs [es] cs'16\fermata b8.^rit|
  b8\fermata as(as2)|
  \break
  \bar"||"
  \time 2/4
  \mark Chorus
  r8 b4-> fs8
  a4 g->
  fs8. e16 d8 e
  fs2

  r8 b4-> fs8|
  a4-> g8-> g|
  fs8. e16 fs8 g
  fs2

  r8 e4 g8
  fs8. e16 d4|
  cs8 cs4-> e8
  d8. cs16 b8. cs16

  cs8 d e g
  fs4 as,
  cs8(b4) as8
  b2

}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
   Kh'bin a tsi -- gay  -- ne -- rl a Kle --  ner
   O -- ber, vi ir zet, a shey -- ner,
   Bor -- ver, hun -- ge -- rik un frey -- lekh,
   Leb ikh mir vi a ben -- mey -- lekh
   kh'veys nit vu ikh ben ge -- boy -- rn,
   Mayn ma -- mes t'mikh in step far -- lor -- rn
   Mayn ta -- tn hot men oyf -- ge -- han -- gen,
   Ven er iz gan -- ve -- nen ge -- gan -- gen.

   % b
   Ekh, du fi -- dl.
   fi -- de -- le du mayn
   Shpil mayn troy -- er tsu zey in harts a -- rayn.
   Ekh, du kha -- ver mayn,
   Ver veyst vi du a -- leyn
   Az ey -- bik ey -- bik royt iz blut un vayn
}
\addlyrics {\set stanza = #"2. "
  Fun ta -- tn ge -- yirshnt? hob ikh di fidl,
  Shpil ikh o?f ir di -- dl, di -- dl
  In mayn fi -- dl kent ir he -- rn
  Mayn ma -- mes tsar, mayn shves  -- ters trern,
  In mayn fi -- dl ligh? ge -- fan-- gen
  Vi m'hot mayn ta -- tn oyf -- ge -- han -- gen
  Ven tsum toyt m' -- hot im ge -- tri -- bn
  Iz di fi -- dl mir ge -- bli  -- bn
}
%{
\addlyrics{
  Dos lid fun roy -- de -- fn un yo -- gn,
  Dos lid fun nekh -- tikn, nisht to -- gn,
  Kh'bin a tsi -- gay  -- ne -- rl a Kle --  ner

}
%}
%################################# Chords #######################
harmonies = \chordmode {
  s16
  fs4*3
  b4*3:m
  g4*2 fs4:7
  b4*3:m
  %
  g4*3
  fs4*3
  cs4*3
  fs4*3:7
  %
  b4*3:7
  e4*3:m
  fs4*3:7
  g4*3
  %
  e4*3:m
  b4*4:m
  cs4*2
  fs4*3|
  %B
  s8 b8*3:m
  e2:m
  b2:m
  fs2
  s8 b8*3:m
  e2:m
  d2
  b2:7
  s8 e8*3:m
  b2:m
  fs2
  g2
  e2:m
  fs2
  b8*3:m
  fs8
  b2:m

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
    title= "Dos Kleyne Tsigaynerl"
    subtitle="Little Gypsy"
    composer= "Itsik Manger"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}

% more verses:
\markup{}
\markup {
  \fontsize #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."
	\column {
	  ""
"Dos lid fun roydefn un yogn,"
"Dos lid fun nekhtink, nisgt togn"
"Kh'bin a tsigaynerl a kleyner"
"Kh'zing vi s'zingt nisht keyner, keyner"
"Vos far a lid s'vet aykh gefein,"
"Kent ir zikh bay mir bashtein"
"Batsoin darft ir bolyz a drayer"
"S'kost mayn vertik aykh nisht tayer."
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


