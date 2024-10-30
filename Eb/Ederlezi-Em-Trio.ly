\version "2.18.0"
\include "english.ly"
\pointAndClickOff
%showLastLength = R1*12
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
primos = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r4 b8 c d (c)b (a)
    a8 b~b4     a16 g a8 g4
    r4 b8 c c4 c8 a|
    b4. c8 a16 g a8 g4|

    r4 b8 c c4 c8 a|
    b4. c8 a16 g a8 g4|
    r4 b8 a c c a4|
    g8 g~g2 r4|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default

        d'2. c16 d c b
        c2. r4

    g4 b8 b a g fs fs|
    g4 fs8 g b b a4|
    g4 b8 b a g fs e|
  }
  \alternative {
    {
      e'2 \fermata d8 c b a
      r4 d8 c b4 a
      r4 g8 fs b b fs4|
      e8 e (e2) r4|
    }
    {
      \mark \default
      e'1 |
      r4 d8 c b4 a|
      r4 d8 c b4 a
      r4 a8 g b b fs4|
      e8 e (e2) _\markup{\italic fine} r4| \bar"||"
    }
  }
  r1
  b''8 a a gs gs fs fs e
  r1
  %ds8 e fs r r2
  ds,8 e fs4 r2
  b'8 a a gs gs fs fs e
  ds1 _\markup {\italic {D.C. al Fine}}

}
%***********************************************************
%{
\addlyrics{
  %https://musescore.com/user/35722119/scores/6322876
  Sa o Ro -- ma ba -- bo,
  \repeat unfold 4{\skip2}
  e bak -- ren ch --i --n --  en
  \repeat unfold 4{\skip2}
  A me ch -- o --  -- r -- r -- o,
  \repeat unfold 4{\skip2}
  d -- u -- ral ve --  _ sa -- va
  \repeat unfold 1 {}

  Eh -- e -- e -- e -- e e..
  Sao Ro -- ma, ba -- bo ba -- bo,
  Sao Ro -- ma  o da -- je.
  Sao Ro -- ma, ba -- bo ba -- bo,
  % first end
  E.. Er -- de -- le -- zi
  Er -- de -- le -- zi
  Sa -- o Ro -- ma  o da -- je.
 % 2nd end
  E.. Er -- de -- le -- zi
  Er -- de -- le -- zi
  Sa -- o Ro -- ma  o da -- je.

}
\addlyrics{
Sa me a -- ma -- la _
\repeat unfold 4{\skip2}
o -- ro khe -- le -- _ na
\repeat unfold 5{\skip2}
o -- ro khe -- le -- _ na,
\repeat unfold 5{\skip2}
di -- ve ke -- re -- _  na
}
%}
%***********************************************

secund = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r4 g8 a b a g fs
    fs8 g~g4 fs16 e fs8 e4|
    r4 g8 a a4 a8 fs|
    g4. a8 fs16 e fs8 e4|

    r4 g8 a a4 a8 fs
    g4. a8 fs16 e fs8 e4|
    r4 g8 fs a a a4|
    e8 e~e2 r4|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
   b'2. a16 b a g|
        a2. r4|


    e4 g8 g e e e e|
    e4 e8 e e e e4
    e4 g8 g e e e e|
  }
  \alternative {
    {
      c'2 \fermata b8 a g e
      r4 b'8 a g4 e
      r4 e8 e ds ds ds4
      e8 e (e4) r2
    }
    {
      e1
      r1
      r4 b'8 a g4 fs
      r4 e8 e ds ds ds4
      e8 e(e4) r2
    }
  }
  r1
  %ds8 e fs4 r2
  b'8 a a gs gs fs fs e
  ds8 e fs r r2
  r2 b,8 b b4
  b'8 a a gs gs fs fs e
  ds1
}
third = \relative c' {
  \global
  \clef alto
 r4 e,8 e d4. d8|
 d8 d(d2.)|
 r4 c8 c a4 a
 c1r4 c8 c a4 a
 b1|
 r4 b ds ds
 e8 e(e2.)
%% bar
 g,2. fs16 g fs e|
    fs2. r4|
 b,4 b c c
 b4 b c c
 b4 b c c
 c2 \fermata r
 r4 e8 e e4 e
 r4 b'8 b b4 b
 b8 b (b2.)
 g1
 r1
 r4 e8 e e4 e
 r4 b8 b b4 b
 b8 b (b2.)
 cs8 d e4 r2
 e4 e fs fs
 fs8 g a r r2
 ds,2 b'8 b b4
 e4 b cs fs
 b,1

}
%################################# Chords #######################
%{
harmonies = \chordmode {
  e2:m
  d2
  g1
  a1:m
  c1
  a1:m
  e2:m
  d2
  g2
  b2:7
  e1:m
  %B
  g1
  a1:m
  e2:m
  a2:m
  e2:m
  a2:m % 12
  e2:m a2:m
  %ending 1 and 2
  c1 a1:m
  g2 b2:7
  e1:m
  c1*2 a1:m
  g2 b2:7
  e1:m
  %end part
  b1
  e2 fs2:7
  b1*2
  e2 fs2:7
  b1
}

%}
\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
     % \harmonies
    }
    \new Staff
    \primos
    \new Staff \secund
    %\new Staff \partcombine \primos \secund
    \new Staff \third
  >>
  \header{
    title= "Ederlezi"
    subtitle="Trad. Roma"
    composer= ""
    instrument = "Eb"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 80

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
https://www.youtube.com/watch?v=yGuCqAfxNqU
 Sa o Roma babo,
E bakren cinen.
A me coro, dural besava.
A a daje, amaro dive.
Amaro dive erdelezi.
Ediwado babo, amenge bakro.
Sa o Roma, babo.
E bakren cinen. Eeee...j,
Sa o Roma, babo babo,
Sa o Roma daje. Sa o Roma, babo babo,
E.. Erdelezi. Erdelezi,
Sa o Roma Daje. Eeee...
Sa o Roma, babo babo,
Sa o Roma daje.
Sa o Roma, babo babo,
 Eeee... Erdelezi, Erdelezi.
Sa o Roma Daje

***************

LYRICS IN ROMANI
Sa me amala oro khelena Oro khelena,
dive kerena
Sa o Roma daje
Sa o Roma babo babo
Sa o Roma o daje Sa o Roma babo babo Ej, Ederlezi Ederlezi
 Sa o Roma daje Amaro dive Amaro dive,
Ederlezi Sa me amala oro khelena Oro khelena, dive kerena Sa o Roma daje Sa o Roma babo babo Sa o Roma daje Sa o Roma babo babo Ej, Ederlezi Ederlezi Sa o Roma daje Sa me amala oro khelena Oro khelena, dive kerena Sa o Roma babo, e bakren chinen Amaro dive E devado babo Sa o Roma babo babo Sa o Roma o daje Sa o Roma babo babo Ej, Ederlezi Ederlezi Sa o Roma daje Sa o Roma babo babo Sa o Roma o daje Sa o Roma babo babo Ederlezi Ederlezi Sa o Roma daje LYRICS IN ENGLISH All my friends are dancing the oro Dancing the oro, celebrating the day Dancing the oro, celebrating the day All the Roma, dad, dad All the Roma, mommy All the Roma, dad, dad Oh! Ederlezi Ederlezi All the Roma, mommy Our day Our day, Ederlezi All my friends are dancing the oro Dancing the oro, celebrating the day All the Roma, mommy All the Roma, dad, dad All the Roma, mommy All the Roma, dad, dad Oh! Ederlezi Ederlezi All the Roma, mommy All my friends are dancing the oro Dancing the oro, celebrating the day All the Roma, dad, slaughter lambs Our day They give us, Dad, All the Roma, dad, dad All the Roma, mommy All the Roma, dad, dad Oh! Ederlezi Ederlezi All the Roma, mommy All the Roma, dad, dad All the Roma, mommy All the Roma, dad, dad Ederlezi Ederlezi All the Roma, mommy LYRICS IN TURKISH Tüm arkadaşlarım hora oynuyor Hora oynayıp bugünü kutluyorlar Tüm Roma, anneciğim Tüm Roma, baba, baba Tüm Roma, anneciğim Tüm Roma, baba, baba Ey, Ederlezi Ederlezi Tüm Roma, anneciğim Bizim günümüz Bizim günümüz, Ederlezi Tüm arkadaşlarım hora oynuyor Hora oynayıp bugünü kutluyorlar Tüm Roma, anneciğim Tüm Roma, baba, baba Tüm Roma, anneciğim Tüm Roma, baba, baba Ey, Ederlezi Ederlezi Tüm Roma, anneciğim Tüm arkadaşlarım hora oynuyor Hora oynayıp bugünü kutluyorlar Tüm Roma, baba, kuzu avlıyor Bizim günümüz Bize, baba, Tüm Roma, baba, baba Tüm Roma, anneciğim Tüm Roma, baba, baba Ey, Ederlezi Ederlezi Tüm Roma, anneciğim Tüm Roma, baba, baba Tüm Roma, anneciğim Tüm Roma, baba, baba Ederlezi Ederlezi Tüm Roma, anneciğim LYRICS IN FRENCH Tous mes amis dansent l'oro Ils dansent l'oro, ils fêtent le jour Tous les Roms, maman Tous les Roms, papa, papa Tous les Roms, maman Tous les Roms, papa, papa Ô! Ederlezi Ederlezi Tous les Roms, maman Notre jour Notre jour, Ederlezi Tous mes amis dansent l'oro Ils dansent l'oro, ils fêtent le jour Tous les Roms, maman Tous les Roms, papa, papa Tous les Roms, maman Tous les Roms, papa, papa Ô! Ederlezi Ederlezi Tous les Roms, maman Tous mes amis dansent l'oro Ils dansent l'oro, ils fêtent le jour Tous les Roms, papa, sacrifient l'agneau Notre jour Ils nous donnent, Papa Tous les Roms, papa, papa Tous les Roms, maman Tous les Roms, papa, papa Ô! Ederlezi Ederlezi Tous les Roms, maman Tous les Roms, papa, papa Tous les Roms, maman Tous les Roms, papa, papa Ederlezi Ederlezi Tous les Roms, maman LYRICS IN PORTUGUESE Todos os meus amigos dançam o oro Dançam o oro, celebram o dia Toda a Roma mamãe Toda a Roma papai, papai Toda a Roma mamãe Toda a Roma papai, papai Ó! Ederlezi Ederlezi Toda a Roma mamãe Nosso dia Nosso dia, Ederlezi Todos os meus amigos dançam o oro Dançam o oro, celebram o dia Toda a Roma mamãe Toda a Roma papai, papai Toda a Roma mamãe Toda a Roma papai, papai Ó! Ederlezi Ederlezi Toda a Roma mamãe Todos os meus amigos dançam o oro Dançam o oro, celebram o dia Toda a Roma, papai, sacrifica cordeiros Nosso dia Oferecemos, papai, Toda a Roma papai, papai Toda a Roma mamãe Toda a Roma papai, papai Ó! Ederlezi Ederlezi Toda a Roma mamãe Toda a Roma papai, papai Toda a Roma mamãe Toda a Roma papai, papai Ederlezi Ederlezi Toda a Roma mamãe

%}