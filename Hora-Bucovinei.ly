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
  \key g \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    d8  fs fs
    fs8 r16 d16 ef c|
    d8 g g
    g r16 bf a g|

    d8 fs fs
    fs8 r16 d16 ef c|
    cs'8 d d
    cs r16 bf a g

    d8 fs fs
    fs8 r16 d16 ef c|
    d8 g g
    g r16 a bf c|

    d8 r16 ef c d|
    bf8 r16 c a bf
    %g4.~
  }
  \alternative {
    {
      g4.~
      g8 r16 bf a g
    }
    {
      g8 d d
      cs8. bf16 a bf
    }
  }
  \break
  \repeat volta 2{
    \mark \default
    g'8   r bf
    d8 r g
    bf4.~
    bf8 r16 a bf b

    c8. bf16 c g-4|
    fs8.-3 ef16-2 d c-4
    cs8-1 d-1 d|
    cs8. bf16 a bf

    g8.-1 a16 bf cs|
    d8. fs16-3 g a
    bf4.~
    bf8 r16 a bf b

    c8 r16 bf a g|
    fs8 r16 d e fs
    g8 r16 d bf' a
  }
  \alternative {
    {g8 r16 d, ef fs }
    {g'8 r16 f g a }
  }
  \break


  \repeat volta 3{
    \mark \default
    bf8.  a16 a g
    g8. f16 f ef|
    ef8. d16 d c
    c8. bf16 a bf

    b8 c c
    f8. ef16 f ef
    d4.-1~
    d8 r16 f-3 g a

    bf8 r16 c a bf|
    g8-4 r16 a f-3 g
    ef8.-2 d16 d c-4|
    g'8 r16 a, bf c

    d8 r16 ef c d
    bf8 r16 c a bf|
    g4.~
  }
  \alternative{
    {g8 r16 f' g a}
    {g,8 r16 bf a g}
    {g4.^\markup \italic fine}
  }
  << { e'4 f g a } \\ { c,4 d e f } >>

}
harmony = \relative  c'{
  \repeat unfold 24{s4}
  d4
}


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  %A part
  d8 s8*5
  g8:m s8*5
  d8 s8*5
  g8:m s8*2
  %a8:7 s8*2
  ef8*3:7
  d8 s8*5
  g8:m s8*5
  d8 s8*5
  g8*9:m
  ef16*3:7 d16*3:7
  %B part
  g8:m s8*11
  c8*6:m
  g8*3:m
  ef16*3:7 d16*3:7
  g8*9:m
  ef8*3:7
  c8*3:m
  d8*3
  g8*3:m
  ef16*3:7 d16*3:7
  g16*3:m f16*3
  %C part
  bf8 s8*2
  ef8*3
  c8*3:m
  bf8 s8*2
  f8:7 s8*5
  bf16*9 f16*3
  bf8*3
  ef8*3
  c8*6:m
  d8*6:7
  g16*9:m f16*3
  g8*3:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
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
    instrument = "Violin"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
