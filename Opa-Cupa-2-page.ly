\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ " Updated " \date  }  }
%\markup{Cm Gm Cm D7 G x2 ||Cm7 Gm Cm D7 G} x2



%#################################### Melody ########################
melody = \relative c'' {
  \clef treble
  \key g \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes
  \repeat volta 2{
  \mark \default
  c16  [c c8] g c4 c8 c [bf16 a]|
  bf16 [bf bf8] g bf4 g8  bf [a16 g]|
  g16 a bf c  bf a g fs g fs ef d ef d c ef|
  d8 d16 d d8 d d2|

  ef16[ef ef8] c8 ef4 c8 ef[d16 c ]|
  f16[f f8]    c8 f4  c8 f[ef16 d]|
  ef16[ef ef8] c8 ef4 c8 ef[d16 c ]|

  %d16 ef fs g   fs ef d c ef8 d c ef|
  d8 d16 d d8 d d2|
  }

  \break

  %\alternative { { }{ } }

 %\bar"||"
 \repeat volta 2{
   % first vocal
   \mark \default
  bf'8  a bf a bf a g fs|
  g8 fs g fs g fs ef d|
  c4-> d8 ef f ef d c
  d8 d16 d d8 d d2  % \bar"||"
  \break
  %Kas me
  c8 c d ef f\prall ef d  c|
  c8 c d ef f\prall ef d  c|
  c8 c' bf a g fs ef d|
  d8 d16 d d8 d d2|

 }
  \mark \default
  bf'8  a bf a bf a g fs|
  g8 fs g fs g fs ef d|
  c4-> d8 ef f ef d c
  d8 d16 d d8 d d2 \bar"||"
  \break

 \break
  \repeat volta 2{
    \mark \default
   % f2 r8 ef d c|
   % Opa Cupa
    f2 (g8->) ef d c
    r8 ef16 ef ef8 ef f ef d c|
    c8 c' bf a g fs ef d|
    a8 d16 d d8 d d2|
  }
  \repeat volta 2{
    \mark \default
    %Lumbaj
    c8 ^"Lumbaj" g'16 g g8 g16 g g8 g16 g g4|
    fs8 fs16 fs fs8 fs16 fs fs8 ef d c %fs8 fs16 fs16 fs4|
    c8 c d ef f ef d c |
    d8 d16 d d8 d d2|
  }

  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
  \repeat unfold 73{\skip 2}

  Me sem go -- va cha -- vo -- ro, _
  Khe -- lav man -- ge maj -- la -- cho,
  Oj an -- da -- le man -- da -- le,
  E cho -- ra man as -- ta -- ren.

  Kas me as -- tar -- av -- _ a, _
  Me man -- ge a -- sa -- _ va, _
  Sa -- mo jekh chaj ni man -- gel, _
  Voj man -- _ de pu -- chel

  O -- pa cu -- pa na ker man -- ge cha -- je mu -- ka,
  Ti daj ka _  me -- rel a -- ko ni _ _ ke -- les.  _

  Lum -- baj, _  lum -- baj, _ lum -- ba -- _ laj
  aj -- de _  aj -- de _ aj --  _ de, _

  Lum -- baj,  lum -- baj, lum -- ba -- laj _
  aj -- de _  aj -- de _ aj -- de

}
\addlyrics {
  \repeat unfold 140{\skip 2}
  Sa e cha -- ja ke -- le -- na, _
  Voj ni man -- gel te khe -- lel,
  Oj an -- da -- le man -- da -- le, _
  Mu -- da -- rel man o devel.

}

\addlyrics {
  \repeat unfold 140{\skip 2}
    A -- va Ru -- za a -- va khel, _
  a i ti -- ro mek a -- vel,
  Oj an -- da -- le man -- da -- le,
  E svi -- ra -- cha ka ke -- len.
}
%{
\addlyrics {
  \repeat unfold 81{\skip 2}
  Cha -- o maj o hu -- ta -- lo, _

  A -- va Ru -- za a -- va khel, _
  Pa i ti -- ro mek a -- vel, _
  Oj an -- da -- le man -- da -- le,
  E svi -- ra -- cha ka ke -- len.
}
%}
%################################# Chords #######################
harmonies = \chordmode {
  c1:m
  g1:m
  c1:m
  d2:7 g2
  c1:m

  f1:m
  c1:m
  %d1:7
  g1
  c1*3:m %10
  d2:7
  g2
  c1*3:m
  d2:7 g2  %16
  f1:m
  c1*2:m
  d2:7 g2
  c1:m %20
  d1:7
  c1:m  %dbl bar
  d2:7
  g2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Opa Cupa"
    subtitle=""
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
Me sem gova chavoro,
Khelav mange majlacho,
Oj andale mandale,
E chora man astaren.

Kas me astarava,
Me mange asava,
Samo jekh chaj ni mangel,
Voj mande puchel

O opa cupa na ker mange chaje muka,
Ti daj ka merel ako ni keles.

Lumbaj , lumbaj, lumbalaj ajde ajde ajde,
Lumbaj , lumbaj, lumbalaj ajde ajde ajde.

Sa e chaja kelena,
Voj ni mangel te khelel,
Oj andale mandale,
Mudarel man o devel.

Ava Ruza ava khel,
a i tiro mek avel,
Oj andale mandale,
E sviracha ka kelen.

O opa cupa na ker mange chaje muka,
Ti daj ka merel ako ni keles.

Lumbaj , lumbaj, lumbalaj ajde ajde ajde,
Lumbaj , lumbaj, lumbalaj ajde ajde ajde.

Chao maj o hutalo, I Ruza so ni kelel,
Oj andale mandale, an bobo ki astarel.

Ava Ruza ava khel,
Pa i tiro mek avel,
Oj andale mandale,
E sviracha ka kelen.

O opa cupa na ker mange chaje muka,
Ti daj ka merel ako ni keles.

Lumbaj , lumbaj, lumbalaj ajde ajde ajde,
Lumbaj , lumbaj, lumbalaj ajde ajde ajde.

Oh girl (translation)

I am a poor guy,
One of the best dancers,
The girls grab me to dance.

Whomever I grab is glad,
Only one girl doesn’t want to dance,
She runs away from me.

O girl, why are you making trouble for me?
May your mother die if you don’t dance!
Come on, come on, Come on!

All the girls are dancing,
But she is crying sadly,
In my heart a fire burns.
Come on, Rosa, come and dance,
Then you’ll get married.
Even the musicians are dancing.

Whomever I grab is glad,
Only one girl doesn’t want to dance,
She runs away from me.
%}
