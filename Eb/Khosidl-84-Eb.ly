\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }



melody = \relative c' {
  \clef treble

  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    fis16 e dis e fis4
    fis16 e dis e fis4
    g8 fis16 g ais8 g16 ais
    b8 ais16 b cis b ais g

    fis16 e dis e fis4
    fis16 e g fis e4
    cis'16 b ais g ais g fis e
    g8 fis4 fis8
  }

  \repeat volta 2{
  \mark \default
    fis8 b b b
    ais16 b cis d cis8. b16
    fis'8 b,  b b
    ais16 b cis ais b4

    a8 d d d
    cis16 d e fis e8. cis16
    fis8. d16 fis8. d16
    eis16 fis gis fis eis d cis b
  }

  \repeat volta 2{
  \mark \default
    d4.\p  e16 fis
    d4. e16 fis
    d8 e16 fis d8 e16 fis
    g16 fis e d fis8 d

    fis4. g16 a
    fis4. g16 a
    fis8 g16 a fis8 g16 a
    b16 a g fis a8 fis


    fis8\f fis e16 d cis b
    d4. b8
    fis'8 fis e16 d cis d
    b4. d8

    fis8 fis e16 d cis b
    d4. b8
  }

  \alternative {
    {
      fis'8 fis e16 d cis d
      b8 ais b cis
    }{
      fis8 fis e16 d cis b
      b2
    }
  }

}

harmonies = \chordmode {
  b2*2:m %r2
  e2:m
  fis2:7
  b2*2:m %r2
  e4:m fis4*3 %r2
  %b
  b4*7:m %r4*5
  a4
  d2*2 % r2
  fis2
  fis2:7
  %c
  b2*4:m %r2*3
  fis2*4
  %r2*3
  b4:m fis4
  b4*3:m
  %r4
  fis4*4
  %r4*3
  fis2:7
  b4:m
  fis2
  b2:m
  fis2
  b2:m

  %{ old chords
    revised 8.16.11
  d2:m
  r4*2 g4:m a4 d2:m  d2:m r4 g4:m
  r2 a2

  %b section
  d2:m  r4*5 c4 f2
  r2 a2:7 r2

  %c section
  d2:m  r2*3
  a2:7
  r2*3
  d2:m
  r2*5
  a2:7
  d2:m
  a2:7
  d2:m
  %}
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
    title= "Kossidl 84"
    arranger=""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
