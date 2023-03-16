\version "2.18.0"
\language "english"
%moved \header into \score for includes to work

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
  %obsolete-between-system-padding = #0.1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  %obsolete-between-system-space = #0.1  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)

}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{  }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble

  \key g \minor
  \time 2/4

  \partial 16*2 d16 d

  bf'8 bf bf a16 g
  d'8 a r16 d,16 g a |
  bf8 bf bf a16 g
  d'8 a r16 d,16 g a |

  bf8 bf bf a16 g
  c8 c16 c c8 bf16 a|
  d8 d cs  \tuplet 3/2 { bf16 cs bf }
  a4 r16 d,16 [g16 a16]

  bf8 bf bf a16 g
  d'8 a r16 d,16 g a
  bf8 bf bf a16(g)

  d'8 a r16 d,16 g a
  bf16 bf bf bf bf bf a ^\markup{//}  g
  ef'16 ef ef ef ef8 d16 ^\markup{//} c
  bf8 g a d,

  g2|
  c8 c c16 bf a g
  a2
  ef'8 ef ef16 d c bf16|

  d4.\fermata d,8

  %started @ 4 measures in on 2nd  page
  \repeat volta 2{
    \time 4/4

    bf'2 a4 g
    bf2 r4 d,
    bf'2 a4 g
    bf2 r4 a

    a4 fs2 d4
    a'2 bf4 a
    g4 r4 r2

    r2 r4 d
    bf'2 a4 g
    bf2 r4 d,

    bf'2 a4 g
    bf2 r4 a
    a4 fs2 d4
    a'2 bf4 a4

    g1~
    g4 g a bf
    c4 r g c~
    c4 bf8(c) \grace c bf(a) g4
    a8(c) bf4 bf bf ~
    bf4 g a bf

    c4 r g  c4 ~
    c4 bf8(c)bf(a)g4
    d'4 a a a ~

    %5th line
    a4 r d,2
    bf'2 a4 g
    bf2 r4 d,
    bf'2 a4 g
    bf2 r4 a
    %last line
    a4 fs2 d4
    a'2 bf4 a

  }

  \alternative {
    {g1 ~ g4 r d2 }
    {g1 ~ g4 r r2}
  }

}
%################################# Lyrics #####################

\addlyrics{
  \skip2 \skip2
  Ven di zolst zain shvarz vi a tu -- ter
  ven di host oi- gen vi bai a ku -- ter
  un ven di hinkst tsu -- bis- lach host
  hil -- tser -- ne fis -- lach zug ich dos art
  mich - \skip2 nit

  %{un ven di host a na -- ri- shin shme -- chl
un ven di host Vai- zo- sos- se- chil
ven di bist vild vi In- di- a - ner
bist a- fi- li ga-litz- ya- ner

zog ick dos art mich nit
Zog mir vi er- klers- tsu dos
chvel dir zo- gn bald far vis bai
mir bis -tu shen, Bai mir hos -- tu chen
Bai mir bis -- tu git

bist e - ne bai mir oif der velt
Bai mir hos - tu it
  %}
}



%################################# Chords #######################
harmonies = \chordmode {
  s8
  g2:m d2 g2:m d2 g2:m c2:m d4 a4:7
  d2 g2:m d2 g2:m d2 g2:m c2:m g4:m d4:7
  g2:m c2:m d2 c2:m d2:7
  %part B 4/4
  g1:m s1*3
  d1 s1 g1:m s1*5
  d1:7 s1 g1:m r1
  c1:m s1 g1:m s1 c1:m s1 d1 s1
  g1:m s1*3 c1:7 s1 g1:m


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
    title= "Bai Mir Bistu Shane"
    arranger=""

  }%{
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
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
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
