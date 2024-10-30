\version "2.20.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

  a4. f8
  bf8 a g f
  g4.(f16 e)
  f4. r8

  c'4. a8
  d8 c f, g
  a2~
  a8 r a a

  \repeat volta 2{
    d4 c8 d
    bf8 bf a d,
    g4.(f16 e)
    f4. r8
    e4 a8 a
    %c8 bf a g|
    bf8 a g g
  }
  \alternative{
    {d2~ d8 r8 a'8 a8}
    {d4 r}
  }

}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "
  Si -- lent stars are shin -- ing o'er you.
  In the frost your hands are numb.
  Re -- _ mem -- ber, sweet com -- rade, how I show -- ed you
  How a sol -- dier holds her gun.
}
\addlyrics {
  \set stanza = #"2. "
  A_girl, a coat of fur and leath -- er,
  Holding a pis -- tol in her hand,
  _ _ Wait -- ing and watch -- ing for the German
  convoy to come a -- ro -- u -- nd the bend.
}

\addlyrics{ \set stanza = #"3. "
            Shtil di nakht iz oys -- ge -- sht -- ernt,
            Un der frost hot stark ge -- brent
            Tsi ge -- denk -- tsu vi ich hob dick ge -- ler -- ent
            hal -- tn a sh -- payer in de hent?
}
\addlyrics{ \set stanza = #"4. "
            A_moyd, a pel -- tsl un a be -- ret,
            Un_halt in hant fest a na -- gan.
            A _  moyd mit a sam -- et -- en -- em pon -- _ em
            hit _ op dem soy -- nes kar -- avan.
}
%################################# Chords #######################
harmonies = \chordmode {
  d2:m
  g2:m
  c2
  f2*2
  bf2
  f4*4


  d2:m
  g2:m
  c2*2
  f2
  a2:7
  d2:m

}

\score {\transpose c a
  % transpose score below
  \transpose d a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Shtil Di Nacht"
    subtitle=""
    composer= "Hirch Glick"
    instrument = "Eb"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}

\markup{~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }
\markup{}
\markup{}
% more verses:
\markup{}
\markup {
  % \font-size #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."
              \column {
                "Getsilt, geshosn un getrofn"
                "hot ir kleyninker pistoyl,"
                "An oyto a fulinkn mit vofn"
                "farhaltn hot zi mit eyn koyl."
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."
              \column {
                "She aims her trusty little weapon,"
                "Breathes, and pulls the trigger back."
                "A transport full of ammunition,"
                "One shot stops it in it's tracks."
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
              \column {
                "Fartog fun vald aroysgekrokhn,"
                "mit shneygirlandn oyf di hor,"
                "gemutikt fun kleyninkn nitsokhn"
                "far undzer nayem frayen dor. "
                ""
              }
      }
      \hspace #0.2 % distance between verses
      \line { "4."
              \column {
                "At dawn she crawls out from the forest"
                "with garlands of snow in her hair,"
                "One more little victory for freedom,"
                "One more comrade brave and fair."
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}
