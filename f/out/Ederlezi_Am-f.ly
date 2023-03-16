\version "2.18.0"
\include "english.ly"
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
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
primos = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r4 e8 f g (f)e (d)
    d8 e~e4    d4 c %g16 f g8 f4
     r4 c8 d d4 d8 b|
    c4. d8 b4 a %e16 d e8 d4|

    r4 c8 d d4 d8 b
    c4. d8 b4 a %e16 d e8 d4|
    r4 c8 b d d b4|
    a8 a~a2 r4|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default

       e'2. d16 e d c|
        d2. r4|

    c4 e8 e d c b b|
    c4 b8 c e e d4|
    c4 e8 e d c b a|
  }
  \alternative {
    {
      a'2 \fermata g8 f e d
      r4 g8 f e4 d
      r4 c8 b d4 b|
      a8 a (a2) r4|
    }
    {
      a'1 |
      r4 g8 f e4 d|
      r4 g8 f e4 d
      r4 c8 b8 d4 b|
      a8 a (a2) _\markup{\italic fine} r4| \bar"||"
    }
  }
  r1
  e'8 d d cs cs b b a
  gs8 a b r r2
  gs8 a b4 r2
  e8 d d cs cs b b a
  gs1 _\markup {\italic {D.C. al Fine}}

}
\addlyrics{
  %https://musescore.com/user/35722119/scores/6322876
  Sa o Ro -- ma ba -- bo,
  \repeat unfold 2{\skip2}
  e bak -- ren ch --i --n --  en
  \repeat unfold 2{\skip2}
  A me ch -- o --  -- r -- r -- o,
  \repeat unfold 2{\skip2}
  d -- u -- ral ve --  _ sa -- va
  \repeat unfold 1 {}

  Eh -- e -- e -- e -- e e..
  Sao Ro -- ma, ba -- bo ba -- bo,
  Sao Ro -- ma  o da -- je.
  Sao Ro -- ma, ba -- bo ba -- bo,
  % first end
  E.. Er -- de -- le -- zi
  Er -- de -- le -- zi
  Sa -- o Ro -- ma  da -- je.
 % 2nd end
  E.. Er -- de -- le -- zi
  Er -- de -- le -- zi
  Sa -- o Ro -- ma da -- je.

}
\addlyrics{
Sa me a -- ma -- la _
\repeat unfold 2{\skip2}
o -- ro khe -- le -- _ na
\repeat unfold 3{\skip2}
o -- ro khe -- le -- _ na,
\repeat unfold 3{\skip2}
di -- ve ke -- re -- _  na
}
secund = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r4 c8 d e d c b
    b8 c~c4 b4 a%e16 d e8 d4|
        r4 e8 f f4 f8 d|
    e4. f8 d4 c%g16 f g8 f4|

    r4 e8 f f4 f8 d|
    e4. f8 d4 c %g16 f g8 f4|
    r4 e8 d f f d4|
    c8 c~c2 r4|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
 <<

      {
       g''2. f16 g f e
        f2. r4
      }
      \\
      {
         c2. b16 c b a|
    b2. r4|
      }

    >>


    a4 c8 c a a a a|
    a4 a8 a a a a4
    a4 c8 c a a a a|
  }
  \alternative {
    {
      f'2 e8 d c a
      r4 e'8 d c4 a
      r4 a8 a gs4 gs
      a8 a (a4) r2
    }
    {
      a1
      r1
      r4 e'8 d c4 b
      r4 a8 a gs gs gs4
      a8 a(a4) r2
    }
  }
  gs8 a b4 r2
  e8 d d cs cs b b a
  gs8 a b r r2
  r2 e8 e e4
  e8 d d cs cs b b a
  gs1
}

%################################# Chords #######################
harmonies = \chordmode {
  a2:m
  g2
  c1
  d1:m
  f1
  d1:m
  a2:m
  g2
  c2
  e2:7
  a1:m
  %B
  c1
  d1:m
  a2:m
  d2:m
  a2:m
  d2:m % 12
  a2:m d2:m
  %ending 1 and 2
  f1 d1:m
  c2 e2:7
  a1:m
  f1*2 d1:m
  c2 e2:7
  a1:m
  %end part
  e1
  a2 b2:7
  e1*2
  a2 b2:7
  e1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
    \transpose a, e  \harmonies
    }
    \new Staff
    \transpose a, e \primos
    \new Staff \transpose a, e \secund
    %\new Staff \partcombine \primos \secund
  >>
  \header{
    title= "Ederlezi"
    subtitle="Trad. Roma"
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