\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }
secund =\relative c{
  \clef treble
  \key a \minor
  \time 5/8
  \set Score.markFormatter = #format-mark-box-alphabet
  \repeat volta 2{
  \mark \default
    <e a>4._"(a/d)"(<e a>4)
    <f a>4._"(b/d)"(<f a>4)
    <a e'>4._"(d/a)" (<a e'>4)
    <a e>4._"(a/d)" (<a e>4)

    <g a>4._"(c/d)" (<g a>4)
    <f a>4._"(b/d)"(<f a>4)
    <e a>4._"(a/d)"(<e a>4)
    <e a>4.(<e a>4)|
  }
  \repeat volta 2{
  \mark \default
    a'4.(a4)
    f4.(f4)
    d4. (d4)
    b4. (b4)%c4. (c4)

    c4. (c4)
    b4. (b4)

  }
  \alternative {
    {
      a4. (a4)
      a4. (a4)
    }
    {
      a4. (a4)
      a4. (a4)
    }
  }
}
%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key a \minor
  \time 5/8
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a4. (a4)
    d4.(d4)
    e8 c4(d)
    e4.(e4)|

    g4(fs8)g a %b natural
    f4 e8 f a
    e4.(e4)
    e4.(e4)|

  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    a4\downbow e4. %reversed dotted note
    f8 d4(d)
    \grace{fs,16 (a)}e'4 c4.  %reversed dots
    <b e, >8 g4(<g b>)

    c4 b8 c d
    b4 a8 c b|

  }
  \alternative {
    {
      a4 b8 c d
      e4(f8)\tuplet 3/2{fs\upbow g gs}
    }
    {
      a,4.(a4)
      a4.(a4)
    }
  }

}

%################################# Lyrics #####################
\addlyrics{

  Mugur mugur mu -- gu -- rel
  Mugur \skip2 \skip2  mu -- gu -- \skip2 \skip2 rel
  \skip1
  I -- a fa -- te mai mar -- i -- cel
  Mu -- gur \skip2 \skip2  mu -- gur \skip2 \skip2  rel...


}
%{ this set works with single line version
  Mugur mugur mu -- gu -- rel
  Mugur \skip2 \skip2  mu -- gu -- \skip2 \skip2 rel
  \skip1
  I -- a fa -- te mai mar -- i -- cel
  Mu -- gur \skip2 \skip2  mu -- gur \skip2 \skip2  rel
%}
%################################# Chords #######################
harmonies = \chordmode {
  a8*5:m
  d8*5:m
  a8*10:m
  a8*5:7
  d8*5:m
  a8*10:m

  %B
  a8*5:m
  d8*5:m
  c8*5
  g8*5
  f8*5
  e8*5
  a8*5:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
    \new Staff \secund
  >>
  \header{
    title= "Mugur, Mugurel"
    subtitle=""
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

% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line {
        "1."
        \column {
          "Mugur mugur mugurel"
          "Mugur mugurel"
          "Ia fate mai maricel"
          "Mugur mugurel"
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        "2."
        \column {
          "Batei Doamne pe ciocoli"
          "Mugur mugurel"
          "Cum ne bat si ei pe noi"
          "Mugur mugurel"
        }
      }

    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        "3."
        \column {
          "Mugur mugur mugurel"
          "Mugur mugurel"
          "Ia fate mai marice"
          "Mugur mugurel".
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        "4."
        \column {
          "Si-am zis verde salcioara"
          "Marie si marioara"
          "Marie si marioara"
        }
      }

    }
    \hspace #0.1 % distance to right margin
  }
}



%{

mugur mugur mugurel
mugur mugurel
ia fate mai maricel
mugur mugurel

batei Doamne pe ciocoli
mugur mugurel
cum ne bat si ei pe noi
mugur mugurel

mugur mugur mugurel
mugur mugurel
ia fate mai maricel
mugur mugurel.

si-am zis verde salcioara
marie si marioara
marie si marioara
________________________
Mugur, mugurel Lyrics
Tudor Gheorghe

Mugur mugur mugurel
Mugur mugurel
Ia fa-te mai maricel!
Mugur mugurel (2x)

Ca ne-am saturat de iarna
Mugur mugurel
Si de rautate-n tara!
Mugur mugurel (2x)

Bate-i doamne pe ciocoi
Mugur mugurel
Cum ne bat si ei pe noi
Mugur mugurel (2x)

Mugur mugur mugurel
Mugur mugurel
Ia fa-te mai maricel!
Mugur mugurel (2x)

În oraşul ăsta am deschis eu ochii;
Salutare, locuri mândre, scumpe mie!
Doina doicei mele din copilărie
Sună-n tot oraşul: doica-mi cântă mie?
Glasul ei e-acesta? ori poate mă-nşel:
"Mugur, mugur, mugurel!..."

A plecat, odată, un copil voios,
Azi, bătrân, se-ntoarce tot pe-aceeaşi cale...
Hei, de-atunci ce mult e... griji, necazuri, boale,
Bucurii puţine, şi atâta jale!
Cum mai trece vremea..." trist îngână el:
"Mugur, mugur, mugurel!..."

Oare unde sunteţi, tovarăşi de joc?
D-aş vedea pe unul barem dintre voi!
Să mai stăm de vorbă, veseli amândoi,
Să ne reîntoarcem anii înapoi,
Anii cei de basme, să cânt iar cu el:
"Mugur, mugur, mugurel!..."

Fără de hodină, pasăre pribeagă
Care-şi cată cuibul cald de-odinioară
Când se-ntoarce iară mândra primăvară,
Gândul meu colindă, pretutindeni zboară,
Şi mă mir eu singur câte-mi spune el:
"Mugur, mugur, mugurel!..."

Sunt copil acuma, iarăşi sunt copil!
Pe-o nuia încalec... lumea e a mea!
Sare şi nechează murgul meu — nuia,
Merg la jgheab, devale, şi îi dau să bea...
Hii, murguţ, în lume, zboară rândunel...
"Mugur, mugur, mugurel!..."

Clătinat răsună clopotul din turn,
Calul, călăreţul cad de oboseală...
E-n amurg... acasă doica mă ia-n poală...
Aţipesc, şi visuri mândre mă înşală;
Doica mă alintă, cântă-ncetinel:
"Mugur, mugur, mugurel!..."

Adus de la "http://ro.wikisource.org/wiki/Mugur,_mugur,_mugurel..."
With an English translation
Mugur, mugurel

Mugur, mugur, mugurel,
Mugur, mugurel,
Ia fă-te mai măricel,
Mugur, mugurel,
Ia fă-te mai măricel,
Mugur, mugurel.

Că ne-am săturat de iarnă,
Mugur, mugurel,
Și de răutate-n țară,
Mugur, mugurel,
Și de răutate-n țară,
Mugur, mugurel.

Bate-i, Doamne, pe ciocoi,
Mugur, mugurel,
Cum ne bat și ei pe noi,
Mugur, mugurel,
Cum ne bat și ei pe noi,
Mugur, mugurel.

Mugur, mugur, mugurel,
Mugur, mugurel,
Ia fă-te mai măricel,
Mugur, mugurel,
Ia fă-te mai măricel,
Mugur, mugurel.
Video
Try to align
English
Sprout, you little sprout

Sprout, sprout, you little sprout
Sprout, you little sprout,
Just grow a little bit,
Sprout, you little sprout,
Just grow a little bit,
Sprout, you little sprout.

Because we're tired of winter,
Sprout, you little sprout,
And of the maliance from inside our country,
Sprout, you little sprout,
And of the maliance from inside our country,
Sprout, you little sprout.

God, punish the bootlickers,
Sprout, you little sprout,
Like they punish us,
Sprout, you little sprout,
Like they punish us,
Sprout, you little sprout.

Sprout, sprout, you little sprout
Sprout, you little sprout,
Just grow a little bit,
Sprout, you little sprout,
Just grow a little bit,
Sprout, you little sprout.


%}
