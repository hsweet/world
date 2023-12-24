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
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  \partial 16 a16  %lead in notes
  \mark Moderato
   a8. gs16 a8. bf16 a8 g
   g16 f8.(f2)
   f8. e16 f8 g f8. cs16
   e8. d16(d2)

   d8 cs d e f8. d16|
   e16 a8.(a2)
   gs8 [a] b [bf] b cs
   b8 a(a2)

   d8 [cs] d [a] bf c|
   c8 bf((bf4.) r16 a 16
   a8 [gs] a [e] f g
   g8 f(f4.) r16 f16|

  f8[e] f[g] bf c|
  bf8 a(a4.) r16 a16
  a8[b] a [gs] e'16\fermata d8.^rit|
  d8\fermata cs(cs2)|
  \break
  \bar"||"
  \time 2/4
  \mark Chorus
  r8 d4-> a8
  c4 bf->
  a8. g16 f8 g
  a2

  r8 d4-> a8|
  c4-> bf8-> bf|
  a8. g16 a8 bf
  a2

  r8 g4 bf8
  a8. g16 f4|
  e8 e4-> g8
  f8. e16 d8. e16

  e8 f g bf
  a4 cs,
  e8(d4) cs8
  d2

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
  a4*3
  d4*3:m
  bf4*2 a4:7
  d4*3:m
  %
  bf4*3
  a4*3
  e4*3
  a4*3:7
  %
  d4*3:7
  g4*3:m
  a4*3:7
  bf4*3
  %
  g4*3:m
  d4*4:m
  e4*2
  a4*3|
  %B
  s8 d8*3:m
  g2:m
  d2:m
  a2
  s8 d8*3:m
  g2:m
  f2
  d2:7
  s8 g8*3:m
  d2:m
  a2
  bf2
  g2:m
  a2
  d8*3:m
  a8
  d2:m

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
    title= "Dos Kleyne Tsigaynerl"
    subtitle="Little Gypsy"
    composer= "Itsik Manger"
    instrument = "F Horn"
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


