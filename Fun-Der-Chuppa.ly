\version "2.16.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global

  \partial 8 g8

  \repeat volta 2{
   \mark \default
    c8. [ c16 ] c16 [ d16 f16 fs16 ] | % 2
    fs16 [ g16 g8 ] g8 [ g8 ] | % 3
    bf16 [ a16 g8 ] g16 [ fs16 ef8 ] | % 4
    g16 [ fs16 ef8 ] ef16 [ d16 c8 ] | % 5
    c4 d8. [ fs16 ] | % 6
    fs8 [ g8 ] g8 [ g8 ] | % 7
    c4. g8 | % 8
    c8 [ bf8 ] a8 [ g8 ] | % 9
    c,8. [ c16 ] c16 [ d16 ef16 fs16 ] | \barNumberCheck #10
    fs16 [ g16 g8 ] g8 [ g8 ] | % 11
    bf16 [ a16 g8 ] g16 [ fs16 ef8 ] | % 12
    g16 [ fs16 ef8 ] ef16 [ d16 c8 ] | % 13
    bf'16 [ a16 bf16 a16 ] bf16 [ a16 g8 ] | % 14
    c8 [ bf16 a16 ] g16 [ fs16 ef8 ] | % 15
    g8 [ fs16 ef16 ] fs16 [ ef16 d16 ef16 ] }
  \alternative {
    {c4. g8 }
    {c4. g'8 }
  }
 \break
  \repeat volta 2{
   \mark \default
    c4. g8 | % 19
    | % 19
    c4. g8 | \barNumberCheck #20
    c8 [ g8 ] c8 [ g8 ] | % 21
    c8 [ c8 ] c4 | % 22
    c8 [ bf8 ] a8 [ g8 ] | % 23
    fs8. [ ef16 ] fs16 [ ef16 d16 c16 ] | % 24
    c'8 [ bf8 ] a8 [ g8 ] | % 25
    fs8 g4. | % 26
    c8 [ bf8 ] a8 [ g8 ] | % 27
    fs8. [ ef16 ] fs16 [ ef16 d16 c16 ] | % 28
    | % 28
    d8 [ d8 ] ef16 [ d16 d16 b16 ] | % 29
    | % 29
    c2 }

   \break
   \repeat volta 2{
   \mark \default

    \key a \minor | \barNumberCheck #30
    e8 [ g8 ] g16 [ f16 f16 e16 ] | % 31
    e8 [ g8 ] g16 [ f16 f16 e16 ] | % 32
    g16 [ f16 g16 a16 ] bf16 [ a16 g16 f16 ] | % 33
    g2 | % 34
    | % 34
    e8 [ g8 ] g16 [ f16 f16 e16 ] | % 35
    | % 35
    f4. fs8 | % 36
    | % 36
    a16 [ g16 fs16 ef16 ] fs16 [ ef16 d16 ef16 ] | % 37
    | % 37
    c2 }
   }


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s8
  c2*14:m
  g2*2
  %b
  c2*11:m
  g2 c2:m
  %c
  c2*5
  f2:m
  g2
  c2:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \with {
      instrumentName = "Violin"} \melody
  >>
  \header{
    title= "Fun Der Chuppa"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{ }
}