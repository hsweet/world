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

melody = \relative c' {
  \clef treble
  \key d \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  %&A section
  \repeat volta 2{
    \mark \default
    d8 d fis 16 ees d ees
    fis8 fis a16 g fis ees
    fis g a8 a16 g g fis
    fis d ees fis ees d c b
    c8 c' c16 bes bes a

    a8 g16 fis g fis g bes
    bes a a8 a4 ~
    a2

    d,8 d fis 16 ees d ees
    fis8 fis a16 g fis ees
    fis g a8 a16 g g fis
    fis d ees fis ees d c b
    c8 c' c16 bes bes a
    a8 g16 fis fis c d ees
    ees16 d d8 d4 ~
    d2

    %
  }
  \break
  %B part
  {
    \mark \default
    d'8 c16 b c8 d
    d c16 b c8 bes16 a
    c8 bes16 a bes8 a16 g
    fis16 d ees fis ees d c b
    c8 c' c16 bes bes a
    a g g fis g fis g bes
    bes a a8 a4
    a4. d8
    d8 c16 b c8 d
    d c16 b c8 bes16 a
    c8 bes16 a bes8 a16 g
    fis16 d ees fis ees d c b
    c8 c' c16 bes bes a
    a g g fis fis c des ees
    ees d d8 d4
  }
  \break
  %C Part
  \repeat volta 2{
    \mark \default
    g8 b b a16 g
    g a b c b8 a16 g
    g a b g a b c a
    b c d e d c b a
    g8 b b a16 g
    g a b c b8 a16 g
    d' b c a b g a fis
    g4. g8
  }
  \break
  %D Part
  \repeat volta 2{
    \mark \default
    fis4 g
    a bes
    a8 a bes4
    a16 bes c bes a g fis ees
    fis4 g
    a bes
    a16 bes c bes a g fis ees
    d2

  }
}

harmonies = \chordmode {
  {
    d2*4
    c:m
    s2
    d2
    {d2*3}
    c2*5:m

    d2
  }{
    d2*10:m
    a2:7
    d2:m
  }{
    d2*6:m
    a2:7
    d2:m
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
