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

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key b \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 4*1 fs4  %lead in notes

  \repeat volta 2{
    \mark \default
    g2 fs4
    b2 cs4
    d2.~
    d4 b cs

    d4 b cs
    d4 b d
    cs2. ~ % (f4) %check if f  is correct
    cs2 fs,4|

    g2 fs4
    cs'2 d4
    e2. ~
    e4 cs d|  %12

    e4 cs d
    e4 fs g
    fs2.
    fs8 [g] fs e d fs,

    g2 fs4
    b2 cs4
    d2.~
    d4 b cs

    d4 cs d
    e4 d e
    fs2.~
    fs4 g fs

    e2.~ e4 fs e
    d2.~d4 e d
    cs2 g'4
    fs2 as,4

    b2.~
  }
  \alternative { { b2 fs4}{b4 fs' d } }
  \break
  \repeat volta 2{
    \mark \default
    fs2.~
    fs4 fs d
    fs2.~
    fs4 g e

    g2.~   %38
    g4 g e
    g2.~
    g4 cs, d|

    e2.~
    e4 d e
    fs2.~
    fs4 e d

    cs4. fs8 g fs
    as,4. fs'8 g fs

  }
  \alternative {
    {
      b,2.~
      b4 fs' d
    }
    {
      b2.~
      b4 b'4. a8
    }
  }
  \break
  \repeat volta 2{
    \mark \default
    a2.~
    a4 g e
    fs8. fs16 fs4 r|
    r4 c'4. b8

    b2.~
    b4 a fs
    g8. g16 g4 r|
    r4 e fs

    g2.~
    g4 e   b'
    a2.~
    a4 fs d

    a4. b8 cs e
    b'2 a4
  }
  \alternative {
    {
      d,2.~
      d4 b'4. a8
    }
    {
      d,4 e es
      fs2 fs,4
    }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies =\chordmode {
  s4
  b4*5:m

  fs4:7
  b4*9:m
  cs4*3:7
  fs4*6:7
  e4*3:m6
  fs4*3:7
  e4*3:m6
  fs4*3:7
  e4*3:m6
  fs4*3:7
  b4*3:m

  fs4*3:7
  b4*5:m
  fs4:7
  b4*5:m

  fs4:7
  b4*3:m
  a4*3:7
  d4*3 % r2

  b4*3:7
  e4*3:m
  fs4*3:7
  b4*6:m

  e4*3:m6
  fs4*3:7
  b4*5:m

  fs4:7
  b4*3:m
  %B
  b4*12:m

  e4*12:m
  e4*3:m6
  fs4*3:7
  b4*6:m

  e4*3:m6
  fs4*3:7
  b4*12:m

  %c
  a4*6:7

  d4*6

  b4*6:7

  e4*6:m

  e4*3:m7
  a4*3:7
  d4*6
  %f2

  a4*6:7

  d4*9

  fs4*3:7


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
    title= "Expectation Waltz"
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


%{
convert-ly (GNU LilyPond) 2.16.2  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0
%}
