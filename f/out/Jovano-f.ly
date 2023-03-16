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
  \key g \major
  \time 7/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
highpart = \transpose g, d,\relative c'' {
  \global
  \repeat volta 2{
    a8 ^"Introduction"[a b] a[g] fs4\prall
    g8[g a] g8[fs] e4|
    ds4 \prall e8 fs[g fs e]|
  }
  \alternative {
    {ds4 \prall e8 fs4. r8}
    {ds4 \prall c8 b4. r8}
  }

  %\mark \default
  ds4. e8 [ds c b]
  b4.~b2
  fs'4. g8 [fs] e16 [ds e8]
  fs4.~fs2

  \repeat volta 2{
    g4 g8 g4 g|
    g8 [fs g] a4 a8 [g]|
    fs8 fs4 fs fs|
    fs8 [e fs] g2|

    e8 e4 e fs8[g]
    a4 g8 fs4 e|
    e8 ds4 e8[ds e fs]
    ds4 fs8 e[ds c b]

  }
  \alternative {
    {b4.~b2 }
    {b4.~b2 }
  }
}
lowpart = \transpose g, d                                                                                \relative c'{
  \global
  \repeat volta 2{
    fs8 [fs g] fs[e] ds4\prall
    e8[e fs] e8[ds] c4|
    b4 \prall c8 d[e d c]|
  }
  \alternative {
    {b4 \prall c8 ds4. r8}
    {b4 a8 fs4. r8}
  }

  %\mark \default
  b4. c8 [b a g]
  fs4.~fs2
  ds'4. e8 [ds] c16 [b c8]
  ds4.~ds2

  \repeat volta 2{
    e4 e8 e4 e|
    e8 [ds e] fs4 fs8 [e]|
    d8 d4 d d|
    ds8 [cs ds] e2|

    c8 c4 c ds8[e]
    fs4 e8 ds4 c|
    c8 b4 c8[b c d]
    b4 d8 c[b a g]

  }
  \alternative {
    {fs4. g4 a}
    {fs4.~fs2 }
  }
}
%################################# Lyrics #####################
\addlyrics{
  \repeat unfold 24 \skip 1
  Jo -- van \skip1 \skip1 \skip1 -no
  Jo -- van \skip1 \skip1 \skip1 \skip1 -ke
}
%########m######################### Chords #######################
harmonies = \transpose g, d \chordmode {
  %intro
  b8*7:7
  e8*5:m c4
  b8*14:7
  b8*7
  %r8*35
  %vocal 1st 4 bars
  b8*5 a4:m
  b8*12
  a4:m
  b8*7
  %next part
  e8*7:m
  a8*7:m
  d8*7
  e8*7:m
  % a8*4:m %em
  c8*7
  a8*7:m %am
  b8*7  %b
  a8*3:m
  c8*4
  b8*7:7

  %{chord mapping for transpose
    a ==> e
    b ==> f
    c ==> g
    d ==> a
    e ==> b
    f ==> c
    g ==> d
  %}

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \highpart
    \new Staff \lowpart

  >>
  \header{
    title= "Jovano, Jovanke"
    subtitle=""
    composer= "Macadonia"
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
          "Jovano, Jovanke,"
          "kraj Vardarot sedis, mori, belo platno belis"
          "se nagore gledas, duso, sarce mojo, Jovano"
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        "2."
        \column {
          "Jovano, Jovanke,"
          "tvojata majka, mori, tebe ne te dava"
          "kaj mene da dojdes, duso, sarce moje, Jovano"
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        "3."
        \column {
          "Jovano, Jovanke, "
          "jas te doma cekam, mori, doma da me dojdes,"
          "Ti, mi ne dohodis, duso, sarce moje, Jovano"
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        ""
        \column {
          ""
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

