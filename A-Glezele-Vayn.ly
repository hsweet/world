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
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes


  \mark \default
  g16 bf d g bf \tuplet 3/2 {d32 ef d}c16 bf|
  bf8-. bf16 bf bf8-. bf16 bf |
  bf16 a a g c8-. ef~->\ff
  ef8 d16 c d4|

  g,,16\p bf d g bf \tuplet 3/2 {d32 ef d}c16 bf|
  bf8-. bf16 bf bf8-. bf16 bf |
  bf16 f f bf bf af af g
  g4(g16) \tuplet 3/2{f32 g f} e16 e|
  \break
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    %flat a 7th, flat e 3rd, b is natural!
    \relative c' {
      \set Staff.keySignature = #`(( 2 . ,FLAT)
                                   (5 . ,FLAT)
                                   )
      g'4(g16) \tuplet 3/2{f32 g f} e16 f|
      g4(g16) \tuplet 3/2{f32 g f} e16 f|
      \repeat unfold 3{
        g16 \tuplet 3/2{f32 g f} e16 f
      } g4|
      g16 af g f g8 g|
      af8 af g4|

      b16 c b af b8 b
      c8 c b4
      f16 g a bf c d ef e|
      f16 d bf d c8. bf16|
      bf16 f f bf bf af af g

    }
  }
  \alternative {
    {g4(g16) \tuplet 3/2{f32 g f} e16 f| }
    {g4. f8 }
  }
  \break


  \key g \minor
  \mark \default
  bf16 c d4(d16) d
  d16 ef d ef d8. d16|
  ef16 d c8 bf16 a g a|
  bf4-. f'4->
  bf,16 c d8(d16)e f g|
  af16 g f e df c bf a|
  bf16 f f bf bf af af g|
  g4. f8|
  \break

  \repeat volta 2{
    \mark \default
    g4 d'16 a8 bf32 c
    bf4. a8
    g4 d'16 a8 bf32 c
    bf4. a8
    g4 d'16 a8 bf32 c
    bf4. a8
    bf16 f f bf bf af af g

  }
  \alternative {
    {g4 bf16 af g f}
    {g2}
  }
} %end music block
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g4*5:m
  f4
  b4:6
  d4:7
  g4*5:m
  f4
  g2:m
  %B
  g2*5
  f4:m
  g4*3
  f4:m
  g4
  f2
  bf4
  c4:m
  g4:m
  f4:m
  g2*2
  %C
  bf4*5
  f4
  bf4*4
  f2:m
  bf4
  f4:m
  g2:m
  %d
  g4:m
  g2:m/fs
  g4*3:m/f
  f2:m/fs
  g4:m g4:m/fs
  g4:m/f g4:m/e
  g4:m
  f4:m
  g2*2:m
  %{  old chords
  g2*3:m
  c4:m g4:m
  g2*2:m
  bf4 f4:m
  g2:m %end section
  g2*5
  f4:m g4*3
  c4:m g4
  f2
  bf4
  c4:m
  bf4 f4:m
  g2*2:m %end section
  bf2*2
  c4:m f4
  bf4*7
  f4:m
  g2:m%end section
  %odd chords later
  g2*6:m
  bf4 f4:m
  g1*2:m
  %}
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \melody
  >>
  \header{
    title= "A Glezele Vayn"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
%{
  % more verses:
  \markup{}
  \markup {
  \fill-line {
  \hspace #0.1 % distance from left margin
  \column {
  \line { "1."
  \column {
  ""
  }
  }
  \hspace #0.2 % vertical distance between verses
  \line { "2."
  \column {
  ""
  }
  }
  }
  \hspace #0.1  % horiz. distance between columns
  \column {
  \line { "3."
  \column {
  ""
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

%}
