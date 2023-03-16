
\version "2.18.0"
\include "english.ly"
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
melody =  \relative c' {
  \clef "treble" \key d \minor \time 3/8 \repeat volta 2 {

    cs8 [ d8 e8 ] | % 2
    a,8.-> [ f'16 e16 d16 ] | % 3
    cs8 [ d8 e8 ] | % 4
    a,8.-> [ f'16 e16 d16 ] | % 5
    cs8 [ d8 e8 ] |
    a8. [ f16 e16 d16 ] | % 7
    cs8. [ bf16 a16 g16 ] | % 8
    a4.
  }

  e'8 [ f8 e8 ] |
  f8. [ e16 e16 d16 ] | % 11
  d8. [ e16 f16 a16 ] |
  gs8.   \startTrillSpan [ f16 \stopTrillSpan e16 d16 ] | % 13

  d8 [ e8 d8 ] | % 14
  e8. [ d16 d16 cs16 ] | % 15

  cs4. ~ | % 16
  cs4. | % 17

  e8 [ f8 g8 ] | % 18
  e8. [ f16 e16 d16 ] |
  cs8 [ d8 e8 ] |
  cs8. [ a16 cs16 d16 ] | % 21
  e8. [ d16 d16 cs16 ] | % 22
  cs8. [ bf16 a16 g16 ] | % 23
  a4. ~ | % 24
  a4. | % 25

  e'8 [ f8 e8 ] | % 26
  f8. [ e16 e16 d16 ] | % 27
  d8. [ e16 f16 a16 ] | % 28

  gs8.  \startTrillSpan [ f16 e16 \stopTrillSpan d16 ] | % 29
  d8 [ e8 d8 ] |
  e8. [ d16 d16 cs16 ] | % 31

  cs4. ~ | % 32
  cs4. | % 33

  e8 [ f8 g8 ] | % 34
  f8 [ g8 a8 ] | % 35

  bf8  [ g8 e8 ] | % 36
  cs8. [ d16 d16 e16 ] | % 37
  | % 37
  e8. [ d16 d16 cs16 ] | % 38
  cs8. [ bf16 a16 g16 ] | % 39
  a4. ~ |
  a4. \bar "|."
}

harmonies =  \chordmode {

  a8*15
  d8*3:m
  a8*6
  %b
  d8*9:m
  e8*3
  d8*6:m
  a8*6
  e8*6:m
  a8*18
  d8*9:m
  e8*9
  a8*6
  d8*6:m
  g8*3:m
  a8*15

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
    title= "Goldensteyn Hora"
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
%{ The score definition
\new Staff <<
    \set Staff.
    \context ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
    \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>
%}
