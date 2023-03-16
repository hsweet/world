
\version "2.20.0"
\include "english.ly"
% automatically converted from Moldavian Hora.xml

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }


melody=   \relative c'' {
  \set Score.markFormatter = #format-mark-box-alphabet
  \clef "treble" \key a \minor \time 3/8
  \repeat volta 2 {
    \mark \default
    a8 e4 | % 2
    a8 e4 | % 3
    d8 c4 | % 4
    b8 a4 | % 5
    d8 c4 | % 6

    d8. [ e16 f16 d16 ] | % 7

    e4. ( | % 8
    e8. ) [ d16 c16 b16 ] | % 9
    a'8 e4 |
    a8 e4 | % 11
    d8 c4 | % 12
    b8 a4 | % 13

    d8 c4 | % 14

    b8. [ a16 b16 c16 ] | % 15

    a8. [ a'16 e16 c16 ] | % 16
    a4. \break
  }
  \repeat volta 2 {
    | % 17
    \mark \default
    a16 [ d16 ] fs4 | % 18
    fs8. [ d16 e16 fs16 ] | % 19
    a8 g4 |
    g4. | % 21
    fs4 g8 | % 22
    a4 b8 | % 23
    a4. ( | % 24
    a16 ) [ g16 fs8 e8 ] | % 25
    d8 fs4 | % 26
    fs8. [ d16 e16 fs16 ] | % 27
    a8 g4 | % 28
    g4. | % 29

    g8. [ f16 e16 f16 ] |
    g8. [ f16 e16 f16 ] | % 31

    e4. ( | % 32
    e4. )
  }
}

harmonies =  \chordmode {
  a8:m
  s4*7
  d8.:m
  s8.
  e4.*2:7
  %r4.
  a4.*4:m
  %r4.*3
  d4.:m
  e4.:7
  a8.:m
  e8.:7
  a4.:m
  %part B
  d4.*2 % r4.
  g4.*2 %r4.
  d4.*6 % r4.*5
  g4.*2 % r4.
  f4.*2 % r4.
  e4.*2:7 %r4.

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
  \header{
    title= "Moldavian Hora"
    subtitle=""
    composer= ""
    instrument =""
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
