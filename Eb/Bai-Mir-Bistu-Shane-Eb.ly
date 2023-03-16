\version "2.18.0"
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

  \key a \minor
  \time 2/4

  \partial 16*2 e16 e

  c'8 c c b16 a
  e'8 b r16 e,16 a b |
  c8 c c b16 a
  e'8 b r16 e,16 a b |

  c8 c c b16 a
  d8 d16 d d8 c16 b|
  e8 e dis  \tuplet 3/2 { c16 dis c }
  b4 r16 e,16 [a16 b16]

  c8 c c b16 a
  e'8 b r16 e,16 a b
  c8 c c b16(a)

  e'8 b r16 e,16 a b
  c16 c c c c c b ^\markup{//}  a
  f'16 f f f f8 e16 ^\markup{//} d
  c8 a b e,

  a2|
  d8 d d16 c b a
  b2
  f'8 f f16 e d c16|

  e4.\fermata e,8

  %started @ 4 measures in on 2nd  page
  \repeat volta 2{
    \time 4/4

    c'2 b4 a
    c2 r4 e,
    c'2 b4 a
    c2 r4 b

    b4 gis2 e4
    b'2 c4 b
    a4 r4 r2

    r2 r4 e
    c'2 b4 a
    c2 r4 e,

    c'2 b4 a
    c2 r4 b
    b4 gis2 e4
    b'2 c4 b4

    a1~
    a4 a b c
    d4 r a d~
    d4 c8(d) \grace d c(b) a4
    b8(d) c4 c c ~
    c4 a b c

    d4 r a  d4 ~
    d4 c8(d)c(b)a4
    e'4 b b b ~

    %5th line
    b4 r e,2
    c'2 b4 a
    c2 r4 e,
    c'2 b4 a
    c2 r4 b
    %last line
    b4 gis2 e4
    b'2 c4 b

  }

  \alternative {
    {a1 ~ a4 r e2 }
    {a1 ~ a4 r r2}
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
  a2:m e2 a2:m e2 a2:m d2:m e4 b4:7
  e2 a2:m e2 a2:m e2 a2:m d2:m a4:m e4:7
  a2:m d2:m e2 d2:m e2:7
  %part B 4/4
  a1:m s1*3
  e1 s1 a1:m s1*5
  e1:7 s1 a1:m r1
  d1:m s1 a1:m s1 d1:m s1 e1 s1
  a1:m s1*3 d1:7 s1 a1:m


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
