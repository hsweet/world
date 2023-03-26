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

  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a'16 g fs g a4
    a16 g fs g a4
    bf8 a16 bf cs8 bf16 cs
    d8 cs16 d e d cs bf

    a16 g fs g a4
    a16 g bf a g4
    e'16 d cs bf cs bf a g
    bf8 a4 a8
  }

  \repeat volta 2{
  \mark \default
    a8 d d d
    cs16 d e f e8. d16
    a'8 d,  d d
    cs16 d e cs d4

    c8 f f f
    e16 f g a g8. e16
    a8. f16 a8. f16
    gs16 a b a gs f e d
  }

  \repeat volta 2{
  \mark \default
    f4.\p  g16 a
    f4. g16 a
    f8 g16 a f8 g16 a
    bf16 a g f a8 f

    a4. bf16 c
    a4. bf16 c
    a8 bf16 c a8 bf16 c
    d16 c bf a c8 a


    a8\f a g16 f e d
    f4. d8
    a'8 a g16 f e f
    d4. f8

    a8 a g16 f e d
    f4. d8
  }

  \alternative {
    {
      a'8 a g16 f e f
      d8 cs d e
    }{
      a8 a g16 f e d
      d2
    }
  }

}

harmonies = \chordmode {
  d2*2:m %r2
  g2:m
  a2:7
  d2*2:m %r2
  g4:m a4*3 %r2
  %b
  d4*7:m %r4*5
  c4
  f2*2 % r2
  a2
  a2:7
  %c
  d2*4:m %r2*3
  a2*4
  %r2*3
  d4:m a4
  d4*3:m
  %r4
  a4*4
  %r4*3
  a2:7
  d4:m
  a2
  d2:m
  a2
  d2:m

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
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Kossidl 84"
instrument= "Violin"
    arranger=""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
