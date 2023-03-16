\version "2.18.0"
\language "english"
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

melody = \relative c'' {
  \clef treble

  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 8 a8   %lead in

  \repeat volta 2{
  \mark \default
    d 
    c4 b8|
    d8 c4.|
    c8 d-. d-. d-.
    a4. c8
    e8. e16 e8 e|
    e8 d c d
    c2 g8 f e c
    e8. e16 e8 e|
    e8 d c d
    c2~c2
  }


  \repeat volta 2{
  \mark \default
    g8 c4 e8
    g4. f16 e
    d4(d8)c16 b
    a4 g c8 d d c
    c8 g a bf
    a2~a2

  }

  \repeat volta 2{
  \mark \default
    a'4 a
    a a
    a8 g bf a
    g f e f
    d2~d2
    g4 g
    g4 g
    g8 f a g
    f8 e d e
    c2~c2
  }

  \repeat volta 2{
  \mark \default
    g8 c4 e8
    g4. f16 e
    d4(d8)c16 b
    a4 g c8 d d c
    c8 g a bf
    a2~a2
  }
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  %A
  s8
  a2*2:m %r2
  d2:m a2:m c2 g2
  c2*3 % r2*2
  g2
  c2*2 % r2
  %B
  c2*2 %r2
  d2:m g2 c2 g2:m
  a2*2:m %r2
  %C
  a2*4:m %r2*3
  d2*2:m %r2
  g2*4 %r2*3
  c2*2 % r2
  %d
  c2*2 % r2
  d2:m g2 c2 g2:m
  a2*2:m %r2
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
