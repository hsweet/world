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
  \key b \minor
  \time 4/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  b8^\markup{\bold"Moderato" } b cs cs
  d8 d e8. cs16
  \grace e (d16.) (cs32 b16) d cs (b) as cs|
  cs16(b) b16. as32 b4|

  fs'8 -1 fs gs gs8|
  a8 a  b4
  \grace b(a16.)(gs32)fs16 a gs fs es -2 gs
  gs16 (fs) fs16. es32 fs4|

  %\alternative { { }{ } }

  \repeat volta 2{
    %\mark \default
    b8.-2 cs16 b e,8. -2
    g4 fs
    a8-3 g fs cs
    e4 d|

    b16 b b8 cs16 cs cs8|
    d16 d d8 e8. cs16
    d16. \trill cs32 b16 d cs b as cs
    cs16 b b16. as32 b4
  }
  \break

  \mark \default
  fs'16. es32 fs16 g fs e d cs
  d16 b8 as16 b4|
  b16. as32 b16 cs d cs b g
  fs16 fs8 es16 fs4|

  \repeat volta 2{
    b16. as32 b16 cs d cs b g|
    fs16. es32 fs16 g fs e d cs
    fs8 es -> fs16 e fs8|
    fs,8 es -> fs16 e fs8|
    fs'16. es32 fs16 g fs e d cs
    d16 b8 as16 b4_"D.C."
  }
  %Trio
  \break
  \repeat volta 2{
    \mark \default
    \time 2/4
    as'4. \segno ^\markup{\bold "Allegro" } (b8)
    cs4.(fs,8)
    b4.(cs8)
    d4.(d8)
    cs4.(d8)
    e4.( a,8)
    d4.(e8)
    fs4.(fs8)
    es4.(fs8)
    gs4 cs,
    fs4-1 gs-2
    a4-2 cs-4
    b4 a
    gs4-1 cs-4
    fs,8 fs4 es16 fs-1
  }
  \alternative {
    {gs16 fs es fs gs fs es fs }
    {gs16 fs es fs es fs-1 gs as }
  }

  \repeat volta 2{
    b4. b,8
    b'4 a
    g8 g4 fs16 g
    a16 g fs g a g fs g|
    a4. a,8
    a'4 g
    fs8 fs4 es16 fs|
    g16 fs es fs g fs es fs|
    g4. e8
    cs4 g'
    fs4. d8
    b4 g
    fs4 e'
    d4 cs
    d8 b4 as16 b

  }
  \alternative {
    {cs16 b as b cs b as b }
    {cs16 b as b b8 r\coda \segno }
  }
  \bar ".."

  g'8\coda ^\markup{\bold"Coda"} r r4
  fs8 r r4
  b8-> b,-> r4

}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b4:m fs4:7
  b4:m e4:m
  b4:m fs4:7
  b4:m fs4:7
  b4:m cs4:7
  fs4:m b4:m
  fs4:m cs4:7
  fs8:m cs8:7 fs4:m
  %1st line
  b4:m e4:m
  a4:7 d4
  d4
  fs:7
  as4:dim b4:m
  b4:m
  fs4:7
  b4:m e4:m
  b4:m fs4:7
  b8:m fs8:7 b4:m
  %2
  b4:m fs4:7
  b4*3:m e4:m
  b4*3: e4:m
  b4:m fs4:7
  b2:m
  fs2
  b4:m fs4:7
  b2:m
  %2/4 section
  fs2*2:7
  b2*2:m
  a2*2:7
  d2*2
  cs2*2:7
  %
  fs2*2:m cs2*2:7
  fs4*5:m fs4:7
  %
  b2*2:7
  e2*2:m
  a2*2:7
  d2
  b2:7
  e2*2:m  %double check.. hard to read orig.
  b2*2:m fs2*2:7 b2*3:m
  %
  e2:m
  fs2:7
  b2:m
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
