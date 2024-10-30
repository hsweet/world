\version "2.18.0"
\language "english"
\pointAndClickOff
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

  \key c \minor
  \time 2/4

  \partial 16*2 g16 g

  ef'8 ef ef d16 c
  g'8 d r16 g,16 c d |
  ef8 ef ef d16 c
  g'8 d r16 g,16 c d |

  ef8 ef ef d16 c
  f8 f16 f f8 ef16 d|
  g8 g fs  \tuplet 3/2 { ef16 fs ef }
  d4 r16 g,16 [c16 d16]

  ef8 ef ef d16 c
  g'8 d r16 g,16 c d
  ef8 ef ef d16(c)

  g'8 d r16 g,16 c d
  ef16 ef ef ef ef ef d ^\markup{//}  c
  af'16 af af af af8 g16 ^\markup{//} f
  ef8 c d g,

  c2|
  f8 f f16 ef d c
  d2
  af'8 af af16 g f ef16|

  g4.\fermata g,8

  %started @ 4 measures in on 2nd  page
  \repeat volta 2{
    \time 4/4

    ef'2 d4 c
    ef2 r4 g,
    ef'2 d4 c
    ef2 r4 d

    d4 b2 g4
    d'2 ef4 d
    c4 r4 r2

    r2 r4 g
    ef'2 d4 c
    ef2 r4 g,

    ef'2 d4 c
    ef2 r4 d
    d4 b2 g4
    d'2 ef4 d4

    c1~
    c4 c d ef
    f4 r c f~
    f4 ef8(f) \grace f ef(d) c4
    d8(f) ef4 ef ef ~
    ef4 c d ef

    f4 r c  f4 ~
    f4 ef8(f)ef(d)c4
    g'4 d d d ~

    %5th line
    d4 r g,2
    ef'2 d4 c
    ef2 r4 g,
    ef'2 d4 c
    ef2 r4 d
    %last line
    d4 b2 g4
    d'2 ef4 d

  }

  \alternative {
    {c1 ~ c4 r g2 }
    {c1 ~ c4 r r2}
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
  c2:m g2 c2:m g2 c2:m f2:m g4 d4:7
  g2 c2:m g2 c2:m g2 c2:m f2:m c4:m g4:7
  c2:m f2:m g2 f2:m g2:7
  %part B 4/4
  c1:m s1*3
  g1 s1 c1:m s1*5
  g1:7 s1 c1:m r1
  f1:m s1 c1:m s1 f1:m s1 g1 s1
  c1:m s1*3 f1:7 s1 c1:m


}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Bai Mir Bistu Shane"
instrument= "Eb"
instrument= "Eb"
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
