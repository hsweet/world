\version "2.18.0"


\header{
  title= "Skotchne"
  subtitle=""
  composer= ""
  %instrument ="violin"
  arranger= ""
}

\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")
}

melody = \relative c' {
  \clef treble
  \key a \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    fis8  b fis b
    fis b d16 cis b8
    d16 cis b8 cis d
    eis8 fis4.

    fis,8 b fis b
    fis b d16 cis b8
    d16 cis b8 cis d
  }

  \alternative { { b2 }{b4. fis'8 } }

  \repeat volta 2{
  \mark \default
    eis8  fis gis a
    gis fis4.
    fis8 eis4.
    eis8 d4.
    a'16 gis fis8 fis16 eis d8
    fis16 eis d8
    d16 cis b8
    b2 (b'4.)fis8

    eis8  fis gis a
    gis cis4.
    b8 a gis fis
    eis d4.

    a'16 gis fis8 fis16 eis d8
    fis16 eis d8
    d16 cis b8
    b2 (b2)
    %sheet has a low 1/4 note d. mistake?
    fis'8  b, cis d
    e d cis b
    d cis d e
    fis2

    a8 gis fis eis
    fis eis fis gis
    a gis fis eis fis2
    eis8  fis gis a
    gis cis4.
    b8 a gis fis
    eis d4.
    a'16 gis fis8 fis16 eis d8
    fis16 eis d8
    d16 cis b8
    b2 (b2)




  }

  \alternative { { }{ } }

}

harmonies = \chordmode {
  a4:m
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
