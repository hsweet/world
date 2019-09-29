\version "2.18.0"
\paper{
  tagline = ##f
  %#print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "The Bride's Waltz"
  subtitle="(Played by Deborah Straus)"
  composer= "Petru Zigeuuer"
  %arranger= "Jeff Warschuer"
}

melody = \relative c' {
  \clef treble
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \repeat volta 2{
  \mark \default
    a'2.\upbow
    
    d2.
    \grace f16 e8-2 d cis d e f
    e f d4 d
    a2.
    d2.
    \grace f16 e8 d  cis bes a g
    a8 bes a4 a
    a2.
    d2.
    \grace f16 e8 d cis d e f
    e f d4 d
    a'2 c4
    b8 c a4 fis
    a2.
    <a d>2.
  }

  \repeat volta 2{
  \mark \default
    d4     a a
    gis8 a f2
    gis8 a f4 f
    e8 f d2
    a'2 d4
    b8 c a4 gis
    a2.~
    a2.
    d4 a a
    gis8 a f2
    gis8 a f4 f
    e8 f d2
    f4-3 e8 f d4
    e4 d8 e cis4
    d-1 d8 a f'-3 e
    d4 d8 e f a
  }

  \repeat volta 2{
  \mark \default
    c8    b c b c b
    c d c4 b
    a8 gis a gis a gis
    a b a4 gis
    a4 a8 gis a f
    f4 f8 e e d
    gis b a2
    a8 d a2
    c8 b c b c b
    c d c4 b
    a8 gis a gis a gis
    a b a4 gis
    a4 a8 gis a f
    f4 f8 e e d

  }
  \alternative { {d4 d8 e f a} {d,2.} }

}

harmonies = \chordmode {

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
