\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
  \key g \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c {
  \global
  \partial 4 d4 %lead in notes

  bf'4 d a
  bf4 g4. g8
  bf4 a g
  a2 r8 a8|

  c4 a bf
  c4 a4. c8
  c4 bf a
  bf2 bf8(c)

  d4
  bf c
  d4 bf4. d8
  d4 c bf

  a2 d,4|
  bf'4 fs g
  bf4 a g
  g4 fs g

  d'2 ^"Refrain" g,8 a \break
  bf2 a8 g
  a2 g8 fs
  g2.

  ~g2 a8 bf
  c2 bf8 a
  c2 bf8 a
  bf2.~

  bf2 bf4|
  d2 bf4
  d2 bf4
  a8 bf c2~
  c2 g8 a
  bf4 bf g
  d'2 bf4
  %\break
  a8 g a2~
  a4. d,8 g [a]|
  bf2 a8 g
  a2 g8 fs
  g2.~g2 g4|
  %\break
  c4. g8 c [d]
  ef4. c8 d [b]
  c2.~
  c2 c4
  c4 d ef
  ef d c
  %page1

  d2 c4
  bf2 bf4
  bf4 c d
  d4 c bf
  c2 bf4
  a4. d,8 g [a]
  % \break
  bf2 a8 g
  a2 g8 fs
  g2.~
  g2 r4
}
%################################# Lyrics #####################
\addlyrics{
  Der -- loybt lozt zikh din -- en,
  Oys -- red -- n mayn harts,
  Tsi red ich fin zin -- en,
  Tsi red ikh fun shmarts,
  Ikh layd fun a kran -- keyt
  vos heyst nit keyn krenk,
  Men ruft es on ei -- ter,
  Es nogt un es benkt:

  Vos ge -- ven iz ge -- ven, un nish -- to
  Shoyn a -- vek ye -- ne yor, ye -- ne sho!
  Vi shnel far -- flit der yun -- ger glik,
  Un, men ken dos nit ne -- men mer tsu -- rik.
  Vayl vos ge -- ven iz ge -- ven, un nish -- to

  Di kref -- tn ve -- rn shvakh,
  di hor vert gro,
  Men neyt zich, men klydt zich, men makht zih sheyn,
  Men nart ob -- er key -- nem nor zikh a -- leyn,
  Vayl vos ge -- ven iz ge -- ven, un nish -- to
}
\addlyrics {
  Ven ikh gey um -- gern a mol far -- bay a
  schil,
  Gis ikh mit tre -- rn
  un trakht fun a mol:
  vi der yung -- itsh -- ke moye -- khl
  zayn glik nisht far -- shteyt,
  un kumt men tsum sey -- khl
  iz dan shoyn tsu shpet.
}
%################################# Chords #######################
harmonies = \chordmode {
  s4
  g4*9:m
  d4*3
  c4*9:m
  g4*3:m
  bf4*9
  d4*3
  ef4*6
  c4*3:m
  d4*3 %refrain
  g4*3:m
  d4*3
  g4*6:m
  c4*3:m
  f4*3:7
  bf4*6
  g4*6:m
  d4*6
  ef4*6
  d4*6
  g4*3:m
  d4*3
  g4*6:m
  c4*5:m
  g4:7
  c4*6:7
  f4*6:7 %end 1st page
  bf4*2 d4:7
  g4*9:m
  c4*3:m
  d4*3:7
  g4*3
  d4*3:7
  g4*6:m

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
    title= "Vos Geven Iz Geven"
    subtitle=""
    composer= ""
    instrument = "Eb"
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
          " Permit me to unburden my heart."
          "Whether I talk sense"
          "or whether I speak from pain,"
          "I suffer from a disease,"
          "which is not called an illness."
          "They call it old age."
          " It gnaws and it yearns."
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        "2."
        \column {
          "For what was, was, and is no more."
          "That year, that hour has already passed."
          "How quickly youthful joy flies away"
          "and cannot be recaptured."
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        "3."
        \column {
          "For what was, was, and is no more…."
          "The faculties become weak,"
          "the hair turns gray…."
          "One can mend himself, hide under nice clothing,"
          "make himself up;"
          " but he fools no one but himself,"
          "for what was, was, and is no more…."
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        "4."
        \column {
          "When I chance to pass by a school"
          "I weep tears and I think of yesteryear:"
          "How the young little mind"
          " Doesn’t understand its happiness,"
          "and when one comes to his senses,"
          "it is already too late"
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}


%{
  vos geven iz geven, s'iz mer nishto
  shoyn avek yene tsayt, yene sho!
  vi shnel farflit der yunger glik,
  oy, men ken dos nit nemen mer tsurik.
  vayl vos geven iz geven, s'iz mer nishto.

  di yorn flien avek, di hor vert groy.
  m'neyt zikh, men kleydt zikh,
  men makht zikh sheyn.
  men nart op nit keynem, no

  Permit me
  to unburden my heart.
  Whether I talk sense
  or whethera I speak from pain,
  I suffer from a disease,
  which is not called an illness.
  They call it old age.
  It gnaws and it yearns.

  For what was, was, and is no more.
  That year, that hour has already passed.
  How quickly youthful joy flies away
  and cannot be recaptured.
  For what was, was, and is no more….
  The faculties become weak,
  the hair turns gray….
  One can mend himself, hide under nice clothing,
  make himself up;
  but he fools no one but himself,
  for what was, was, and is no more….

  When I chance to pass by a school,
  I weep tears,
  and I think of yesteryear:
  How the young little mind
  Doesn’t understand its happiness,
  and when one comes to his senses,
  it is already too late


%}
