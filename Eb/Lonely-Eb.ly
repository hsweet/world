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
  \key fs \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  fs8. a16 cs4 cs
  cs8. fs16 cs2
  b8. a16 b4 cs
  a8. gs16 fs2
  \break
  fs'8. cs16 fs4 cs
  d8. cs16 b2|
  e8. d16 cs4 b
  cs2.
  \break
  e8. d16 cs4 b
  cs8. b16 a2
  gs8. fs16 a4 gs
  fs2.
  \break
  fs8. a16 cs4 cs
  cs8. fs16 cs2
  b8. a16 b4 cs
  fs,2.
  \break
  fs'8. cs16 fs4 gs
  a8. gs16 fs4. fs8
  e8. cs16 e4 fs
  gs2.
  \break
  fs8. e16 cs4 b
  fs8. b16 a4. a8
  gs8. fs16 a4 gs fs2.

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
  fs4*6:m
  b4*3:m
  fs4*4:m
  fs2:7
  b4*3:m
  e4*3:7
  a4*3
  e4*3
  fs4*3:m
  b4:m
  cs2:7
  fs4*9:m
  b4*3:m
  fs4*5:m
  b4:m
  d4*3
  a4*2
  fs4:m
  cs4*3:7
  d4*3
  fs4*3:m
  b4:m
  cs2:7
  fs4*3:m
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
