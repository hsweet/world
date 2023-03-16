\version "2.18.0"
\include "english.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key e \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    b8  ds ds
    ds8 r16 b16 c a|
    b8 e e
    e r16 g fs e|

    b8 ds ds
    ds8 r16 b16 c a|
    as'8 b b
    as r16 g fs e

    b8 ds ds
    ds8 r16 b16 c a|
    b8 e e
    e r16 fs g a|

    b8 r16 c a b|
    g8 r16 a fs g
    %g4.~
  }
  \alternative {
    {
      e4.~
      e8 r16 g fs e
    }
    {
      e8 b b
      as8. g16 fs g
    }
  }
  \break
  \repeat volta 2{
    \mark \default
    e'8   r g
    b8 r e
    g4.~
    g8 r16 fs g gs

    a8. g16 a e-4|
    ds8.-3 c16-2 b a-4
    as8-1 b-1 b|
    as8. g16 fs g

    e8.-1 fs16 g as|
    b8. ds16-3 e fs
    g4.~
    g8 r16 fs g gs

    a8 r16 g fs e|
    ds8 r16 b cs ds
    e8 r16 b g' fs
  }
  \alternative {
    {e8 r16 b, c ds }
    {e'8 r16 d e fs }
  }
  \break


  \repeat volta 3{
    \mark \default
    g8.  fs16 fs e
    e8. d16 d c|
    c8. b16 b a
    a8. g16 fs g

    gs8 a a
    d8. c16 d c
    b4.-1~
    b8 r16 d-3 e fs

    g8 r16 a fs g|
    e8-4 r16 fs d-3 e
    c8.-2 b16 b a-4|
    e'8 r16 fs, g a

    b8 r16 c a b
    g8 r16 a fs g|
    e4.~
  }
  \alternative{
    {e8 r16 d' e fs}
    {e,8 r16 g fs e}
    {e4.^\markup \italic fine}
  }
  << { cs'4 d e fs } \\ { a,4 b cs d } >>

}
harmony = \relative  c''{
  \repeat unfold 24{s4}
  b4
}


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  %A part
  b8 s8*5
  e8:m s8*5
  b8 s8*5
  e8:m s8*2
  %a8:7 s8*2
  c8*3:7
  b8 s8*5
  e8:m s8*5
  b8 s8*5
  e8*9:m
  c16*3:7 b16*3:7
  %B part
  e8:m s8*11
  a8*6:m
  e8*3:m
  c16*3:7 b16*3:7
  e8*9:m
  c8*3:7
  a8*3:m
  b8*3
  e8*3:m
  c16*3:7 b16*3:7
  e16*3:m d16*3
  %C part
  g8 s8*2
  c8*3
  a8*3:m
  g8 s8*2
  d8:7 s8*5
  g16*9 d16*3
  g8*3
  c8*3
  a8*6:m
  b8*6:7
  e16*9:m d16*3
  e8*3:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
    %\new Staff \harmony
  >>
  \header{
    title= "Hora Bucovinei"
    subtitle="Moldavian Waltz"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
