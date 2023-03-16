\version "2.18.0"
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
ending = { e'8. e''16 b g' e'4. }
melody =  \transpose a b \relative c'' {
  \clef treble
  \key b \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b4 e8
    g4 b8
    ais8 b b
    b4.

    d8. cis16 b ais
    ais8. g16 g fis
    ais8 b b
    b4.
    b,4 e8
    g4 b8
    ais4.~
    ais8. ais16 b cis
    d8. cis16 b ais
    ais8. g16 fis g
    \ending

  }


  \repeat volta 2{
  \mark \default
    b'8  e cis
    d8. d16 cis b
    ais8 d cis
    b8. ais16 ais g
    ais8 b ais
    ais8. g16 g e
    b'4.~ e4.
    b8  e cis
    d8. d16 cis b
    ais8 d cis
    b8. ais16 ais g
    ais8 b ais
    g8. fis16 fis g
    \ending

  }

  \repeat volta 2{
  \mark \default
    ais8  b ais16 g
    ais8 b4
    e,8. e16 fis g
    ais8. g16 fis e
    ais8 b ais16 g
    ais8 b4
    b8. b16 cis d
    e8. d16 cis b
    ais8 b ais16 g
    ais8 b4
    e,8. e16 fis g
    a4.
    g8. fis16 e g
    fis8. e16 dis fis
    \ending

  }
}

harmonies = \chordmode {
  e4.:m
  s4.*3
  b4.:m
  fis4.
  e4.:m
  s4.*3
  fis4. fis4.
  b4.:m
  fis4.
  e4.:m s4.
  %part 2
  e4.:m
  b4.:m
  fis4.
  s4.*3
  e4.:m
  e4.:m
  e4.:m
  b4.:m
  fis4.
  s4.*2
  e4.:m
  s4.*2
  %part3
  fis4. s4.
  e4.:m
  fis4.
  s4.*2
  e4.:m
  s4.
  fis4. s4.
  e4.:m
  a4.:m
  e4.:m
  b4.
  e4.:m
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
