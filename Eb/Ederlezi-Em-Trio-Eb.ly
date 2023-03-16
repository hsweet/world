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
  \key cs \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
primos = \relative c''' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r4 gs8 a b (a)gs (fs)
    fs8 gs~gs4     fs16 e fs8 e4
    r4 gs8 a a4 a8 fs|
    gs4. a8 fs16 e fs8 e4|

    r4 gs8 a a4 a8 fs|
    gs4. a8 fs16 e fs8 e4|
    r4 gs8 fs a a fs4|
    e8 e~e2 r4|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default

        b'2. a16 b a gs
        a2. r4

    e4 gs8 gs fs e ds ds|
    e4 ds8 e gs gs fs4|
    e4 gs8 gs fs e ds cs|
  }
  \alternative {
    {
      cs'2 \fermata b8 a gs fs
      r4 b8 a gs4 fs
      r4 e8 ds gs gs ds4|
      cs8 cs (cs2) r4|
    }
    {
      \mark \default
      cs'1 |
      r4 b8 a gs4 fs|
      r4 b8 a gs4 fs
      r4 fs8 e gs gs ds4|
      cs8 cs (cs2) _\markup{\italic fine} r4| \bar"||"
    }
  }
  r1
  gs''8 fs fs es es ds ds cs
  r1
  %ds8 e fs r r2
  bs,8 cs ds4 r2
  gs'8 fs fs es es ds ds cs
  bs1 _\markup {\italic {D.C. al Fine}}

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

secund = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    r4 e8 fs gs fs e ds
    ds8 e~e4 ds16 cs ds8 cs4|
    r4 e8 fs fs4 fs8 ds|
    e4. fs8 ds16 cs ds8 cs4|

    r4 e8 fs fs4 fs8 ds
    e4. fs8 ds16 cs ds8 cs4|
    r4 e8 ds fs fs fs4|
    cs8 cs~cs2 r4|
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
   gs'2. fs16 gs fs e|
        fs2. r4|


    cs4 e8 e cs cs cs cs|
    cs4 cs8 cs cs cs cs4
    cs4 e8 e cs cs cs cs|
  }
  \alternative {
    {
      a'2 \fermata gs8 fs e cs
      r4 gs'8 fs e4 cs
      r4 cs8 cs bs bs bs4
      cs8 cs (cs4) r2
    }
    {
      cs1
      r1
      r4 gs'8 fs e4 ds
      r4 cs8 cs bs bs bs4
      cs8 cs(cs4) r2
    }
  }
  r1
  %ds8 e fs4 r2
  gs'8 fs fs es es ds ds cs
  bs8 cs ds r r2
  r2 gs,8 gs gs4
  gs'8 fs fs es es ds ds cs
  bs1
}
third = \relative c'' {
  \global
  \clef alto
 r4 cs8 cs b4. b8|
 b8 b(b2.)|
 r4 a8 a fs4 fs
 a1r4 a8 a fs4 fs
 gs1|
 r4 gs bs bs
 cs8 cs(cs2.)
%% bar
 e,2. ds16 e ds cs|
    ds2. r4|
 gs,4 gs a a
 gs4 gs a a
 gs4 gs a a
 a2 \fermata r
 r4 cs8 cs cs4 cs
 r4 gs'8 gs gs4 gs
 gs8 gs (gs2.)
 e1
 r1
 r4 cs8 cs cs4 cs
 r4 gs8 gs gs4 gs
 gs8 gs (gs2.)
 as8 b cs4 r2
 cs4 cs ds ds
 ds8 e fs r r2
 bs,2 gs'8 gs gs4
 cs4 gs as ds
 gs,1

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
\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
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
    instrument =""
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