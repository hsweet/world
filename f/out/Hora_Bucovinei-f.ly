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
  \key d \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    a8  cs cs
    cs8 r16 a16 bf g|
    a8 d d
    d r16 f e d|

    a8 cs cs
    cs8 r16 a16 bf g|
    gs'8 a a
    gs r16 f e d

    a8 cs cs
    cs8 r16 a16 bf g|
    a8 d d
    d r16 e f g|

    a8 r16 bf g a|
    f8 r16 g e f
    %g4.~
  }
  \alternative {
    {
      d4.~
      d8 r16 f e d
    }
    {
      d8 a a
      gs8. f16 e f
    }
  }
  \break
  \repeat volta 2{
    \mark \default
    d'8   r f
    a8 r d
    f4.~
    f8 r16 e f fs

    g8. f16 g d-4|
    cs8.-3 bf16-2 a g-4
    gs8-1 a-1 a|
    gs8. f16 e f

    d8.-1 e16 f gs|
    a8. cs16-3 d e
    f4.~
    f8 r16 e f fs

    g8 r16 f e d|
    cs8 r16 a b cs
    d8 r16 a f' e
  }
  \alternative {
    {d8 r16 a, bf cs }
    {d'8 r16 c d e }
  }
  \break


  \repeat volta 3{
    \mark \default
    f8.  e16 e d
    d8. c16 c bf|
    bf8. a16 a g
    g8. f16 e f

    fs8 g g
    c8. bf16 c bf
    a4.-1~
    a8 r16 c-3 d e

    f8 r16 g e f|
    d8-4 r16 e c-3 d
    bf8.-2 a16 a g-4|
    d'8 r16 e, f g

    a8 r16 bf g a
    f8 r16 g e f|
    d4.~
  }
  \alternative{
    {d8 r16 c' d e}
    {d,8 r16 f e d}
    {d4.^\markup \italic fine}
  }
  << { b'4 c d e } \\ { g,4 a b c } >>

}
harmony = \relative  c'{
  \repeat unfold 24{s4}
  a4
}


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  %A part
  a8 s8*5
  d8:m s8*5
  a8 s8*5
  d8:m s8*2
  %a8:7 s8*2
  bf8*3:7
  a8 s8*5
  d8:m s8*5
  a8 s8*5
  d8*9:m
  bf16*3:7 a16*3:7
  %B part
  d8:m s8*11
  g8*6:m
  d8*3:m
  bf16*3:7 a16*3:7
  d8*9:m
  bf8*3:7
  g8*3:m
  a8*3
  d8*3:m
  bf16*3:7 a16*3:7
  d16*3:m c16*3
  %C part
  f8 s8*2
  bf8*3
  g8*3:m
  f8 s8*2
  c8:7 s8*5
  f16*9 c16*3
  f8*3
  bf8*3
  g8*6:m
  a8*6:7
  d16*9:m c16*3
  d8*3:m
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
