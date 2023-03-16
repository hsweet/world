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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes


  \mark \default
  e16 g b e g \tuplet 3/2 {b32 c b}a16 g|
  g8-. g16 g g8-. g16 g |
  g16 fs fs e a8-. c~->\ff
  c8 b16 a b4|

  e,,16\p g b e g \tuplet 3/2 {b32 c b}a16 g|
  g8-. g16 g g8-. g16 g |
  g16 d d g g f f e
  e4(e16) \tuplet 3/2{d32 e d} cs16 cs|
  \break
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    %flat a 7th, flat e 3rd, b is natural!
    \relative c'' {
      \set Staff.keySignature = #`(( 2 . ,FLAT)
                                   (5 . ,FLAT)
                                   )
      e4(e16) \tuplet 3/2{d32 e d} cs16 d|
      e4(e16) \tuplet 3/2{d32 e d} cs16 d|
      \repeat unfold 3{
        e16 \tuplet 3/2{d32 e d} cs16 d
      } e4|
      e16 f e d e8 e|
      f8 f e4|

      gs16 a gs f gs8 gs
      a8 a gs4
      d16 e fs g a b c cs|
      d16 b g b a8. g16|
      g16 d d g g f f e

    }
  }
  \alternative {
    {e4(e16) \tuplet 3/2{d32 e d} cs16 d| }
    {e4. d8 }
  }
  \break


  \key e \minor
  \mark \default
  g16 a b4(b16) b
  b16 c b c b8. b16|
  c16 b a8 g16 fs e fs|
  g4-. d'4->
  g,16 a b8(b16)cs d e|
  f16 e d cs bf a g fs|
  g16 d d g g f f e|
  e4. d8|
  \break

  \repeat volta 2{
    \mark \default
    e4 b'16 fs8 g32 a
    g4. fs8
    e4 b'16 fs8 g32 a
    g4. fs8
    e4 b'16 fs8 g32 a
    g4. fs8
    g16 d d g g f f e

  }
  \alternative {
    {e4 g16 f e d}
    {e2}
  }
} %end music block
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e4*5:m
  d4
  gs4:6
  b4:7
  e4*5:m
  d4
  e2:m
  %B
  e2*5
  d4:m
  e4*3
  d4:m
  e4
  d2
  g4
  a4:m
  e4:m
  d4:m
  e2*2
  %C
  g4*5
  d4
  g4*4
  d2:m
  g4
  d4:m
  e2:m
  %d
  e4:m
  e2:m/ds
  e4*3:m/d
  d2:m/ds
  e4:m e4:m/ds
  e4:m/d e4:m/cs
  e4:m
  d4:m
  e2*2:m
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
