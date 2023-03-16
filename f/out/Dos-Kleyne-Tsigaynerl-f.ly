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
  \partial 16 e16  %lead in notes
  \mark Moderato
   e8. ds16 e8. f16 e8 d
   d16 c8.(c2)
   c8. b16 c8 d c8. gs16
   b8. a16(a2)

   a8 gs a b c8. a16|
   b16 e8.(e2)
   ds8 [e] fs [f] fs gs
   fs8 e(e2)

   a8 [gs] a [e] f g|
   g8 f((f4.) r16 e 16
   e8 [ds] e [b] c d
   d8 c(c4.) r16 c16|

  c8[b] c[d] f g|
  f8 e(e4.) r16 e16
  e8[fs] e [ds] b'16\fermata a8.^rit|
  a8\fermata gs(gs2)|
  \break
  \bar"||"
  \time 2/4
  \mark Chorus
  r8 a4-> e8
  g4 f->
  e8. d16 c8 d
  e2

  r8 a4-> e8|
  g4-> f8-> f|
  e8. d16 e8 f
  e2

  r8 d4 f8
  e8. d16 c4|
  b8 b4-> d8
  c8. b16 a8. b16

  b8 c d f
  e4 gs,
  b8(a4) gs8
  a2

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
  e4*3
  a4*3:m
  f4*2 e4:7
  a4*3:m
  %
  f4*3
  e4*3
  b4*3
  e4*3:7
  %
  a4*3:7
  d4*3:m
  e4*3:7
  f4*3
  %
  d4*3:m
  a4*4:m
  b4*2
  e4*3|
  %B
  s8 a8*3:m
  d2:m
  a2:m
  e2
  s8 a8*3:m
  d2:m
  c2
  a2:7
  s8 d8*3:m
  a2:m
  e2
  f2
  d2:m
  e2
  a8*3:m
  e8
  a2:m

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


