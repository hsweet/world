\version "2.18.0"
\language "english"
%moved \header into \score for includes to work

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
common = {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose a, b, \relative c' {
  \common
  \partial 16*3 e16 fs gs   %lead in notes

  \repeat volta 2{
  \mark \default
    a8  e4.
    f8. e16 d cs d ds
    e8 cs4 a'8
    g8. g16 f e d cs

    e2
    a8  e4.
    f8. e16 d cs d ds
    e8 cs4 e8

    d8 cs bf cs

    a2
  }

  %\alternative { { }{ } }


  \repeat volta 2{
  \mark \default
    fs'8  g g g
    g4(g8) f16 e
    e8 f f f
    f4(f8)e16 d

    e8 cs4.|
    r16 a' g f e d cs d
    e2|

    fs8 g g g
    bf4 a16 g f d
    e8 cs4 e8
    d8 cs bf cs
    a2
  }

  % \alternative { { }{ } }

}

%################################# Lyrics #####################
%\addlyrics{ Doe a deer }
%################################# Chords #######################
harmonies =  \transpose a, b, \chordmode {
  s16*3
  a2 d2:m a2 g2:m a2 a2 d2:m a2 g2:m a2
  %B section
  g2:m s2 d2:m s2 a2 g2:m a2 g2:m s2
  a2 g2:m a2
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
    title= "Gypsy"
    subtitle=""
    arranger=""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}


%{
convert-ly (GNU LilyPond) 2.14.2 Processing `'...  Applying
conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18,
2.13.20, 2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42,
2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0
%}
