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
  \key b \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \repeat volta 2{
  \mark \default
    fis2.\upbow

    b2.
    \grace d16 cis8-2 b ais b cis d
    cis d b4 b
    fis2.
    b2.
    \grace d16 cis8 b  ais g fis e
    fis8 g fis4 fis
    fis2.
    b2.
    \grace d16 cis8 b ais b cis d
    cis d b4 b
    fis'2 a4
    gis8 a fis4 dis
    fis2.
    <fis b>2.
  }

  \repeat volta 2{
  \mark \default
    b4     fis fis
    eis8 fis d2
    eis8 fis d4 d
    cis8 d b2
    fis'2 b4
    gis8 a fis4 eis
    fis2.~
    fis2.
    b4 fis fis
    eis8 fis d2
    eis8 fis d4 d
    cis8 d b2
    d4-3 cis8 d b4
    cis4 b8 cis ais4
    b-1 b8 fis d'-3 cis
    b4 b8 cis d fis
  }

  \repeat volta 2{
  \mark \default
    a8    gis a gis a gis
    a b a4 gis
    fis8 eis fis eis fis eis
    fis gis fis4 eis
    fis4 fis8 eis fis d
    d4 d8 cis cis b
    eis gis fis2
    fis8 b fis2
    a8 gis a gis a gis
    a b a4 gis
    fis8 eis fis eis fis eis
    fis gis fis4 eis
    fis4 fis8 eis fis d
    d4 d8 cis cis b

  }
  \alternative { {b4 b8 cis d fis} {b,2.} }

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
