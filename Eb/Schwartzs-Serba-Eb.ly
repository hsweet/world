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
  \key fs \minor
  \time 2/4

  \melisma
  fs2 fs2 fs4 fs4 fs8 fs8 fs4 \break
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    g16 fs e ds e ds e fs
    g16 fs e ds c b a gs|
    a8 a gs16 fs gs a

  }
  \alternative { {fs8 fs' fs, fs' }{fs,4 fs } }


  \repeat volta 2{
    \mark \default
    a8.  a16 a fs gs a
    fs16 gs a b cs b a gs
    a8. a16 a fs gs a

  }
  \alternative { {fs8 fs' fs, fs' }{fs,4 fs8 fs } }

  \repeat volta 2{
    \break
    \mark \default
    a4.  e8
    cs'16 b a gs a8 e'|
    a,4. e8
    cs'16 b a gs a4

    a'2~
    a4 r16 ds, e fs
    g fs e ds c b a gs
    a16 b gs a fs4
  }
  \melismaEnd
  % briv starts here

  \break
  cs8 fs16 fs fs4~
  % a2~
  %a2~^\markup{\abs-fontsize #17 \bold \italic {"Foiae Verde - Green Leaves"}}
  fs4. \fermata ^\markup{\abs-fontsize #17 \bold \italic {"     Foiae Verde - Green Leaves"}} b16 b|

  % e8  a16 a a4~|
  %a2 \fermata


  b8  b b-.  a-. |
  gs fs8 r8 b16 b

  b8 b b-.  a-.|
  gs8 fs r8  a16 a

  a8 a a-. gs-. |
  fs8 f r8 a16 a
  a8 a a-. gs-. |
  fs8 f cs8 fs~

  fs4. \fermata f16 f
  %2nd verse
  f8 f f d|
  cs8 b r f'16 f
  f8 f f d|
  cs8 b r d16 d
  d8 d d cs|
  b8 as r d16 d|
  d8 d d cs|
  b8 as fs b~
  b2\fermata

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
  fs2*4:m
  fs2*2:m
  cs2
  fs2*2:m
  %b
  fs2*2:m
  cs2
  fs2*2:m
  %c
  a2*4
  a2*2:m
  fs2*2:m
  %Foiae

  %a8*23
  fs8*7
  b4*8:m
  fs8*5:m
  b2*3:m
  fs4 d4*4:m
  s8
  f8*8:m
  %g8*5
  d8*5:m
  fs8*10:7
  b4*3:m

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

