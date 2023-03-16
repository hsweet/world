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
  \key a \minor
  \time 4/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  a8^\markup{\bold"Moderato" } a b b
  c8 c d8. b16
  \grace d (c16.) (b32 a16) c b (a) gs b|
  b16(a) a16. gs32 a4|

  e'8 -1 e fs fs8|
  g8 g  a4
  \grace a(g16.)(fs32)e16 g fs e ds -2 fs
  fs16 (e) e16. ds32 e4|

  %\alternative { { }{ } }

  \repeat volta 2{
    %\mark \default
    a8.-2 b16 a d,8. -2
    f4 e
    g8-3 f e b
    d4 c|

    a16 a a8 b16 b b8|
    c16 c c8 d8. b16
    c16. \trill b32 a16 c b a gs b
    b16 a a16. gs32 a4
  }
  \break

  \mark \default
  e'16. ds32 e16 f e d c b
  c16 a8 gs16 a4|
  a16. gs32 a16 b c b a f
  e16 e8 ds16 e4|

  \repeat volta 2{
    a16. gs32 a16 b c b a f|
    e16. ds32 e16 f e d c b
    e8 ds -> e16 d e8|
    e8 ds -> e16 d e8|
    e'16. ds32 e16 f e d c b
    c16 a8 gs16 a4_"D.C."
  }
  %Trio
  \break
  \repeat volta 2{
    \mark \default
    \time 2/4
    gs4. \segno ^\markup{\bold "Allegro" } (a8)
    b4.(e,8)
    a4.(b8)
    c4.(c8)
    b4.(c8)
    d4.( g,8)
    c4.(d8)
    e4.(e8)
    ds4.(e8)
    fs4 b,
    e4-1 fs-2
    g4-2 b-4
    a4 g
    fs4-1 b-4
    e,8 e4 ds16 e-1
  }
  \alternative {
    {fs16 e ds e fs e ds e }
    {fs16 e ds e ds e-1 fs gs }
  }

  \repeat volta 2{
    a4. a,8
    a'4 g
    f8 f4 e16 f
    g16 f e f g f e f|
    g4. g,8
    g'4 f
    e8 e4 ds16 e|
    f16 e ds e f e ds e|
    f4. d8
    b4 f'
    e4. c8
    a4 f
    e4 d'
    c4 b
    c8 a4 gs16 a

  }
  \alternative {
    {b16 a gs a b a gs a }
    {b16 a gs a a8 r\coda \segno }
  }
  \bar ".."

  f'8\coda ^\markup{\bold"Coda"} r r4
  e8 r r4
  a8-> a,-> r4

}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a4:m e4:7
  a4:m d4:m
  a4:m e4:7
  a4:m e4:7
  a4:m b4:7
  e4:m a4:m
  e4:m b4:7
  e8:m b8:7 e4:m
  %1st line
  a4:m d4:m
  g4:7 c4
  c4
  e:7
  gs4:dim a4:m
  a4:m
  e4:7
  a4:m d4:m
  a4:m e4:7
  a8:m e8:7 a4:m
  %2
  a4:m e4:7
  a4*3:m d4:m
  a4*3: d4:m
  a4:m e4:7
  a2:m
  e2
  a4:m e4:7
  a2:m
  %2/4 section
  e2*2:7
  a2*2:m
  g2*2:7
  c2*2
  b2*2:7
  %
  e2*2:m b2*2:7
  e4*5:m e4:7
  %
  a2*2:7
  d2*2:m
  g2*2:7
  c2
  a2:7
  d2*2:m  %double check.. hard to read orig.
  a2*2:m e2*2:7 a2*3:m
  %
  d2:m
  e2:7
  a2:m
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
    title= "Hungarian Czardas"
    subtitle="Kammen #1 Book"
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
