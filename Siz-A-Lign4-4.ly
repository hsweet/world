\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
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
melody = \relative c' {
  \global
  \partial 16*4 e8. e16   %lead in notes
  f8 e4. (e4) b8 d
  c8 a4. (a4) e'8 e|
  % \time 3/4 a4. g8 \tuplet 3/2{d8(e) f}|
  a4. g8 \tuplet 3/2 {d8 e f~} f4|
  e2. e8 c' |

  b2(b8) a8 g f|
  e8 d4. (d4) e8 f
  e4. d8 c d r4|
  e2. e8 c'

  b2 r8 a8 g f|
  e8 d2 r8 e8 f
  e4. d8 c b r4
  a2. \breathe \tuplet 3/2{e'8(d) e}|

  f8 d2 r8 \tuplet 3/2 {e8(d) e}| %d4 in book
  f8 d2 r8 e8 e|
  e2 a
  gs4 (e2) r8 c8

  e8. e16 r4 e4 e
  d2. c8(b)|
  c4 a2 f'4|
  e2. c4

  e4 e  a4 e
  d2. c8(b)
  c4 a2 c4
  a2. r4

  %\alternative { { }{ } }


  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{

  In Sa -- ha -- ra, vu men van -- dert,
  In dem hey -- sn mid _ -- ber  zamd,
  Treyft a mol du verst far -- vun -- dert,
  Ze -- en -- diks s'ba -- voy -- te land;
  Treyft a mol, du verst far -- vun -- dert,
  Ze -- en -- diks s'ba -- voy -- te land.

  S'iz a li -- gn,
  S'iz a li -- gn,
  S'iz a pus -- ter troym.
  Der mid -- ber hot keyn feld,
  Keyn zan -- gen, keyn boym;
  Der mid -- ber hot keyn feld,
  Keyn zan -- gen, keyn boym;

}
\addlyrics {
  Shep -- sn pas -- hen of der lon -- ke,
  Un dem pas -- tek zes -- tu _ koym,
  Un dir dukht zich, az s'iz em -- es,
  Az du zest es nit in troym.
  Un dir dukht zich, az s'iz em -- es,
  Az du zest es nit in troym.
}

\addlyrics {
  Ot az -- oy oykh treft in le -- bn,
  Trefst a mol a mil -- dn _ blik,
  Heybst on boyen gold -- en -- e shles -- ser,
  Verst far -- kis -- eft fun -- em glik.
  Heybst on boyen gold -- en -- e shles -- ser,
  Verst far -- kis -- eft fun -- em glik.
}
%{
  \addlyrics {
  In Sa -- ha -- ra, where men wan --  der
  In the burn -- ing des -- ert sand.
  In a whi -- le they might won -- der,
  Is this not a fer -- tile land?
  In a whi -- le one might won -- der,
  Is this not a fer -- tile land?

  But it's a lie,
  It's just a lie,
  Just an em -- pty dream.
  No feilds in the des -- ert
  No corn, nor any trees.
  No feilds in the des -- ert
  No corn, nor any trees.
  }
%}
%################################# Chords #######################
harmonies = \chordmode {
  \skip 8*2
  e4*4
  a4*4:m
  f4*2
  g4*2
  c4*4
  %a4*3:m
  e4*4
  d4*4:m
  e4*4:7
  %a4*6:m
  a4*4:m
  e4*4
  % change above
  d4*4:m
  e4*2
  e4*2:7
  a2:m
  s4
  a4:7
  d4*3:m
  a4:7
  d4*4:m
  a4*2:m
  b2:7
  e4*4
  a4*4:m
  d4*4:m
  f4*4
  e4*4
  a4*4:m
  d4*4:m
  f4*3
  %new chord last time only
  e4:7
  a4*3:m
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
    title= "S'iz A Lign"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= "H.S."
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

% more verses:
%{

\markup{}
\markup {
  \fontsize #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { ""
              \column {
                "\n"
                "Shepsn pashen of der lonke"
                "Un dem pastek zestu koym:"
                "Un dir dukht zich, az s'iz emes,"
                "Az du zest es nit in troym."
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { ""
              \column {
                "\n"
                "Ot azoy oykh treft in lebn"
                "Trefst a mol a mildn blik,"
                "Heybst on boyen goldene shlesser,"
                "Verst farkiseft funem glik"
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { ""
              \column {
                "\n"
                "Sheep graze in the meadow"
                "And the shepard can be seen"
                "And it seems really true"
                "That this is not a dream"
              }
      }
      \hspace #0.2 % distance between verses
      \line { ""
              \column {
                "\n"
                "Sometimes it will happen"
                "From a small glance"
                "You build a golden castle?"
                ""
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}