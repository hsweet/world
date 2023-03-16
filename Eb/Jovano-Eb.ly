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
  \key a \major
  \time 7/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
highpart = \transpose a e\relative c''' {
  \global
  \repeat volta 2{
    b8 ^"Introduction"[b cs] b[a] gs4\prall
    a8[a b] a8[gs] fs4|
    es4 \prall fs8 gs[a gs fs]|
  }
  \alternative {
    {es4 \prall fs8 gs4. r8}
    {es4 \prall d8 cs4. r8}
  }

  %\mark \default
  es4. fs8 [es d cs]
  cs4.~cs2
  gs'4. a8 [gs] fs16 [es fs8]
  gs4.~gs2

  \repeat volta 2{
    a4 a8 a4 a|
    a8 [gs a] b4 b8 [a]|
    gs8 gs4 gs gs|
    gs8 [fs gs] a2|

    fs8 fs4 fs gs8[a]
    b4 a8 gs4 fs|
    fs8 es4 fs8[es fs gs]
    es4 gs8 fs[es d cs]

  }
  \alternative {
    {cs4.~cs2 }
    {cs4.~cs2 }
  }
}
lowpart = \transpose a e'                                                                                \relative c'''{
  \global
  \repeat volta 2{
    gs8 [gs a] gs[fs] es4\prall
    fs8[fs gs] fs8[es] d4|
    cs4 \prall d8 e[fs e d]|
  }
  \alternative {
    {cs4 \prall d8 es4. r8}
    {cs4 b8 gs4. r8}
  }

  %\mark \default
  cs4. d8 [cs b a]
  gs4.~gs2
  es'4. fs8 [es] d16 [cs d8]
  es4.~es2

  \repeat volta 2{
    fs4 fs8 fs4 fs|
    fs8 [es fs] gs4 gs8 [fs]|
    e8 e4 e e|
    es8 [ds es] fs2|

    d8 d4 d es8[fs]
    gs4 fs8 es4 d|
    d8 cs4 d8[cs d e]
    cs4 e8 d[cs b a]

  }
  \alternative {
    {gs4. a4 b}
    {gs4.~gs2 }
  }
}
%################################# Lyrics #####################
\addlyrics{
  \repeat unfold 24 \skip 1
  Jo -- van \skip1 \skip1 \skip1 -no
  Jo -- van \skip1 \skip1 \skip1 \skip1 -ke
}
%########m######################### Chords #######################
harmonies = \transpose a e' \chordmode {
  %intro
  cs8*7:7
  fs8*5:m d4
  cs8*14:7
  cs8*7
  %r8*35
  %vocal 1st 4 bars
  cs8*5 b4:m
  cs8*12
  b4:m
  cs8*7
  %next part
  fs8*7:m
  b8*7:m
  e8*7
  fs8*7:m
  % a8*4:m %em
  d8*7
  b8*7:m %am
  cs8*7  %b
  b8*3:m
  d8*4
  cs8*7:7

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

