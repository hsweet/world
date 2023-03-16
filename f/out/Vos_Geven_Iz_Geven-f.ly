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

global = {
  \clef treble
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 4 a4 %lead in notes

  f'4 a e
  f4 d4. d8
  f4 e d
  e2 r8 e8|

  g4 e f
  g4 e4. g8
  g4 f e
  f2 f8(g)

  a4
  f g
  a4 f4. a8
  a4 g f

  e2 a,4|
  f'4 cs d
  f4 e d
  d4 cs d

  a'2 ^"Refrain" d,8 e \break
  f2 e8 d
  e2 d8 cs
  d2.

  ~d2 e8 f
  g2 f8 e
  g2 f8 e
  f2.~

  f2 f4|
  a2 f4
  a2 f4
  e8 f g2~
  g2 d8 e
  f4 f d
  a'2 f4
  %\break
  e8 d e2~
  e4. a,8 d [e]|
  f2 e8 d
  e2 d8 cs
  d2.~d2 d4|
  %\break
  g4. d8 g [a]
  bf4. g8 a [fs]
  g2.~
  g2 g4
  g4 a bf
  bf a g
  %page1

  a2 g4
  f2 f4
  f4 g a
  a4 g f
  g2 f4
  e4. a,8 d [e]
  % \break
  f2 e8 d
  e2 d8 cs
  d2.~
  d2 r4
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
  d4*9:m
  a4*3
  g4*9:m
  d4*3:m
  f4*9
  a4*3
  bf4*6
  g4*3:m
  a4*3 %refrain
  d4*3:m
  a4*3
  d4*6:m
  g4*3:m
  c4*3:7
  f4*6
  d4*6:m
  a4*6
  bf4*6
  a4*6
  d4*3:m
  a4*3
  d4*6:m
  g4*5:m
  d4:7
  g4*6:7
  c4*6:7 %end 1st page
  f4*2 a4:7
  d4*9:m
  g4*3:m
  a4*3:7
  d4*3
  a4*3:7
  d4*6:m

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
    title= "Vos Geven Iz Geven"
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
