\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
  \key g \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  r4 d4-2 g8 d g4
  bf2-1 g~
  g8 bf a bf  c bf a g
  a1-1~
  \break
  a8 r d4 a8 d a4
  c2 a~
  a8 c bf c  d c bf a
  bf1~
  \break
  bf8 r bf4-2 c-3 d-2|
  ef4 ef ef ef
  ef4 f8 ef d4 cs
  d1~
  \break
  d4 g,-1 a-1  bf
  c4 c c c
  c4 d8 c bf a g-2 a |
  bf1~
  \break
  bf8 r d,4-2 g8 d g4
  bf2 g~
  g8 bf a bf  c bf a g
  a1-1~   %styles
  \break
  a8 r d4 a8 d a4
  c2 a~
  a8 c bf(c)  d c bf a
  bf1-4~
  \break
  bf2 \breathe c4 d
  ef4 f8 ef d4 c8 d|
  ef4 c c bf8 c
  d4 ef8 d c4 bf8 c
  \break
  d4 bf bf a8 bf
  c4 d8 c bf4 a8 g-1
  g'2 ef-2 \breathe
  d4-2 ef8 d c4 bf8(a)
  %{
    <<
    {d4 ef8 d c4 bf8(a)}
    {d2 d}
    >>
  %}
  g1
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
  g2*3:m
  c2:m6
  d1
  d1:7
  c2*2:m
  (d2)
  d2:7
  g1*2:m
  c1:m
  f1
  bf1*2
  c1:m
  d1:7
  g2*7:m
  c2:m6
  d1
  d1:7
  c2*3:m6
  d2:7
  g1*2:m
  c1*2:m
  g1*2:m
  c1:m
  ef2
  c2:m
  d1:7
  g1:m

}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
     \transpose g c \harmonies
    }
    \new Staff
   \transpose g c' \melody
  >>
  \header{
    title= "Yiddishe Mame"
    subtitle=""
    composer= ""
    instrument = "Eb"
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
