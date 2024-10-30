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

%#################################### Melody ########################
melody = \relative c {
  \clef treble
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 4*1 a4  %lead in notes

  \repeat volta 2{
    \mark \default
    bf2 a4
    d2 e4
    f2.~
    f4 d e

    f4 d e
    f4 d f
    e2. ~ % (f4) %check if f  is correct
    e2 a,4|

    bf2 a4
    e'2 f4
    g2. ~
    g4 e f|  %12

    g4 e f
    g4 a bf
    a2.
    a8 [bf] a g f a,

    bf2 a4
    d2 e4
    f2.~
    f4 d e

    f4 e f
    g4 f g
    a2.~
    a4 bf a

    g2.~ g4 a g
    f2.~f4 g f
    e2 bf'4
    a2 cs,4

    d2.~
  }
  \alternative { { d2 a4}{d4 a' f } }
  \break
  \repeat volta 2{
    \mark \default
    a2.~
    a4 a f
    a2.~
    a4 bf g

    bf2.~   %38
    bf4 bf g
    bf2.~
    bf4 e, f|

    g2.~
    g4 f g
    a2.~
    a4 g f

    e4. a8 bf a
    cs,4. a'8 bf a

  }
  \alternative {
    {
      d,2.~
      d4 a' f
    }
    {
      d2.~
      d4 d'4. c8
    }
  }
  \break
  \repeat volta 2{
    \mark \default
    c2.~
    c4 bf g
    a8. a16 a4 r|
    r4 ef'4. d8

    d2.~
    d4 c a
    bf8. bf16 bf4 r|
    r4 g a

    bf2.~
    bf4 g   d'
    c2.~
    c4 a f

    c4. d8 e g
    d'2 c4
  }
  \alternative {
    {
      f,2.~
      f4 d'4. c8
    }
    {
      f,4 g gs
      a2 a,4
    }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies =\chordmode {
  s4
  d4*5:m

  a4:7
  d4*9:m
  e4*3:7
  a4*6:7
  g4*3:m6
  a4*3:7
  g4*3:m6
  a4*3:7
  g4*3:m6
  a4*3:7
  d4*3:m

  a4*3:7
  d4*5:m
  a4:7
  d4*5:m

  a4:7
  d4*3:m
  c4*3:7
  f4*3 % r2

  d4*3:7
  g4*3:m
  a4*3:7
  d4*6:m

  g4*3:m6
  a4*3:7
  d4*5:m

  a4:7
  d4*3:m
  %B
  d4*12:m

  g4*12:m
  g4*3:m6
  a4*3:7
  d4*6:m

  g4*3:m6
  a4*3:7
  d4*12:m

  %c
  c4*6:7

  f4*6

  d4*6:7

  g4*6:m

  g4*3:m7
  c4*3:7
  f4*6
  %f2

  c4*6:7

  f4*9

  a4*3:7


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
    title= "Expectation Waltz"
    subtitle=""
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


%{
convert-ly (GNU LilyPond) 2.16.2  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0
%}
