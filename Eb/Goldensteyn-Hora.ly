
\version "2.18.0"
\include "english.ly"
\pointAndClickOff
% automatically converted from Montreal Hora.xml
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }


\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}
melody =  \relative c {
  \clef "treble" \key g \minor \time 3/8 \repeat volta 2 {

    fs8 [ g8 a8 ] | % 2
    d,8.-> [ bf'16 a16 g16 ] | % 3
    fs8 [ g8 a8 ] | % 4
    d,8.-> [ bf'16 a16 g16 ] | % 5
    fs8 [ g8 a8 ] |
    d8. [ bf16 a16 g16 ] | % 7
    fs8. [ ef16 d16 c16 ] | % 8
    d4.
  }

  a'8 [ bf8 a8 ] |
  bf8. [ a16 a16 g16 ] | % 11
  g8. [ a16 bf16 d16 ] |
  cs8.   \startTrillSpan [ bf16 \stopTrillSpan a16 g16 ] | % 13

  g8 [ a8 g8 ] | % 14
  a8. [ g16 g16 fs16 ] | % 15

  fs4. ~ | % 16
  fs4. | % 17

  a8 [ bf8 c8 ] | % 18
  a8. [ bf16 a16 g16 ] |
  fs8 [ g8 a8 ] |
  fs8. [ d16 fs16 g16 ] | % 21
  a8. [ g16 g16 fs16 ] | % 22
  fs8. [ ef16 d16 c16 ] | % 23
  d4. ~ | % 24
  d4. | % 25

  a'8 [ bf8 a8 ] | % 26
  bf8. [ a16 a16 g16 ] | % 27
  g8. [ a16 bf16 d16 ] | % 28

  cs8.  \startTrillSpan [ bf16 a16 \stopTrillSpan g16 ] | % 29
  g8 [ a8 g8 ] |
  a8. [ g16 g16 fs16 ] | % 31

  fs4. ~ | % 32
  fs4. | % 33

  a8 [ bf8 c8 ] | % 34
  bf8 [ c8 d8 ] | % 35

  ef8  [ c8 a8 ] | % 36
  fs8. [ g16 g16 a16 ] | % 37
  | % 37
  a8. [ g16 g16 fs16 ] | % 38
  fs8. [ ef16 d16 c16 ] | % 39
  d4. ~ |
  d4. \bar "|."
}

harmonies =  \chordmode {

  d8*15
  g8*3:m
  d8*6
  %b
  g8*9:m
  a8*3
  g8*6:m
  d8*6
  a8*6:m
  d8*18
  g8*9:m
  a8*9
  d8*6
  g8*6:m
  c8*3:m
  d8*15

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
    title= "Goldensteyn Hora"
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
%{ The score definition
\new Staff <<
    \set Staff.
    \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
    \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>
%}
