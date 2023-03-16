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
  \key b \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 4*2 r8 fs8 g as   %lead in notes

  \repeat volta 2{
    \mark \default
    b4. cs8 d e
    fs4. e16 fs \tuplet 3/2{g8 fs e}|
    d4. cs8 d16 e c8
    b2\breathe e4|

    g4 g8 fs g fs
    g4. a8 \tuplet 3/2{g [fs e]}
    fs4. b8 as b
    fs4.\breathe fs,8 \tuplet 3/2{fs [g as]}|

    b4. cs8 d e
    fs4. e16 fs \tuplet3/2{g8 fs e}
    d4. cs8 [d16 e c8]|
    b2\breathe \tuplet3/2 {a8 b cs}

    d4 d8 cs d cs
    d4 e d8 cs|
    b4. b'8 fs d

  }
  \alternative {
    { b4. fs8 \tuplet 3/2{fs[gs as]}}
    { b4. b8 d fs}
  }


  \repeat volta 2{
    \mark \default
    b4  b b
    b2.
    a4(fs)b
    a8 a(fs4)b
    a8 g fs g a b|

    e,4. g8 fs e
    d4 (b)e
    d4 (b)e
    d8 cs b cs d e

    a,2\breathe \tuplet3/2{a8 b cs}|
    d4 fs fs|
    fs16 g fs8 e4. d8|
    e8 f e f e f|
    e4. d8 \tuplet3/2{d[cs b]}

    b'4. fs8 \tuplet3/2{g [fs e]}|
    d4. cs8 \tuplet3/2{d [e c]}
    b4.\breathe b'8 fs d

  }
  \alternative {
    {b4. b8 d fs }
    {b,2. }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s2
  b4*5:m
  e4:m
  b4*2:m a4:m
  b4*3:m
  e4*6:m
  b4*11:m
  e4:m
  b4*2:m  a4:m
  b2:m a4
  d4*6
  b4*15:m
  %b
  d4*9
  e4*3:m
  b2:m e4:m
  b2:m e4:m
  b4*5
  a4
  d4*6
  e4*6
  b2:m e4:m
  b2:m a4:m
  b4:m

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
