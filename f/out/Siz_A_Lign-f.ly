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
  \key e \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 16*4 b8. b16   %lead in notes
  c8 b4. fs8 a
  g8 e4. b'8 b
  e4. d8 \tuplet 3/2{a8(b) c}|
  b2 b8 g'

  fs4. e8 d c
  b8 a4. b8 c
  b4. a8 g a
  b2 b8 g'

  fs4. e8 d c
  b8 a4. b8 c
  b4. a8 g fs
  e2 \tuplet 3/2{b'8(a) b}|

  c8 a4. \tuplet 3/2 {b8(a) b}| %d4 in book
  c8 a4. b8 b|
  b2 e4
  ds4 (b4.) g8

  b8. b16 b4 b
  a2 g8(fs)|
  g4 e c'
  b2 g4

  b8 b e4 b
  a2 g8(fs)
  g4 e g
  e2 r4

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
  b4*3
  e4*3:m
  c4*2
  d4
  g4*3
  %a4*3:m
  b4*3
  a4*3:m
  b4*3:7
  %a4*6:m
  e4*3:m
  b4*3
  % change above
  a4*3:m
  b4*2
  b4:7
  e2:m
  e4:7
  a2:m
  e4:7
  a4*3:m
  e2:m
  fs4:7
  b4*3
  e4*3:m
  a4*3:m
  c4*3
  b4*3
  e4*3:m
  a4*3:m
  c4*2
  %new chord last time only
  b4:7
  e4*3:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
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

