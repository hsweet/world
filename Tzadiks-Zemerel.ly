\version "2.24.0"
\language "english"
%\pointAndClickOff


\header{
  title= "Tzadik's Zemerel"
  subtitle=""
  composer= ""
  instrument = "Violin"
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
  \key f \major
  \time 2/4
  r8   d  d  d | % 2
  d  a16  d  f4 | % 3
  r8   f  f  f | % 4
  f  d16  f  a4 | % 5
  r8   a  a  a | % 6
  d  a  f  g | % 7
  a4  g | % 8
  d8  g  f4 | % 9
  r8   d  d  d    | % 10
  d  a16  d  f4 | % 11
  r8   f  f  f | % 12
  f  d16  f  a4 | % 13
  r8   a  a  a | % 14
  d  a  f  g | % 15
  a4  g | % 16
  d2
  \repeat volta 2 {
    f8  g4  f8 | % 18
    f4  e8  d | % 19
    d4  a | % 20
    d2   | % 21
    a'8  bf4  a8 | % 22
    a4  g8  f | % 23
    f4  c | % 24
    f2 | % 25
    af8  g  g  f | % 26
    f  e  e  d | % 27
    d  d  g  f16  e | % 28
    f4.  g8 | % 29
    af  g  g  f | % 30
    f  e  e  d | % 31
    d  a'  gs  a   | % 32
    d,2
    \repeat volta 2 {
      a' | % 34
      a | % 35
      a4  a | % 36
      a2 | % 37
      a8  g16  a  g8  f | % 38
      bf  bf  a4 | % 39
      a8  g16  a  g8  f | % 40
      bf  bf  a4 | % 41
      g8  c4  bf16  a | % 42
      g8  c4  bf16  a     | % 43
      g8  a  bf  c | % 44
      a2
    }


  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  d4:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>

  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}