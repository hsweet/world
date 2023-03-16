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

%#################################### Melody ########################
melody = \relative c'' {
  \set Score.markFormatter = #format-mark-box-alphabet

  \clef treble
  \key e \minor
  \time 2/4

  \melisma
  e2 e2 e4 e4 e8 e8 e4 \break
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    f16 e d cs d cs d e
    f16 e d cs bf a g fs|
    g8 g fs16 e fs g

  }
  \alternative { {e8 e' e, e' }{e,4 e } }


  \repeat volta 2{
    \mark \default
    g8.  g16 g e fs g
    e16 fs g a b a g fs
    g8. g16 g e fs g

  }
  \alternative { {e8 e' e, e' }{e,4 e8 e } }

  \repeat volta 2{
    \break
    \mark \default
    g4.  d8
    b'16 a g fs g8 d'|
    g,4. d8
    b'16 a g fs g4

    g'2~
    g4 r16 cs, d e
    f e d cs bf a g fs
    g16 a fs g e4
  }
  \melismaEnd
  % briv starts here

  \break
  b8 e16 e e4~
  % a2~
  %a2~^\markup{\abs-fontsize #17 \bold \italic {"Foiae Verde - Green Leaves"}}
  e4. \fermata ^\markup{\abs-fontsize #17 \bold \italic {"     Foiae Verde - Green Leaves"}} a16 a|

  % e8  a16 a a4~|
  %a2 \fermata


  a8  a a-.  g-. |
  fs e8 r8 a16 a

  a8 a a-.  g-.|
  fs8 e r8  g16 g

  g8 g g-. fs-. |
  e8 ef r8 g16 g
  g8 g g-. fs-. |
  e8 ef b8 e~

  e4. \fermata ef16 ef
  %2nd verse
  ef8 ef ef c|
  b8 a r ef'16 ef
  ef8 ef ef c|
  b8 a r c16 c
  c8 c c b|
  a8 gs r c16 c|
  c8 c c b|
  a8 gs e' a~
  a2\fermata

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
  e2*4:m
  e2*2:m
  b2
  e2*2:m
  %b
  e2*2:m
  b2
  e2*2:m
  %c
  g2*4
  g2*2:m
  e2*2:m
  %Foiae

  %a8*23
  e8*7
  a4*8:m
  e8*5:m
  a2*3:m
  e4 c4*4:m
  s8
  ef8*8:m
  %g8*5
  c8*5:m
  e8*10:7
  a4*3:m

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
    title= "Schwartz's Serba"
    subtitle="Briv Fun Yisroel"
    subsubtitle="41"
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

