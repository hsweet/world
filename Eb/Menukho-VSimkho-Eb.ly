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

melody = \relative c'' {
  \clef treble

  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \partial 8 b8   %lead in

  \repeat volta 2{
  \mark \default
    e
    d4 cis8|
    e8 d4.|
    d8 e-. e-. e-.
    b4. d8
    fis8. fis16 fis8 fis|
    fis8 e d e
    d2 a8 g fis d
    fis8. fis16 fis8 fis|
    fis8 e d e
    d2~d2
  }


  \repeat volta 2{
  \mark \default
    a8 d4 fis8
    a4. g16 fis
    e4(e8)d16 cis
    b4 a d8 e e d
    d8 a b c
    b2~b2

  }

  \repeat volta 2{
  \mark \default
    b'4 b
    b b
    b8 a c b
    a g fis g
    e2~e2
    a4 a
    a4 a
    a8 g b a
    g8 fis e fis
    d2~d2
  }

  \repeat volta 2{
  \mark \default
    a8 d4 fis8
    a4. g16 fis
    e4(e8)d16 cis
    b4 a d8 e e d
    d8 a b c
    b2~b2
  }
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  %A
  s8
  b2*2:m %r2
  e2:m b2:m d2 a2
  d2*3 % r2*2
  a2
  d2*2 % r2
  %B
  d2*2 %r2
  e2:m a2 d2 a2:m
  b2*2:m %r2
  %C
  b2*4:m %r2*3
  e2*2:m %r2
  a2*4 %r2*3
  d2*2 % r2
  %d
  d2*2 % r2
  e2:m a2 d2 a2:m
  b2*2:m %r2
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
