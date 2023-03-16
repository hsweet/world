\version "2.18.0"
\language "english"
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
    d8 d fs 16 ef d ef
    fs8 fs a16 g fs ef
    fs g a8 a16 g g fs
    fs d ef fs ef d c b
    c8 c' c16 bf bf a

    a8 g16 fs g fs g bf
    bf a a8 a4 ~
    a2

    d,8 d fs 16 ef d ef
    fs8 fs a16 g fs ef
    fs g a8 a16 g g fs
    fs d ef fs ef d c b
    c8 c' c16 bf bf a
    a8 g16 fs fs c d ef
    ef16 d d8 d4 ~
    d2

    %
  }
  \break
  %B part
  {
    \mark \default
    d'8 c16 b c8 d
    d c16 b c8 bf16 a
    c8 bf16 a bf8 a16 g
    fs16 d ef fs ef d c b
    c8 c' c16 bf bf a
    a g g fs g fs g bf
    bf a a8 a4
    a4. d8
    d8 c16 b c8 d
    d c16 b c8 bf16 a
    c8 bf16 a bf8 a16 g
    fs16 d ef fs ef d c b
    c8 c' c16 bf bf a
    a g g fs fs c df ef
    ef d d8 d4
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
    d' b c a b g a fs
    g4. g8
  }
  \break
  %D Part
  \repeat volta 2{
    \mark \default
    fs4 g
    a bf
    a8 a bf4
    a16 bf c bf a g fs ef
    fs4 g
    a bf
    a16 bf c bf a g fs ef
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
