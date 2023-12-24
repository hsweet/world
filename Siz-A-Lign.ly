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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 16*4 e8. e16   %lead in notes
  f8 e4. b8 d
  c8 a4. e'8 e
  a4. g8 \tuplet 3/2{d8(e) f}|
  e2 e8 c'

  b4. a8 g f
  e8 d4. e8 f
  e4. d8 c d
  e2 e8 c'

  b4. a8 g f
  e8 d4. e8 f
  e4. d8 c b
  a2 \tuplet 3/2{e'8(d) e}|

  f8 d4. \tuplet 3/2 {e8(d) e}| %d4 in book
  f8 d4. e8 e|
  e2 a4
  gs4 (e4.) c8

  e8. e16 e4 e
  d2 c8(b)|
  c4 a f'
  e2 c4

  e8 e a4 e
  d2 c8(b)
  c4 a c
  a2 r4

  %\alternative { { }{ } }


  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{

  In Sa -- ha -- ra, vu men van -- dert.
  In dem hey -- sn mid -- ber  zamd,
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
%################################# Chords #######################
harmonies = \chordmode {
  \skip 8*2
  e4*3
  a4*3:m
  f4*2
  g4
  c4*3
  %a4*3:m
  e4*3
  d4*3:m
  e4*3:7
  %a4*6:m
  a4*3:m
  e4*3
  % change above
  d4*3:m
  e4*2
  e4:7
  a2:m
  a4:7
  d2:m
  a4:7
  d4*3:m
  a2:m
  b4:7
  e4*3
  a4*3:m
  d4*3:m
  f4*3
  e4*3
  a4*3:m
  d4*3:m
  f4*2
  %new chord last time only
  e4:7
  a4*3:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      #(set-paper-size "letter")
      #(set-paper-size "letter")
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
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

% more verses:
\markup{}
\markup {
  \fontsize #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line {
        ""
        \column {
          "\n"
          "Shepsn pashen of der lonke"
          "Un dem pastek zestu koym:"
          "Un dir dukht zich, az s'iz emes,"
          "Az du zest es nit in troym."
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        ""
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
      \line {
        ""
        \column {
          "\n"
          "Sheep graze in the meadow"
          "And the shepard can be seen"
          "And it seems really true"
          "That this is not a dream"
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        ""
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

