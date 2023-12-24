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

%#################################### Melody ########################
melody = \relative c''' {
  \set Score.markFormatter = #format-mark-box-alphabet

  \clef treble
  \key a \minor
  \time 2/4

  \melisma
  a2 a2 a4 a4 a8 a8 a4 \break
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    bf16 a g fs g fs g a
    bf16 a g fs ef d c b|
    c8 c b16 a b c

  }
  \alternative { {a8 a' a, a' }{a,4 a } }


  \repeat volta 2{
    \mark \default
    c8.  c16 c a b c
    a16 b c d e d c b
    c8. c16 c a b c

  }
  \alternative { {a8 a' a, a' }{a,4 a8 a } }

  \repeat volta 2{
    \break
    \mark \default
    c4.  g8
    e'16 d c b c8 g'|
    c,4. g8
    e'16 d c b c4

    c'2~
    c4 r16 fs, g a
    bf a g fs ef d c b
    c16 d b c a4
  }
  \melismaEnd
  % briv starts here

  \break
  e8 a16 a a4~
  % a2~
  %a2~^\markup{\abs-fontsize #17 \bold \italic {"Foiae Verde - Green Leaves"}}
  a4. \fermata ^\markup{\abs-fontsize #17 \bold \italic {"     Foiae Verde - Green Leaves"}} d16 d|

  % e8  a16 a a4~|
  %a2 \fermata


  d8  d d-.  c-. |
  b a8 r8 d16 d

  d8 d d-.  c-.|
  b8 a r8  c16 c

  c8 c c-. b-. |
  a8 af r8 c16 c
  c8 c c-. b-. |
  a8 af e8 a~

  a4. \fermata af16 af
  %2nd verse
  af8 af af f|
  e8 d r af'16 af
  af8 af af f|
  e8 d r f16 f
  f8 f f e|
  d8 cs r f16 f|
  f8 f f e|
  d8 cs a d~
  d2\fermata

}
%################################# Lyrics #####################
\addlyrics{
  Oh ho ho ho
  Foi -- ae ver -- de, ble -- ter gri -- ne,
  Oy, in ye -- de -- re me -- di -- ne,
  Shpint der shpin zayn po -- ve -- ti -- ne
  Fil mit gift in fil mit si -- ne
  Oh ho...

  Foi -- ae ver -- de,  gri -- ne ble -- ter,
  Lebt zikh git, der g'vir, der fe -- ter
  In der ur -- em -- er ar -- bet -- er
  Ligt in drerd a ki -- lo -- me -- ter
  Oh ho.
}

%################################# Chords #######################
harmonies = \chordmode {
  a2*4:m
  a2*2:m
  e2
  a2*2:m
  %b
  a2*2:m
  e2
  a2*2:m
  %c
  c2*4
  c2*2:m
  a2*2:m
  %Foiae

  %a8*23
  a8*7
  d4*8:m
  a8*5:m
  d2*3:m
  a4 f4*4:m
  s8
  af8*8:m
  %g8*5
  f8*5:m
  a8*10:7
  d4*3:m

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
    title= "Schwartz's Serba"
    subtitle="Briv Fun Yisroel"
    subsubtitle="41"
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

%
% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line {
        "1."
        \column {
          "Foiae verde, bleter grine,"
          "Oy, in yedere medine,"
          "Shpint der shpin zayn povetine"
          "Fil mit gift in fil mit sine"
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        "2."
        \column {
          "Foiae verde, grine bleter,"
          "Lebt zikh git, der g'vir, der feter,"
          "In der uremer arbeter"
          "Ligt in drerd a kilometer"
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        ""
        \column {

          "Leaves of green, green leaves"
          "Everywhere,"
          "The spider spins"
          "It's web"
          "Of poison and hate"
          "-"
          "Green leaves, leaves of green,"
          "The rich live high"
          "While workers lie"
          "Deep in hell"
        }
      }


      \hspace #0.2 % distance between verses
      \line {
        \column {
          ""
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}

