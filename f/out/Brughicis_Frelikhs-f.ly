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
  \key a \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  %&A section
  \repeat volta 2{
    \mark \default
    a8 a cs 16 bf a bf
    cs8 cs e16 d cs bf
    cs d e8 e16 d d cs
    cs a bf cs bf a g fs
    g8 g' g16 f f e

    e8 d16 cs d cs d f
    f e e8 e4 ~
    e2

    a,8 a cs 16 bf a bf
    cs8 cs e16 d cs bf
    cs d e8 e16 d d cs
    cs a bf cs bf a g fs
    g8 g' g16 f f e
    e8 d16 cs cs g a bf
    bf16 a a8 a4 ~
    a2

    %
  }
  \break
  %B part
  {
    \mark \default
    a'8 g16 fs g8 a
    a g16 fs g8 f16 e
    g8 f16 e f8 e16 d
    cs16 a bf cs bf a g fs
    g8 g' g16 f f e
    e d d cs d cs d f
    f e e8 e4
    e4. a8
    a8 g16 fs g8 a
    a g16 fs g8 f16 e
    g8 f16 e f8 e16 d
    cs16 a bf cs bf a g fs
    g8 g' g16 f f e
    e d d cs cs g af bf
    bf a a8 a4
  }
  \break
  %C Part
  \repeat volta 2{
    \mark \default
    d8 fs fs e16 d
    d e fs g fs8 e16 d
    d e fs d e fs g e
    fs g a b a g fs e
    d8 fs fs e16 d
    d e fs g fs8 e16 d
    a' fs g e fs d e cs
    d4. d8
  }
  \break
  %D Part
  \repeat volta 2{
    \mark \default
    cs4 d
    e f
    e8 e f4
    e16 f g f e d cs bf
    cs4 d
    e f
    e16 f g f e d cs bf
    a2

  }
}

harmonies = \chordmode {
  {
    a2*4
    g:m
    s2
    a2
    {a2*3}
    g2*5:m

    a2
  }{
    a2*10:m
    e2:7
    a2:m
  }{
    a2*6:m
    e2:7
    a2:m
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
