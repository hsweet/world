
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


melody=   \relative c''' {
  \set Score.markFormatter = #format-mark-box-alphabet
  \clef "treble" \key b \minor \time 3/8
  \repeat volta 2 {
    \mark \default
    b8 fs4 | % 2
    b8 fs4 | % 3
    e8 d4 | % 4
    cs8 b4 | % 5
    e8 d4 | % 6

    e8. [ fs16 g16 e16 ] | % 7

    fs4. ( | % 8
    fs8. ) [ e16 d16 cs16 ] | % 9
    b'8 fs4 |
    b8 fs4 | % 11
    e8 d4 | % 12
    cs8 b4 | % 13

    e8 d4 | % 14

    cs8. [ b16 cs16 d16 ] | % 15

    b8. [ b'16 fs16 d16 ] | % 16
    b4. \break
  }
  \repeat volta 2 {
    | % 17
    \mark \default
    b16 [ e16 ] gs4 | % 18
    gs8. [ e16 fs16 gs16 ] | % 19
    b8 a4 |
    a4. | % 21
    gs4 a8 | % 22
    b4 cs8 | % 23
    b4. ( | % 24
    b16 ) [ a16 gs8 fs8 ] | % 25
    e8 gs4 | % 26
    gs8. [ e16 fs16 gs16 ] | % 27
    b8 a4 | % 28
    a4. | % 29

    a8. [ g16 fs16 g16 ] |
    a8. [ g16 fs16 g16 ] | % 31

    fs4. ( | % 32
    fs4. )
  }
}

harmonies =  \chordmode {
  b8:m
  s4*7
  e8.:m
  s8.
  fs4.*2:7
  %r4.
  b4.*4:m
  %r4.*3
  e4.:m
  fs4.:7
  b8.:m
  fs8.:7
  b4.:m
  %part B
  e4.*2 % r4.
  a4.*2 %r4.
  e4.*6 % r4.*5
  a4.*2 % r4.
  g4.*2 % r4.
  fs4.*2:7 %r4.

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
