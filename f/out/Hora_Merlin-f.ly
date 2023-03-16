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
ending = { d8. d'16 a f d4. }
melody =  \transpose g, a, \relative c' {
  \clef treble
  \key a \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a4 d8
    f4 a8
    gs8 a a
    a4.

    c8. b16 a gs
    gs8. f16 f e
    gs8 a a
    a4.
    a,4 d8
    f4 a8
    gs4.~
    gs8. gs16 a b
    c8. b16 a gs
    gs8. f16 e f
    \ending

  }


  \repeat volta 2{
  \mark \default
    a'8  d b
    c8. c16 b a
    gs8 c b
    a8. gs16 gs f
    gs8 a gs
    gs8. f16 f d
    a'4.~ d4.
    a8  d b
    c8. c16 b a
    gs8 c b
    a8. gs16 gs f
    gs8 a gs
    f8. e16 e f
    \ending

  }

  \repeat volta 2{
  \mark \default
    gs8  a gs16 f
    gs8 a4
    d,8. d16 e f
    gs8. f16 e d
    gs8 a gs16 f
    gs8 a4
    a8. a16 b c
    d8. c16 b a
    gs8 a gs16 f
    gs8 a4
    d,8. d16 e f
    g4.
    f8. e16 d f
    e8. d16 cs e
    \ending

  }
}

harmonies = \chordmode {
  d4.:m
  s4.*3
  a4.:m
  e4.
  d4.:m
  s4.*3
  e4. e4.
  a4.:m
  e4.
  d4.:m s4.
  %part 2
  d4.:m
  a4.:m
  e4.
  s4.*3
  d4.:m
  d4.:m
  d4.:m
  a4.:m
  e4.
  s4.*2
  d4.:m
  s4.*2
  %part3
  e4. s4.
  d4.:m
  e4.
  s4.*2
  d4.:m
  s4.
  e4. s4.
  d4.:m
  g4.:m
  d4.:m
  a4.
  d4.:m
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
