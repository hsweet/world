\version "2.18.0"
\language "english"
\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")
}

\header{
  title= "Hora"
  subtitle="Merlin"
  composer= ""
  instrument =""
  arranger= ""
}
ending = { g8. g'16 d bf g4. }
melody =  \transpose c d \relative c' {
  \clef treble
  \key d \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    d4 g8
    bf4 d8
    cs8 d d
    d4.

    f8. e16 d cs
    cs8. bf16 bf a
    cs8 d d
    d4.
    d,4 g8
    bf4 d8
    cs4.~
    cs8. cs16 d e
    f8. e16 d cs
    cs8. bf16 a bf
    \ending

  }


  \repeat volta 2{
  \mark \default
    d'8  g e
    f8. f16 e d
    cs8 f e
    d8. cs16 cs bf
    cs8 d cs
    cs8. bf16 bf g
    d'4.~ g4.
    d8  g e
    f8. f16 e d
    cs8 f e
    d8. cs16 cs bf
    cs8 d cs
    bf8. a16 a bf
    \ending

  }

  \repeat volta 2{
  \mark \default
    cs8  d cs16 bf
    cs8 d4
    g,8. g16 a bf
    cs8. bf16 a g
    cs8 d cs16 bf
    cs8 d4
    d8. d16 e f
    g8. f16 e d
    cs8 d cs16 bf
    cs8 d4
    g,8. g16 a bf
    c4.
    bf8. a16 g bf
    a8. g16 fs a
    \ending

  }
}

harmonies = \chordmode {
  g4.:m
  s4.*3
  d4.:m
  a4.
  g4.:m
  s4.*3
  a4. a4.
  d4.:m
  a4.
  g4.:m s4.
  %part 2
  g4.:m
  d4.:m
  a4.
  s4.*3
  g4.:m
  g4.:m
  g4.:m
  d4.:m
  a4.
  s4.*2
  g4.:m
  s4.*2
  %part3
  a4. s4.
  g4.:m
  a4.
  s4.*2
  g4.:m
  s4.
  a4. s4.
  g4.:m
  c4.:m
  g4.:m
  d4.
  g4.:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{indent = 1.0\cm}
  \midi { }
}
