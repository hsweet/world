\version "2.18.0"
\language "english"
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
  \key a \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \repeat volta 2{
  \mark \default
    e2.\upbow
    
    a2.
    \grace c16 b8-2 a gs a b c
    b c a4 a
    e2.
    a2.
    \grace c16 b8 a  gs f e d
    e8 f e4 e
    e2.
    a2.
    \grace c16 b8 a gs a b c
    b c a4 a
    e'2 g4
    fs8 g e4 cs
    e2.
    <e a>2.
  }

  \repeat volta 2{
  \mark \default
    a4     e e
    ds8 e c2
    ds8 e c4 c
    b8 c a2
    e'2 a4
    fs8 g e4 ds
    e2.~
    e2.
    a4 e e
    ds8 e c2
    ds8 e c4 c
    b8 c a2
    c4-3 b8 c a4
    b4 a8 b gs4
    a-1 a8 e c'-3 b
    a4 a8 b c e
  }

  \repeat volta 2{
  \mark \default
    g8    fs g fs g fs
    g a g4 fs
    e8 ds e ds e ds
    e fs e4 ds
    e4 e8 ds e c
    c4 c8 b b a
    ds fs e2
    e8 a e2
    g8 fs g fs g fs
    g a g4 fs
    e8 ds e ds e ds
    e fs e4 ds
    e4 e8 ds e c
    c4 c8 b b a

  }
  \alternative { {a4 a8 b c e} {a,2.} }

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
