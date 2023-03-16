\version "2.18.0"
\language "english"


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

melody =  \relative c' {

  \clef treble
  \key c \major
  \time 2/4
  r8   a  a  a | % 2
  a  e16  a  c4 | % 3
  r8   c  c  c | % 4
  c  a16  c  e4 | % 5
  r8   e  e  e | % 6
  a  e  c  d | % 7
  e4  d | % 8
  a8  d  c4 | % 9
  r8   a  a  a    | % 10
  a  e16  a  c4 | % 11
  r8   c  c  c | % 12
  c  a16  c  e4 | % 13
  r8   e  e  e | % 14
  a  e  c  d | % 15
  e4  d | % 16
  a2
  \repeat volta 2 {
    c8  d4  c8 | % 18
    c4  b8  a | % 19
    a4  e | % 20
    a2   | % 21
    e'8  f4  e8 | % 22
    e4  d8  c | % 23
    c4  g | % 24
    c2 | % 25
    ef8  d  d  c | % 26
    c  b  b  a | % 27
    a  a  d  c16  b | % 28
    c4.  d8 | % 29
    ef  d  d  c | % 30
    c  b  b  a | % 31
    a  e'  ds  e   | % 32
    a,2
    \repeat volta 2 {
      e' | % 34
      e | % 35
      e4  e | % 36
      e2 | % 37
      e8  d16  e  d8  c | % 38
      f  f  e4 | % 39
      e8  d16  e  d8  c | % 40
      f  f  e4 | % 41
      d8  g4  f16  e | % 42
      d8  g4  f16  e     | % 43
      d8  e  f  g | % 44
      e2
    }


  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  a4:m
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
