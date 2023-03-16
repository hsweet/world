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
  \key c \major
  \time 7/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
highpart = \transpose c g,\relative c'' {
  \global
  \repeat volta 2{
    d8 ^"Introduction"[d e] d[c] b4\prall
    c8[c d] c8[b] a4|
    gs4 \prall a8 b[c b a]|
  }
  \alternative {
    {gs4 \prall a8 b4. r8}
    {gs4 \prall f8 e4. r8}
  }

  %\mark \default
  gs4. a8 [gs f e]
  e4.~e2
  b'4. c8 [b] a16 [gs a8]
  b4.~b2

  \repeat volta 2{
    c4 c8 c4 c|
    c8 [b c] d4 d8 [c]|
    b8 b4 b b|
    b8 [a b] c2|

    a8 a4 a b8[c]
    d4 c8 b4 a|
    a8 gs4 a8[gs a b]
    gs4 b8 a[gs f e]

  }
  \alternative {
    {e4.~e2 }
    {e4.~e2 }
  }
}
lowpart = \transpose c g                                                                                \relative c''{
  \global
  \repeat volta 2{
    b8 [b c] b[a] gs4\prall
    a8[a b] a8[gs] f4|
    e4 \prall f8 g[a g f]|
  }
  \alternative {
    {e4 \prall f8 gs4. r8}
    {e4 d8 b4. r8}
  }

  %\mark \default
  e4. f8 [e d c]
  b4.~b2
  gs'4. a8 [gs] f16 [e f8]
  gs4.~gs2

  \repeat volta 2{
    a4 a8 a4 a|
    a8 [gs a] b4 b8 [a]|
    g8 g4 g g|
    gs8 [fs gs] a2|

    f8 f4 f gs8[a]
    b4 a8 gs4 f|
    f8 e4 f8[e f g]
    e4 g8 f[e d c]

  }
  \alternative {
    {b4. c4 d}
    {b4.~b2 }
  }
}
%################################# Lyrics #####################
\addlyrics{
  \repeat unfold 24 \skip 1
  Jo -- van \skip1 \skip1 \skip1 -no
  Jo -- van \skip1 \skip1 \skip1 \skip1 -ke
}
%########m######################### Chords #######################
harmonies = \transpose c g \chordmode {
  %intro
  e8*7:7
  a8*5:m f4
  e8*14:7
  e8*7
  %r8*35
  %vocal 1st 4 bars
  e8*5 d4:m
  e8*12
  d4:m
  e8*7
  %next part
  a8*7:m
  d8*7:m
  g8*7
  a8*7:m
  % a8*4:m %em
  f8*7
  d8*7:m %am
  e8*7  %b
  d8*3:m
  f8*4
  e8*7:7

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

