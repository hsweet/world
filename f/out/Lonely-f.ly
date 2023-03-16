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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  e8. g16 b4 b
  b8. e16 b2
  a8. g16 a4 b
  g8. fs16 e2
  \break
  e'8. b16 e4 b
  c8. b16 a2|
  d8. c16 b4 a
  b2.
  \break
  d8. c16 b4 a
  b8. a16 g2
  fs8. e16 g4 fs
  e2.
  \break
  e8. g16 b4 b
  b8. e16 b2
  a8. g16 a4 b
  e,2.
  \break
  e'8. b16 e4 fs
  g8. fs16 e4. e8
  d8. b16 d4 e
  fs2.
  \break
  e8. d16 b4 a
  e8. a16 g4. g8
  fs8. e16 g4 fs e2.

}
%################################# Lyrics #####################
\addlyrics{
  Key -- ner veys nit vos ikh zog,
  Key -- ner veys nit vos ikh vil
  Zi -- bn mayz -- lekh mit a moyz
  Shlo -- fn oy -- fn dil
  Zi -- bn mayz -- lekh mit a moyz
  Shlo -- fn oy -- fn dil
  Zi -- bn mayz -- lekh mit a moyz,
  Zen -- en, dukht zich, akht
  Tu ikh on dem kap -- e -- lush
  Un zog: a gu -- te nakht.
  Tu ikh on dem kap -- e -- lush
  Un zog: a gu -- te nakht.
}
%################################# Chords #######################
harmonies = \chordmode {
  e4*6:m
  a4*3:m
  e4*4:m
  e2:7
  a4*3:m
  d4*3:7
  g4*3
  d4*3
  e4*3:m
  a4:m
  b2:7
  e4*9:m
  a4*3:m
  e4*5:m
  a4:m
  c4*3
  g4*2
  e4:m
  b4*3:7
  c4*3
  e4*3:m
  a4:m
  b2:7
  e4*3:m
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
    title= "Lonely"
    subtitle=" איינזאמ"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment  120/4)
    }

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
