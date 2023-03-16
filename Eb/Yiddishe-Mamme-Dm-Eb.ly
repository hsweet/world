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
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  r4 b4 e8 b e4
  g2 e~
  e8 g fs g  a g fs e
  fs1~
  \break
  fs8 r b4 fs8 b fs4
  a2 fs~
  fs8 a g a  b a g fs
  g1~
  \break
  g8 r g4 a b|
  c4 c c c
  c4 d8 c b4 as
  b1~
  \break
  b4 e, fs  g
  a4 a a a
  a4 b8 a g fs e fs |
  g1~
  \break
  g8 r b,4 e8 b e4
  g2 e~
  e8 g fs g  a g fs e
  fs1-1~   %styles
  \break
  fs8 r b4 fs8 b fs4
  a2 fs~
  fs8 a g(a)  b a g fs
  g1-4~
  \break
  g2 \breathe a4 b
  c4 d8 c b4 a8 b|
  c4 a a g8 a
  b4 c8 b a4 g8 a
  \break
  b4 g g fs8 g
  a4 b8 a g4 fs8 e
  e'2 c \breathe
  b4 c8 b a4 g8(fs)
  %{
    <<
    {d4 ef8 d c4 bf8(a)}
    {d2 d}
    >>
  %}
  e1
}
%################################# Lyrics #####################
\addlyrics{
  My yid -- is -- he Ma -- me
  I need her more than ev -- er now
  My Yid -- dis -- he Ma -- me,
  I'd like to kiss her wrinkl -- ed brow
  I long to hold her hand once more as in days gone by
  And ask her to for -- give me \skip 4 for \skip 4 things that made her cry
  How few were her pleas -- ures,
  She nev -- er cared for fash -- ion styles
  Her jewels and her treas -- ures,
  She found in her ba -- bie's smiles
  Oh I know that I owe what I am to -- day
  To that dear lit -- tle la -- dy who's old and grey,
  To that won -- der -- ful Yid -- is -- he Ma -- me,
  Yid -- is -- he Ma -- me, mine
}
\addlyrics {
  A Yid -- dis -- he Ma -- me,
  Es gib nicht bes -- ser of der velt
  A Yid -- dis -- he Ma -- me,
  Oy vey vi bit -- ter ven zi felt
  Vi shayn in likh -- tig iz in hoiz ven di mama iz do
  Vi troy -- er -- ig fins -- ter vert ven Got nemt ir oif Olam Ha -- boh

  In vas -- sser in fay -- er
  Volt zi ge -- lo -- fn far ihr kind
  Nisht hal -- tn ihr tay -- er
  Dos is ge -- vis di gresten zind
  Oy, vi glik -- lekh un raykh iz der mentsh vot hot
  Az -- a  shay -- ne ma -- tun -eh gesh -- enkt foon G-t
  Nor ayn alt -- ich -- ke Yid -- dis -- he Ma -- me,
  Yid -- is -- he Ma -- me, mine
  %Ma -- \skip 4 \skip 4 me \skip 8 mayn
}
%################################# Chords #######################
harmonies =  \chordmode {
  s1
  e2*3:m
  a2:m6
  b1
  b1:7
  a2*2:m
  (b2)
  b2:7
  e1*2:m
  a1:m
  d1
  g1*2
  a1:m
  b1:7
  e2*7:m
  a2:m6
  b1
  b1:7
  a2*3:m6
  b2:7
  e1*2:m
  a1*2:m
  e1*2:m
  a1:m
  c2
  a2:m
  b1:7
  e1:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
     \transpose e' b \harmonies
    }
    \new Staff
   \transpose e' b' \melody
  >>
  \header{
    title= "Yiddishe Mame"
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
