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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  a8. c16 e4 e
  e8. a16 e2
  d8. c16 d4 e
  c8. b16 a2
  \break
  a'8. e16 a4 e
  f8. e16 d2|
  g8. f16 e4 d
  e2.
  \break
  g8. f16 e4 d
  e8. d16 c2
  b8. a16 c4 b
  a2.
  \break
  a8. c16 e4 e
  e8. a16 e2
  d8. c16 d4 e
  a,2.
  \break
  a'8. e16 a4 b
  c8. b16 a4. a8
  g8. e16 g4 a
  b2.
  \break
  a8. g16 e4 d
  a8. d16 c4. c8
  b8. a16 c4 b a2.

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
  a4*6:m
  d4*3:m
  a4*4:m
  a2:7
  d4*3:m
  g4*3:7
  c4*3
  g4*3
  a4*3:m
  d4:m
  e2:7
  a4*9:m
  d4*3:m
  a4*5:m
  d4:m
  f4*3
  c4*2
  a4:m
  e4*3:7
  f4*3
  a4*3:m
  d4:m
  e2:7
  a4*3:m
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
    title= "Lonely"
    subtitle=" איינזאמ"
    composer= ""
    instrument = "Violin"
    arranger= ""
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
