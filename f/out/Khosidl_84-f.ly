\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }



melody = \relative c' {
  \clef treble

  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e16 d cs d e4
    e16 d cs d e4
    f8 e16 f gs8 f16 gs
    a8 gs16 a b a gs f

    e16 d cs d e4
    e16 d f e d4
    b'16 a gs f gs f e d
    f8 e4 e8
  }

  \repeat volta 2{
  \mark \default
    e8 a a a
    gs16 a b c b8. a16
    e'8 a,  a a
    gs16 a b gs a4

    g8 c c c
    b16 c d e d8. b16
    e8. c16 e8. c16
    ds16 e fs e ds c b a
  }

  \repeat volta 2{
  \mark \default
    c4.\p  d16 e
    c4. d16 e
    c8 d16 e c8 d16 e
    f16 e d c e8 c

    e4. f16 g
    e4. f16 g
    e8 f16 g e8 f16 g
    a16 g f e g8 e


    e8\f e d16 c b a
    c4. a8
    e'8 e d16 c b c
    a4. c8

    e8 e d16 c b a
    c4. a8
  }

  \alternative {
    {
      e'8 e d16 c b c
      a8 gs a b
    }{
      e8 e d16 c b a
      a2
    }
  }

}

harmonies = \chordmode {
  a2*2:m %r2
  d2:m
  e2:7
  a2*2:m %r2
  d4:m e4*3 %r2
  %b
  a4*7:m %r4*5
  g4
  c2*2 % r2
  e2
  e2:7
  %c
  a2*4:m %r2*3
  e2*4
  %r2*3
  a4:m e4
  a4*3:m
  %r4
  e4*4
  %r4*3
  e2:7
  a4:m
  e2
  a2:m
  e2
  a2:m

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
