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
  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
primos = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r4 fs8 g a (g)fs (e)
    e8 fs~fs4     e16 d e8 d4
    r4 fs8 g g4 g8 e|
    fs4. g8 e16 d e8 d4|

    r4 fs8 g g4 g8 e|
    fs4. g8 e16 d e8 d4|
    r4 fs8 e g g e4|
    d8 d~d2 r4|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default

        a'2.g16 a g fs
        g2. r4

    d4 fs8 fs e d cs cs|
    d4 cs8 d fs fs e4|
    d4 fs8 fs e d cs b|
  }
  \alternative {
    {
      b'2 \fermata a8 g fs e
      r4 a8 g fs4 e
      r4 d8 cs fs fs cs4|
      b8 b (b2) r4|
    }
    {
      b'1 |
      r4 a8 g fs4 e|
      r4 a8 g fs4 e
      r4 e8 d fs fs cs4|
      b8 b (b2) _\markup{\italic fine} r4| \bar"||"
    }
  }
  r1
  fs'8 e e ds ds cs cs b
  as8 b cs r r2
  as8 b cs4 r2
  fs'8 e e ds ds cs cs b
  as1 _\markup {\italic {D.C. al Fine}}

}
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
secund = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r4 d8 e fs e d cs
    cs8 d~d4 cs16 b cs8 b4|
    r4 d8 e e4 e8 cs|
    d4. e8 cs16 b cs8 b4|

    r4 d8 e e4 e8 cs
    d4. e8 cs16 b cs8 b4|
    r4 d8 cs e e e4|
    b8 b~b2 r4|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
 <<

      {
        fs'2. e16 fs e d|
        e2. r4|
      }
      \\
      {
         d2. cs16 d cs b|
    cs2. r4|
      }

    >>


    b4 d8 d b b b b|
    b4 b8 b b b b4
    b4 d8 d b b b b|
  }
  \alternative {
    {
      g'2 fs8 e d b
      r4 fs'8 e d4 b
      r4 b8 b as as as4
      b8 b (b4) r2
    }
    {
      b1
      r1
      r4 fs'8 e d4 cs
      r4 b8 b as as as4
      b8 b(b4) r2
    }
  }
  as8 b cs4 r2
  fs'8 e e ds ds cs cs b
  as8 b cs r r2
  r2 fs,,8 fs fs4
  fs'8 e e ds ds cs cs b
  as1
}

%################################# Chords #######################
harmonies = \chordmode {
  b2:m
  a2
  d1
  e1:m
  g1
  e1:m
  b2:m
  a2
  d2
  fs2:7
  b1:m
  %B
  d1
  e1:m
  b2:m
  e2:m
  b2:m
  e2:m % 12
  b2:m e2:m
  %ending 1 and 2
  g1 e1:m
  d2 fs2:7
  b1:m
  g1*2 e1:m
  d2 fs2:7
  b1:m
  %end part
  fs1
  b2 cs2:7
  fs1*2
  b2 cs2:7
  fs1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \primos
    \new Staff \secund
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