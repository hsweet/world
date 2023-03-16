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
  \key a \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 4*1 e4  %lead in notes

  \repeat volta 2{
    \mark \default
    f2 e4
    a2 b4
    c2.~
    c4 a b

    c4 a b
    c4 a c
    b2. ~ % (f4) %check if f  is correct
    b2 e,4|

    f2 e4
    b'2 c4
    d2. ~
    d4 b c|  %12

    d4 b c
    d4 e f
    e2.
    e8 [f] e d c e,

    f2 e4
    a2 b4
    c2.~
    c4 a b

    c4 b c
    d4 c d
    e2.~
    e4 f e

    d2.~ d4 e d
    c2.~c4 d c
    b2 f'4
    e2 gs,4

    a2.~
  }
  \alternative { { a2 e4}{a4 e' c } }
  \break
  \repeat volta 2{
    \mark \default
    e2.~
    e4 e c
    e2.~
    e4 f d

    f2.~   %38
    f4 f d
    f2.~
    f4 b, c|

    d2.~
    d4 c d
    e2.~
    e4 d c

    b4. e8 f e
    gs,4. e'8 f e

  }
  \alternative {
    {
      a,2.~
      a4 e' c
    }
    {
      a2.~
      a4 a'4. g8
    }
  }
  \break
  \repeat volta 2{
    \mark \default
    g2.~
    g4 f d
    e8. e16 e4 r|
    r4 bf'4. a8

    a2.~
    a4 g e
    f8. f16 f4 r|
    r4 d e

    f2.~
    f4 d   a'
    g2.~
    g4 e c

    g4. a8 b d
    a'2 g4
  }
  \alternative {
    {
      c,2.~
      c4 a'4. g8
    }
    {
      c,4 d ds
      e2 e,4
    }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies =\chordmode {
  s4
  a4*5:m

  e4:7
  a4*9:m
  b4*3:7
  e4*6:7
  d4*3:m6
  e4*3:7
  d4*3:m6
  e4*3:7
  d4*3:m6
  e4*3:7
  a4*3:m

  e4*3:7
  a4*5:m
  e4:7
  a4*5:m

  e4:7
  a4*3:m
  g4*3:7
  c4*3 % r2

  a4*3:7
  d4*3:m
  e4*3:7
  a4*6:m

  d4*3:m6
  e4*3:7
  a4*5:m

  e4:7
  a4*3:m
  %B
  a4*12:m

  d4*12:m
  d4*3:m6
  e4*3:7
  a4*6:m

  d4*3:m6
  e4*3:7
  a4*12:m

  %c
  g4*6:7

  c4*6

  a4*6:7

  d4*6:m

  d4*3:m7
  g4*3:7
  c4*6
  %f2

  g4*6:7

  c4*9

  e4*3:7


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
