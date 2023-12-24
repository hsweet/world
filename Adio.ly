\version "2.18.0"
\language "english"
%\pointAndClickOff

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\tempo 1/4=72
\markup{ Tango Mood }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \mark \default
  f4 e8 d cs d e f|
  d2. r8 d|
  g4. a8 bf c bf(a)
  a1
  \repeat volta 2{
  \mark \default
    bf4 bf8 bf bf a g f|
    % e2. e4|
    e2. \tuplet 3/2 {e8 f g}|
  }
  \alternative {
    {
      a4. bf8 a (g f \prall g)|
      a2. r4|
    }
    {
      a4. bf8 a (g f g)\fermata|
    }
  }
  d1~
  d2 r4 r8 a
  %end part
  \break
  \repeat volta 2{
  \mark \default
    \mark \default
    f'4. g8 f2~
    f4 d8 e f4 d|
    f4.(g8)f2~
    f4 d8 e f4. d8|

    e4.(f8) e2~
    e8 cs cs d e4 f

  }
  \alternative {
    {d1~ d2 r4 r8 a }{d1 \fermata }
  }

}
%################################# Lyrics #####################
\addlyrics{
  Tu mad -- re kuan -- do te par -- io
  I te ki -- to al mun -- do
  Ko -- ra -- son e -- ya no -- te dio
  Pa -- ra a -- mar se -- gun -- do
  mar se -- gun -- do
  A -- di -- yo
  a - di -- yo ke -- ri -- da
  no ke -- ro la vi -- da
  Me I'am -- ar -- ga -- tes tu
  a -- tu

}
%################################# Chords #######################

secund = \relative c'{
  \key d \minor

  %begin part
  a4  f'4. e8 d [cs]|
  d e d2.|
  r8 d g4. a8 bf [a]|
  g8 bf a2.|
  \repeat volta 2{
  \mark \default
    g8 a bf2 g4~
    g8 e e2.|
    a8 bf a4. g8 f4|

  }
  \alternative {
    {
      g4 a2.
    }
    {
      e4 d2.
    }
  }
  %end part

  %add 2 empty measures for now..
  s1
  %B part, Chorus

  r2 r4 r8 a8
  \repeat volta 2{
  \mark \default
    f'2  d2~
    %d4  d8 e f4 e8 d|
    d4 g8 f e4 d|
    f2 d2~|
    d4 g8 f e4 d|
    %d4 e8 f g4

    bf2 a2~|
    %a8 a8 d e4
    a8 e' e f g4 f


  }
  \alternative{
    {
      g2 f2~
      f2 r4 r8 a,
    }
    {<<f'1 a \fermata >>  }
  }
}
harmonies = \chordmode {
  d2:m
  a2
  d1:m
  g1:m
  d1:m
  g1:m
  a1
  a1:7
  d2:m
  d2:7
  a1
  %second part
  d1:m
  s1*5
  a1*2
  d1:m
  a1
  d1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
    \new Staff \secund
  >>
  \header{
    title= "Adio Kerida"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
