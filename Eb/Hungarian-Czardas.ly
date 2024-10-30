\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
  \time 4/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  d8^\markup{\bold"Moderato" } d e e
  f8 f g8. e16
  \grace g (f16.) (e32 d16) f e (d) cs e|
  e16(d) d16. cs32 d4|

  a'8 -1 a b b8|
  c8 c  d4
  \grace d(c16.)(b32)a16 c b a gs -2 b
  b16 (a) a16. gs32 a4|

  %\alternative { { }{ } }

  \repeat volta 2{
    %\mark \default
    d8.-2 e16 d g,8. -2
    bf4 a
    c8-3 bf a e
    g4 f|

    d16 d d8 e16 e e8|
    f16 f f8 g8. e16
    f16. \trill e32 d16 f e d cs e
    e16 d d16. cs32 d4
  }
  \break

  \mark \default
  a'16. gs32 a16 bf a g f e
  f16 d8 cs16 d4|
  d16. cs32 d16 e f e d bf
  a16 a8 gs16 a4|

  \repeat volta 2{
    d16. cs32 d16 e f e d bf|
    a16. gs32 a16 bf a g f e
    a8 gs -> a16 g a8|
    a,8 gs -> a16 g a8|
    a'16. gs32 a16 bf a g f e
    f16 d8 cs16 d4_"D.C."
  }
  %Trio
  \break
  \repeat volta 2{
    \mark \default
    \time 2/4
    cs'4. \segno ^\markup{\bold "Allegro" } (d8)
    e4.(a,8)
    d4.(e8)
    f4.(f8)
    e4.(f8)
    g4.( c,8)
    f4.(g8)
    a4.(a8)
    gs4.(a8)
    b4 e,
    a4-1 b-2
    c4-2 e-4
    d4 c
    b4-1 e-4
    a,8 a4 gs16 a-1
  }
  \alternative {
    {b16 a gs a b a gs a }
    {b16 a gs a gs a-1 b cs }
  }

  \repeat volta 2{
    d4. d,8
    d'4 c
    bf8 bf4 a16 bf
    c16 bf a bf c bf a bf|
    c4. c,8
    c'4 bf
    a8 a4 gs16 a|
    bf16 a gs a bf a gs a|
    bf4. g8
    e4 bf'
    a4. f8
    d4 bf
    a4 g'
    f4 e
    f8 d4 cs16 d

  }
  \alternative {
    {e16 d cs d e d cs d }
    {e16 d cs d d8 r\coda \segno }
  }
  \bar ".."

  bf'8\coda ^\markup{\bold"Coda"} r r4
  a8 r r4
  d8-> d,-> r4

}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d4:m a4:7
  d4:m g4:m
  d4:m a4:7
  d4:m a4:7
  d4:m e4:7
  a4:m d4:m
  a4:m e4:7
  a8:m e8:7 a4:m
  %1st line
  d4:m g4:m
  c4:7 f4
  f4
  a:7
  cs4:dim d4:m
  d4:m
  a4:7
  d4:m g4:m
  d4:m a4:7
  d8:m a8:7 d4:m
  %2
  d4:m a4:7
  d4*3:m g4:m
  d4*3: g4:m
  d4:m a4:7
  d2:m
  a2
  d4:m a4:7
  d2:m
  %2/4 section
  a2*2:7
  d2*2:m
  c2*2:7
  f2*2
  e2*2:7
  %
  a2*2:m e2*2:7
  a4*5:m a4:7
  %
  d2*2:7
  g2*2:m
  c2*2:7
  f2
  d2:7
  g2*2:m  %double check.. hard to read orig.
  d2*2:m a2*2:7 d2*3:m
  %
  g2:m
  a2:7
  d2:m
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff

    \melody
  >>
  \header{
    title= "Hungarian Czardas"
    subtitle="Kammen #1 Book"
    composer= ""
    instrument = "Eb"
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
