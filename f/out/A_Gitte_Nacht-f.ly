\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{Rubato }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key a \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 4*2 r8 e8 f gs   %lead in notes

  \repeat volta 2{
    \mark \default
    a4. b8 c d
    e4. d16 e \tuplet 3/2{f8 e d}|
    c4. b8 c16 d bf8
    a2\breathe d4|

    f4 f8 e f e
    f4. g8 \tuplet 3/2{f [e d]}
    e4. a8 gs a
    e4.\breathe e,8 \tuplet 3/2{e [f gs]}|

    a4. b8 c d
    e4. d16 e \tuplet3/2{f8 e d}
    c4. b8 [c16 d bf8]|
    a2\breathe \tuplet3/2 {g8 a b}

    c4 c8 b c b
    c4 d c8 b|
    a4. a'8 e c

  }
  \alternative {
    { a4. e8 \tuplet 3/2{e[fs gs]}}
    { a4. a8 c e}
  }


  \repeat volta 2{
    \mark \default
    a4  a a
    a2.
    g4(e)a
    g8 g(e4)a
    g8 f e f g a|

    d,4. f8 e d
    c4 (a)d
    c4 (a)d
    c8 b a b c d

    g,2\breathe \tuplet3/2{g8 a b}|
    c4 e e|
    e16 f e8 d4. c8|
    d8 ef d ef d ef|
    d4. c8 \tuplet3/2{c[b a]}

    a'4. e8 \tuplet3/2{f [e d]}|
    c4. b8 \tuplet3/2{c [d bf]}
    a4.\breathe a'8 e c

  }
  \alternative {
    {a4. a8 c e }
    {a,2. }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s2
  a4*5:m
  d4:m
  a4*2:m g4:m
  a4*3:m
  d4*6:m
  a4*11:m
  d4:m
  a4*2:m  g4:m
  a2:m g4
  c4*6
  a4*15:m
  %b
  c4*9
  d4*3:m
  a2:m d4:m
  a2:m d4:m
  a4*5
  g4
  c4*6
  d4*6
  a2:m d4:m
  a2:m g4:m
  a4:m

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
    title= "A Gitte Nacht Der Kolli Ind Dem Chusen"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "Transcription, P. Rusefky based on Piano Roll Collected by Bob Berkman"
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
