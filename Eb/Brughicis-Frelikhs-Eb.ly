\version "2.18.0"
\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Boughicis Frelekhs"
  %subtitle="(Yevrieskaya Melodie)"
  %composer= "Naye Kapele"
  %arranger= "H. Sweet"
}

melody = \relative c'' {
  \clef treble
  \key b \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  %&A section
  \repeat volta 2{
    \mark \default
    b8 b dis 16 c b c
    dis8 dis fis16 e dis c
    dis e fis8 fis16 e e dis
    dis b c dis c b a gis
    a8 a' a16 g g fis

    fis8 e16 dis e dis e g
    g fis fis8 fis4 ~
    fis2

    b,8 b dis 16 c b c
    dis8 dis fis16 e dis c
    dis e fis8 fis16 e e dis
    dis b c dis c b a gis
    a8 a' a16 g g fis
    fis8 e16 dis dis a b c
    c16 b b8 b4 ~
    b2

    %
  }
  \break
  %B part
  {
    \mark \default
    b'8 a16 gis a8 b
    b a16 gis a8 g16 fis
    a8 g16 fis g8 fis16 e
    dis16 b c dis c b a gis
    a8 a' a16 g g fis
    fis e e dis e dis e g
    g fis fis8 fis4
    fis4. b8
    b8 a16 gis a8 b
    b a16 gis a8 g16 fis
    a8 g16 fis g8 fis16 e
    dis16 b c dis c b a gis
    a8 a' a16 g g fis
    fis e e dis dis a bes c
    c b b8 b4
  }
  \break
  %C Part
  \repeat volta 2{
    \mark \default
    e8 gis gis fis16 e
    e fis gis a gis8 fis16 e
    e fis gis e fis gis a fis
    gis a b cis b a gis fis
    e8 gis gis fis16 e
    e fis gis a gis8 fis16 e
    b' gis a fis gis e fis dis
    e4. e8
  }
  \break
  %D Part
  \repeat volta 2{
    \mark \default
    dis4 e
    fis g
    fis8 fis g4
    fis16 g a g fis e dis c
    dis4 e
    fis g
    fis16 g a g fis e dis c
    b2

  }
}

harmonies = \chordmode {
  {
    b2*4
    a:m
    s2
    b2
    {b2*3}
    a2*5:m

    b2
  }{
    b2*10:m
    fis2:7
    b2:m
  }{
    b2*6:m
    fis2:7
    b2:m
  }
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
