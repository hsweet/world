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
melody = \relative c'' {
  \clef treble
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 4*2 r8 a,8 bf cs   %lead in notes

  \repeat volta 2{
    \mark \default
    d4. e8 f g
    a4. g16 a \tuplet 3/2{bf8 a g}|
    f4. e8 f16 g ef8
    d2\breathe g4|

    bf4 bf8 a bf a
    bf4. c8 \tuplet 3/2{bf [a g]}
    a4. d8 cs d
    a4.\breathe a,8 \tuplet 3/2{a [bf cs]}|

    d4. e8 f g
    a4. g16 a \tuplet3/2{bf8 a g}
    f4. e8 [f16 g ef8]|
    d2\breathe \tuplet3/2 {c8 d e}

    f4 f8 e f e
    f4 g f8 e|
    d4. d'8 a f

  }
  \alternative {
    { d4. a8 \tuplet 3/2{a[b cs]}}
    { d4. d8 f a}
  }


  \repeat volta 2{
    \mark \default
    d4  d d
    d2.
    c4(a)d
    c8 c(a4)d
    c8 bf a bf c d|

    g,4. bf8 a g
    f4 (d)g
    f4 (d)g
    f8 e d e f g

    c,2\breathe \tuplet3/2{c8 d e}|
    f4 a a|
    a16 bf a8 g4. f8|
    g8 af g af g af|
    g4. f8 \tuplet3/2{f[e d]}

    d'4. a8 \tuplet3/2{bf [a g]}|
    f4. e8 \tuplet3/2{f [g ef]}
    d4.\breathe d'8 a f

  }
  \alternative {
    {d4. d8 f a }
    {d,2. }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s2
  d4*5:m
  g4:m
  d4*2:m c4:m
  d4*3:m
  g4*6:m
  d4*11:m
  g4:m
  d4*2:m  c4:m
  d2:m c4
  f4*6
  d4*15:m
  %b
  f4*9
  g4*3:m
  d2:m g4:m
  d2:m g4:m
  d4*5
  c4
  f4*6
  g4*6
  d2:m g4:m
  d2:m c4:m
  d4:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "A Gitte Nacht Der Kolli Ind Dem Chusen"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= "Transcription, P. Rusefky based on Piano Roll Collected by Bob Berkman"
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
