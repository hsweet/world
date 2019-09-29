
\version "2.18.0"
% automatically converted from Montreal Hora.xml

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
  \clef "treble" \key g \minor \time 3/8 \repeat volta 2 {

    fis8 [ g8 a8 ] | % 2
    d,8. [ bes'16 a16 g16 ] | % 3
    fis8 [ g8 a8 ] | % 4
    d,8. [ bes'16 a16 g16 ] | % 5
    fis8 [ g8 a8 ] |
    d8. [ bes16 a16 g16 ] | % 7
    fis8. [ es16 d16 c16 ] | % 8
    d4.
  }

  a'8 [ bes8 a8 ] |
  bes8. [ a16 a16 g16 ] | % 11
  g8. [ a16 bes16 d16 ] |
  cis8.   \startTrillSpan [ bes16 \stopTrillSpan a16 g16 ] | % 13

  g8 [ a8 g8 ] | % 14
  a8. [ g16 g16 fis16 ] | % 15

  fis4. ~ | % 16
  fis4. | % 17

  a8 [ bes8 c8 ] | % 18
  a8. [ bes16 a16 g16 ] |
  fis8 [ g8 a8 ] |
  fis8. [ d16 fis16 g16 ] | % 21
  a8. [ g16 g16 fis16 ] | % 22
  fis8. [ es16 d16 c16 ] | % 23
  d4. ~ | % 24
  d4. | % 25

  a'8 [ bes8 a8 ] | % 26
  bes8. [ a16 a16 g16 ] | % 27
  g8. [ a16 bes16 d16 ] | % 28

  cis8.  \startTrillSpan [ bes16 a16 \stopTrillSpan g16 ] | % 29
  g8 [ a8 g8 ] |
  a8. [ g16 g16 fis16 ] | % 31

  fis4. ~ | % 32
  fis4. | % 33

  a8 [ bes8 c8 ] | % 34
  bes8 [ c8 d8 ] | % 35

  es8  [ c8 a8 ] | % 36
  fis8. [ g16 g16 a16 ] | % 37
  | % 37
  a8. [ g16 g16 fis16 ] | % 38
  fis8. [ es16 d16 c16 ] | % 39
  d4. ~ |
  d4. \bar "|."
}

harmonies =  \chordmode {

  d8:5 |
  s4*7 g8.:m5 |
  s8. d8.:5 |
  s16*9 g8:m5 |
  s1 a8.:5 | %
  s8. g8:m5 |
  s8*5 d4.:5 |
  s4. a8:m5 |
  s8*5 d8:5 |
  s8*17 g8:m5 |
  s1 a8.:5 |
  s16*15 d4.:5 | % 32
  s4. g8:m5 | % 34
  s8*11 d8.:5 | % 38
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
    composer= "KlezKanada"
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
