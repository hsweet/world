\version "2.18.0"
\paper{
  tagline = ##f
  #print-all-headers  ##t
  #(set-paper-size "letter")
}

\header{
  title= "Menukho V'Simkho"
  subtitle=" "
  composer= " "
  instrument =""
  arranger= " "
}

%\markup{ Got something to say? }

melody = \relative c' {
  \clef treble

  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 8 d'8   %lead in

  \repeat volta 2{
  \mark \default
    g 
    f4 e8|
    g8 f4.|
    f8 g-. g-. g-.
    d4. f8
    a8. a16 a8 a|
    a8 g f g
    f2 c8 bes a f
    a8. a16 a8 a|
    a8 g f g
    f2~f2
  }


  \repeat volta 2{
  \mark \default
    c8 f4 a8
    c4. bes16 a
    g4(g8)f16 e
    d4 c f8 g g f
    f8 c d ees
    d2~d2

  }

  \repeat volta 2{
  \mark \default
    d'4 d
    d d
    d8 c ees d
    c bes a bes
    g2~g2
    c4 c
    c4 c
    c8 bes d c
    bes8 a g a
    f2~f2
  }

  \repeat volta 2{
  \mark \default
    c8 f4 a8
    c4. bes16 a
    g4(g8)f16 e
    d4 c f8 g g f
    f8 c d ees
    d2~d2
  }
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  %A
  s8
  d2*2:m %r2
  g2:m d2:m f2 c2
  f2*3 % r2*2
  c2
  f2*2 % r2
  %B
  f2*2 %r2
  g2:m c2 f2 c2:m
  d2*2:m %r2
  %C
  d2*4:m %r2*3
  g2*2:m %r2
  c2*4 %r2*3
  f2*2 % r2
  %d
  f2*2 % r2
  g2:m c2 f2 c2:m
  d2*2:m %r2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>

  \layout{indent = 1.0\cm}
  \midi { }
}
