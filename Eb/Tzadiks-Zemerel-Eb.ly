\version "2.18.0"


\header{
  title= "Tzadik's Zemerel"
  subtitle=""
  composer= ""
  instrument =""
  arranger= ""
}
\paper{
  tagline = ##f
  #print-all-headers  ##t
  #(set-paper-size "letter")
}
%\markup{ Got something to say? }

melody =  \relative c'' {

  \clef treble
  \key d \major
  \time 2/4
  r8   b  b  b | % 2
  b  fis16  b  d4 | % 3
  r8   d  d  d | % 4
  d  b16  d  fis4 | % 5
  r8   fis  fis  fis | % 6
  b  fis  d  e | % 7
  fis4  e | % 8
  b8  e  d4 | % 9
  r8   b  b  b    | % 10
  b  fis16  b  d4 | % 11
  r8   d  d  d | % 12
  d  b16  d  fis4 | % 13
  r8   fis  fis  fis | % 14
  b  fis  d  e | % 15
  fis4  e | % 16
  b2
  \repeat volta 2 {
    d8  e4  d8 | % 18
    d4  cis8  b | % 19
    b4  fis | % 20
    b2   | % 21
    fis'8  g4  fis8 | % 22
    fis4  e8  d | % 23
    d4  a | % 24
    d2 | % 25
    f8  e  e  d | % 26
    d  cis  cis  b | % 27
    b  b  e  d16  cis | % 28
    d4.  e8 | % 29
    f  e  e  d | % 30
    d  cis  cis  b | % 31
    b  fis'  eis  fis   | % 32
    b,2
    \repeat volta 2 {
      fis' | % 34
      fis | % 35
      fis4  fis | % 36
      fis2 | % 37
      fis8  e16  fis  e8  d | % 38
      g  g  fis4 | % 39
      fis8  e16  fis  e8  d | % 40
      g  g  fis4 | % 41
      e8  a4  g16  fis | % 42
      e8  a4  g16  fis     | % 43
      e8  fis  g  a | % 44
      fis2
    }


  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  b4:m
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
