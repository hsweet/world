
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
melody =  \relative c'' {
  \clef "treble" \key e \minor \time 3/8 \repeat volta 2 {

    ds8 [ e8 fs8 ] | % 2
    b,8.-> [ g'16 fs16 e16 ] | % 3
    ds8 [ e8 fs8 ] | % 4
    b,8.-> [ g'16 fs16 e16 ] | % 5
    ds8 [ e8 fs8 ] |
    b8. [ g16 fs16 e16 ] | % 7
    ds8. [ c16 b16 a16 ] | % 8
    b4.
  }

  fs'8 [ g8 fs8 ] |
  g8. [ fs16 fs16 e16 ] | % 11
  e8. [ fs16 g16 b16 ] |
  as8.   \startTrillSpan [ g16 \stopTrillSpan fs16 e16 ] | % 13

  e8 [ fs8 e8 ] | % 14
  fs8. [ e16 e16 ds16 ] | % 15

  ds4. ~ | % 16
  ds4. | % 17

  fs8 [ g8 a8 ] | % 18
  fs8. [ g16 fs16 e16 ] |
  ds8 [ e8 fs8 ] |
  ds8. [ b16 ds16 e16 ] | % 21
  fs8. [ e16 e16 ds16 ] | % 22
  ds8. [ c16 b16 a16 ] | % 23
  b4. ~ | % 24
  b4. | % 25

  fs'8 [ g8 fs8 ] | % 26
  g8. [ fs16 fs16 e16 ] | % 27
  e8. [ fs16 g16 b16 ] | % 28

  as8.  \startTrillSpan [ g16 fs16 \stopTrillSpan e16 ] | % 29
  e8 [ fs8 e8 ] |
  fs8. [ e16 e16 ds16 ] | % 31

  ds4. ~ | % 32
  ds4. | % 33

  fs8 [ g8 a8 ] | % 34
  g8 [ a8 b8 ] | % 35

  c8  [ a8 fs8 ] | % 36
  ds8. [ e16 e16 fs16 ] | % 37
  | % 37
  fs8. [ e16 e16 ds16 ] | % 38
  ds8. [ c16 b16 a16 ] | % 39
  b4. ~ |
  b4. \bar "|."
}

harmonies =  \chordmode {

  b8*15
  e8*3:m
  b8*6
  %b
  e8*9:m
  fs8*3
  e8*6:m
  b8*6
  fs8*6:m
  b8*18
  e8*9:m
  fs8*9
  b8*6
  e8*6:m
  a8*3:m
  b8*15

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
