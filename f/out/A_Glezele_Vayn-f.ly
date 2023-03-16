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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes


  \mark \default
  d16 f a d f \tuplet 3/2 {a32 bf a}g16 f|
  f8-. f16 f f8-. f16 f |
  f16 e e d g8-. bf~->\ff
  bf8 a16 g a4|

  d,,16\p f a d f \tuplet 3/2 {a32 bf a}g16 f|
  f8-. f16 f f8-. f16 f |
  f16 c c f f ef ef d
  d4(d16) \tuplet 3/2{c32 d c} b16 b|
  \break
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    %flat a 7th, flat e 3rd, b is natural!
    \relative c' {
      \set Staff.keySignature = #`(( 2 . ,FLAT)
                                   (5 . ,FLAT)
                                   )
      d4(d16) \tuplet 3/2{c32 d c} b16 c|
      d4(d16) \tuplet 3/2{c32 d c} b16 c|
      \repeat unfold 3{
        d16 \tuplet 3/2{c32 d c} b16 c
      } d4|
      d16 ef d c d8 d|
      ef8 ef d4|

      fs16 g fs ef fs8 fs
      g8 g fs4
      c16 d e f g a bf b|
      c16 a f a g8. f16|
      f16 c c f f ef ef d

    }
  }
  \alternative {
    {d4(d16) \tuplet 3/2{c32 d c} b16 c| }
    {d4. c8 }
  }
  \break


  \key d \minor
  \mark \default
  f,16 g a4(a16) a
  a16 bf a bf a8. a16|
  bf16 a g8 f16 e d e|
  f4-. c'4->
  f,16 g a8(a16)b c d|
  ef16 d c b af g f e|
  f16 c c f f ef ef d|
  d4. c8|
  \break

  \repeat volta 2{
    \mark \default
    d4 a'16 e8 f32 g
    f4. e8
    d4 a'16 e8 f32 g
    f4. e8
    d4 a'16 e8 f32 g
    f4. e8
    f16 c c f f ef ef d

  }
  \alternative {
    {d4 f16 ef d c}
    {d2}
  }
} %end music block
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d4*5:m
  c4
  fs4:6
  a4:7
  d4*5:m
  c4
  d2:m
  %B
  d2*5
  c4:m
  d4*3
  c4:m
  d4
  c2
  f4
  g4:m
  d4:m
  c4:m
  d2*2
  %C
  f4*5
  c4
  f4*4
  c2:m
  f4
  c4:m
  d2:m
  %d
  d4:m
  d2:m/cs
  d4*3:m/c
  c2:m/cs
  d4:m d4:m/cs
  d4:m/c d4:m/b
  d4:m
  c4:m
  d2*2:m
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
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>
  \header{
    title= "A Glezele Vayn"
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
