\version "2.18.0"
\language "english"
\paper{
  tagline = ##f
  # print-all-headers ##t
  #(set-paper-size "letter")
}
\header{
  title= "Abe Schwartz Chusidl"
  %subtitle="(Yevrieskaya Melodie)"
  %composer= "Naye Kapele"
  instrument ="Violin"
  composer = ""
  %arranger= "H. Sweet"
}

melody = \relative c' {
  \clef treble
  \key d\minor
  \time 2/4
  %lead in notes

  \partial 8 e8

  \repeat volta 2{
    a8\upbow a  bf16 (a) bf (g) %slurs
    a8 a  bf16 (a)bf (g)
    fs8 g a bf
    cs8.\prall  bf16 cs16 bf a g
    a8 a  bf16 (a)bf (g)
    a8 a  bf16 (a)bf (g)
    fs16 g a bf
    cs d cs bf
    bf a (a4.)
  }
  %\tuplet 3/2 {  }

  \repeat volta 2{
    cs2  (e-1)
    \grace bf (a'4) e \grace d (cs) a
    cs8\prall bf16 cs bf8 a
    cs8\prall bf16 cs bf8 a
    r8 a cs16 bf cs16 e
    d4 d
    %\tuplet 3/2{fis8 g fis}
    %\tuplet 3/2{ees8 fis ees}
    cs16 d cs8
    bf16 cs bf8
    %\tuplet 3/2 {d8 ees d}c4\trill
    a16 bf a8 g4\trill

    \grace g fs16 g a bf
    cs d cs bf
    bf a (a4.)
  }
  %possible alternative ending
  r4^"alternative ending?" a8 a
  a bf c d
  e d c bf
  c bf a g
  a2
}

harmonies = \chordmode {
  s8 a4 g4:m a4 g4:m
  a8*10 %r8*4
  %r4
  g4:m a4 g4:m
  a2*2:


  %B section
  a2*8:
  %r2*6
  d2:m
  a4 g4:m a4 g4:m a2 a2

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
