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
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  r4 a4-2 d8 a d4
  f2-1 d~
  d8 f e f  g f e d
  e1-1~
  \break
  e8 r a4 e8 a e4
  g2 e~
  e8 g f g  a g f e
  f1~
  \break
  f8 r f4-2 g-3 a-2|
  bf4 bf bf bf
  bf4 c8 bf a4 gs
  a1~
  \break
  a4 d,-1 e-1  f
  g4 g g g
  g4 a8 g f e d-2 e |
  f1~
  \break
  f8 r a,4-2 d8 a d4
  f2 d~
  d8 f e f  g f e d
  e1-1~   %styles
  \break
  e8 r a4 e8 a e4
  g2 e~
  e8 g f(g)  a g f e
  f1-4~
  \break
  f2 \breathe g4 a
  bf4 c8 bf a4 g8 a|
  bf4 g g f8 g
  a4 bf8 a g4 f8 g
  \break
  a4 f f e8 f
  g4 a8 g f4 e8 d-1
  d'2 bf-2 \breathe
  a4-2 bf8 a g4 f8(e)
  %{
    <<
    {d4 ef8 d c4 bf8(a)}
    {d2 d}
    >>
  %}
  d1
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
  d2*3:m
  g2:m6
  a1
  a1:7
  g2*2:m
  (a2)
  a2:7
  d1*2:m
  g1:m
  c1
  f1*2
  g1:m
  a1:7
  d2*7:m
  g2:m6
  a1
  a1:7
  g2*3:m6
  a2:7
  d1*2:m
  g1*2:m
  d1*2:m
  g1:m
  bf2
  g2:m
  a1:7
  d1:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
     \transpose d g, \harmonies
    }
    \new Staff
   \transpose d g \melody
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
