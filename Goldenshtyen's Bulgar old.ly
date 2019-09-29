
\version "2.18.0"
% automatically converted from Goldenshtyen's Bulgar.xml
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
\header {
  copyright = "Harry Sweet"
  encodingdate = "2010-01-04"
  tagline = ""
  title = "Goldenshteyn's Bulgar"
  composer = "Di Naye Kapelye"

}

\layout {
  \context {
    \Score
    skipBars = ##t
    autoBeaming = ##f
  }
}
PartPOneVoiceOne =  \relative d'' {
  \clef "treble" \key g \minor \time 2/4 \
  repeat volta 2 {
    d8 [ bes'8 ] a8 [ g8 ] | % 2
    fis4 es8 [ d8 ] | % 3
    g2 ~ | % 4
    g2 | % 5
    d8 [ bes'8 ] a8 [ g8 ] | % 6
    fis4 es8 [ d8 ] | % 7
    c2 ~ | % 8
    c2 | % 9
    c16 [ c16 bes8 ] c8 [ d8 ] | \barNumberCheck #10
    es8 [ d8 ] c8 r8 | % 11
    g'16 [ g16 fis8 ] g8 [ a8 ] | % 12
    bes8 [ a8 ] g8 r8 | % 13
    fis4 g4 | % 14
    fis4 es4 | % 15
    d2 ~ | % 16
    d2
  }
  | % 17
  f16 [ g16 g16 a16 ] a4 ( | % 18
  a4 ) d4 ( | % 19
  d4 ) r4 | \barNumberCheck #20
  a8 [ g16 g16 ] g8 [ f8 ] | % 21
  a8 [ g16 g16 ] g8 [ f8 ] | % 22
  a8 [ g16 g16 ] g8 [ f16 f16 ] | % 23
  f8 [ es16 es16 ] es8 [ d8 ] | % 24
  c2 | % 25
  c4. c16 [ c16 ] | % 26
  bis8 [ c8 ] d8 [ es8 ] | % 27
  d8 [ c8 ] r8 g'16 [ g16 ] | % 28
  fis8 [ g8 ] a8 [ bes8 ] | % 29
  a8 [ g8 ] r8 r8 | \barNumberCheck #30
  fis4 g4 | % 31
  a4 g4 | % 32
  d2 | % 33
  R2*8 \bar "|."
}


% The score definition
\new Staff <<
  \set Staff.
  \context Staff <<
  \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
>>
>>

