\version "2.18.0"
\language "english"
\paper{
  tagline = "hsweet/lilypond"
  %print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Kolemeike"
  composer= "Beregovski"
  arranger = ""

}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
melody = \relative c' {
  \clef treble
  \key g \major
  \time 2/4
  \partial 16*3 e16 a c
  \repeat volta 2{
    e16  c b a e'  c b a
    e'16  c b a e'  c b a
    b16 c ds e ds c b a
    ds8  e  ~ e4

    e16 c b a e' c b a
    e'16 c b a e' c b a \breathe
    b c ds e ds c b a
    a4 ~ a16 e a c
    \break
  }
  \repeat volta 2{
    g'8  g ~ g16 fs a g
    fs8  fs ~ fs16e g fs
    e8 -3 e ~ e16 e fs e %gis b c
    ds8. ds16 e c b a %12

    b16 c ds e ds c b a
    ds8 e ~ e4
    g8 g ~ g16 fs a g
    fs8 fs ~ fs16e g fs%16

    e8 -3 e ~ e16 e fs e%gis b c
    ds8. c16 ds c b a
    b16 c ds e ds c b c
    a2%20
  }
  \repeat volta 2{
    e16 a c e e, a c e
    e,16 a c e ds c b a
    e16 a c e ds c b a
    ds 8 e ~ e4

    g16  fs a g fs e g fs
    e16 ds fs e d c b a
    b16 c ds e ds c b c
    a2
    \break
  }
}

harmonies = \chordmode {
  {
    {s16*3}
    a2*6:m
    %r2*5
    e2:7
    a2
  }{
    g2 d2
    a2*4:m
    %r2*3
    g2 d2 a2*2:m

    e2:7 a2:m
  }{
    a2*6:m
    %r2*5
    e2:7
    a2:m
  }

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
