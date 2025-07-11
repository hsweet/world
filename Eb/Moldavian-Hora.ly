
\version "2.20.0"
\include "english.ly"
\pointAndClickOff
% automatically converted from Moldavian Hora.xml

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }


melody=   \relative c' {
  \set Score.markFormatter = #format-mark-box-alphabet
  \clef "treble" \key d \minor \time 3/8
  \repeat volta 2 {
    \mark \default
    d8 a4 | % 2
    d8 a4 | % 3
    g8 f4 | % 4
    e8 d4 | % 5
    g8 f4 | % 6

    g8. [ a16 bf16 g16 ] | % 7

    a4. ( | % 8
    a8. ) [ g16 f16 e16 ] | % 9
    d'8 a4 |
    d8 a4 | % 11
    g8 f4 | % 12
    e8 d4 | % 13

    g8 f4 | % 14

    e8. [ d16 e16 f16 ] | % 15

    d8. [ d'16 a16 f16 ] | % 16
    d4. \break
  }
  \repeat volta 2 {
    | % 17
    \mark \default
    d16 [ g16 ] b4 | % 18
    b8. [ g16 a16 b16 ] | % 19
    d8 c4 |
    c4. | % 21
    b4 c8 | % 22
    d4 e8 | % 23
    d4. ( | % 24
    d16 ) [ c16 b8 a8 ] | % 25
    g8 b4 | % 26
    b8. [ g16 a16 b16 ] | % 27
    d8 c4 | % 28
    c4. | % 29

    c8. [ bf16 a16 bf16 ] |
    c8. [ bf16 a16 bf16 ] | % 31

    a4. ( | % 32
    a4. )
  }
}

harmonies =  \chordmode {
  d8:m
  s4*7
  g8.:m
  s8.
  a4.*2:7
  %r4.
  d4.*4:m
  %r4.*3
  g4.:m
  a4.:7
  d8.:m
  a8.:7
  d4.:m
  %part B
  g4.*2 % r4.
  c4.*2 %r4.
  g4.*6 % r4.*5
  c4.*2 % r4.
  bf4.*2 % r4.
  a4.*2:7 %r4.

}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Moldavian Hora"
    subtitle=""
    composer= ""
    instrument = "Eb"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}



%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
