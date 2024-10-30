
\version "2.18.0"
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

    dis8 [ e8 fis8 ] | % 2
    b,8.-> [ g'16 fis16 e16 ] | % 3
    dis8 [ e8 fis8 ] | % 4
    b,8.-> [ g'16 fis16 e16 ] | % 5
    dis8 [ e8 fis8 ] |
    b8. [ g16 fis16 e16 ] | % 7
    dis8. [ c16 b16 a16 ] | % 8
    b4.
  }

  fis'8 [ g8 fis8 ] |
  g8. [ fis16 fis16 e16 ] | % 11
  e8. [ fis16 g16 b16 ] |
  ais8.   \startTrillSpan [ g16 \stopTrillSpan fis16 e16 ] | % 13

  e8 [ fis8 e8 ] | % 14
  fis8. [ e16 e16 dis16 ] | % 15

  dis4. ~ | % 16
  dis4. | % 17

  fis8 [ g8 a8 ] | % 18
  fis8. [ g16 fis16 e16 ] |
  dis8 [ e8 fis8 ] |
  dis8. [ b16 dis16 e16 ] | % 21
  fis8. [ e16 e16 dis16 ] | % 22
  dis8. [ c16 b16 a16 ] | % 23
  b4. ~ | % 24
  b4. | % 25

  fis'8 [ g8 fis8 ] | % 26
  g8. [ fis16 fis16 e16 ] | % 27
  e8. [ fis16 g16 b16 ] | % 28

  ais8.  \startTrillSpan [ g16 fis16 \stopTrillSpan e16 ] | % 29
  e8 [ fis8 e8 ] |
  fis8. [ e16 e16 dis16 ] | % 31

  dis4. ~ | % 32
  dis4. | % 33

  fis8 [ g8 a8 ] | % 34
  g8 [ a8 b8 ] | % 35

  c8  [ a8 fis8 ] | % 36
  dis8. [ e16 e16 fis16 ] | % 37
  | % 37
  fis8. [ e16 e16 dis16 ] | % 38
  dis8. [ c16 b16 a16 ] | % 39
  b4. ~ |
  b4. \bar "|."
}

harmonies =  \chordmode {

  b8*15
  e8*3:m
  b8*6
  %b
  e8*9:m
  fis8*3
  e8*6:m
  b8*6
  fis8*6:m
  b8*18
  e8*9:m
  fis8*9
  b8*6
  e8*6:m
  a8*3:m
  b8*15

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
  \header{
    title= "Goldensteyn Hora"
    subtitle=""
    composer= ""
    instrument = "Eb Instrument"
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
