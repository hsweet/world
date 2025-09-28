\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \key g \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes


    d8 g g a
    bf bf a g
    bf4 c
    bf8 bf a g

    d8 g g a
    bf8 bf a g
    bf4 a
    g2

    f8 bf bf c
    d8 d c bf
    d4 ef
    d8 d c bf

    c8 bf bf c
    d8 d c bf
    bf4 a
    g8 d' bf d



  \repeat volta 2{
    \mark \default
    c8. bf16 a4~
    a8 c a c
    bf8. a16 g4~
    g8 bf g bf

    a4. d8
  }

  \alternative {
    { d8 c bf c
      d2~
      d8 d bf d}
    {d8 c bf a
     g2~
     g2}
  }

}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
            Un mir zay -- nen a -- le bri -- der
            Oy, oy, a -- le bri -- der!
            Un mir zin -- gen frey -- lekhe li -- der
            Oy, oy, oy!

            Un mir hal -- tn zikh in ey -- nem,
            Oy, oy, zikh in ey -- nem!
            Aze -- lk -- hes iz nito bay key -- nem,
            Oy, oy, oy!

            Oy yoi yoi yoi ya yoi
            Oy yoi yoi yoi ya yoi
             Oy yoi yoi yoi ya
             yoi you yoi ya yoi


}
%################################# Chords #######################
harmonies = \chordmode {
  g4*5:m
  c4:m
  g4*7:m
  d4:7
  g2:m

  bf4*5 ef4
  bf4*7 d4:7
  g2:m
  %
  d2*2:7
  g2*2:m
  d2
  %
  d2:7
  g2*2:m
  d2:7
  g2*2:m
}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Ale Brider"
    subtitle=""
    composer= ""

    instrument =""
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

%\markup{}
\markup {
  %\font-size #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "1."

              \column {
                 "Un mir zaynen ale eynik,"
              "Oy, oy, ale eynik!"
              "Tsi mir zaynen fil tsi veynik,"
              "Oy, oy, oy!"
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "2."

              \column {
                  "Un mir libn zikh dokh ale,"
              "Oy, oy, zikh dokh ale!"
              "Vi a khosn mit a kale, Oy, oy, oy!"
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "3."
              \column {
                "Un mir zaynen freylekh, munter,"
"Oy, oy freylekh, munter!"
"Zingen lider, tantsn unter,"
"Oy, oy, oy!"
              }
      }
      \hspace #0.2 % distance between verses
      \line { "4."
              \column {
                ""
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

