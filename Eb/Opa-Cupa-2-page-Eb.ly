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
melody = \relative c''' {
  \clef treble
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes
  \repeat volta 2{
  \mark \default
  a16  [a a8] e a4 a8 a [g16 fs]|
  g16 [g g8] e g4 e8  g [fs16 e]|
  e16 fs g a  g fs e ds e ds c b c b a c|
  b8 b16 b b8 b b2|

  c16[c c8] a8 c4 a8 c[b16 a ]|
  d16[d d8]    a8 d4  a8 d[c16 b]|
  c16[c c8] a8 c4 a8 c[b16 a ]|

  %d16 ef fs g   fs ef d c ef8 d c ef|
  b8 b16 b b8 b b2|
  }

  \break

  %\alternative { { }{ } }

 %\bar"||"
 \repeat volta 2{
   % first vocal
   \mark \default
  g'8  fs g fs g fs e ds|
  e8 ds e ds e ds c b|
  a4-> b8 c d c b a
  b8 b16 b b8 b b2  % \bar"||"
  \break
  %Kas me
  a8 a b c d\prall c b  a|
  a8 a b c d\prall c b  a|
  a8 a' g fs e ds c b|
  b8 b16 b b8 b b2|

 }
  \mark \default
  g'8  fs g fs g fs e ds|
  e8 ds e ds e ds c b|
  a4-> b8 c d c b a
  b8 b16 b b8 b b2 \bar"||"
  \break

 \break
  \repeat volta 2{
    \mark \default
   % f2 r8 ef d c|
   % Opa Cupa
    d2 (e8->) c b a
    r8 c16 c c8 c d c b a|
    a8 a' g fs e ds c b|
    fs8 b16 b b8 b b2|
  }
  \repeat volta 2{
    \mark \default
    %Lumbaj
    a8 ^"Lumbaj" e'16 e e8 e16 e e8 e16 e e4|
    ds8 ds16 ds ds8 ds16 ds ds8 c b a %fs8 fs16 fs16 fs4|
    a8 a b c d c b a |
    b8 b16 b b8 b b2|
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
  a1:m
  e1:m
  a1:m
  b2:7 e2
  a1:m

  d1:m
  a1:m
  %d1:7
  e1
  a1*3:m %10
  b2:7
  e2
  a1*3:m
  b2:7 e2  %16
  d1:m
  a1*2:m
  b2:7 e2
  a1:m %20
  b1:7
  a1:m  %dbl bar
  b2:7
  e2:m
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
    title= "Opa Cupa"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 90

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
