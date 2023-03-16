\version "2.18.0"
\language "english"

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
melody = \relative c'' {
  \clef treble
  \key a \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \mark \default
  c4 b8 a gs a b c|
  a2. r8 a|
  d4. e8 f g f(e)
  e1
  \repeat volta 2{
  \mark \default
    f4 f8 f f e d c|
    % e2. e4|
    b2. \tuplet 3/2 {b8 c d}|
  }
  \alternative {
    {
      e4. f8 e (d c \prall d)|
      e2. r4|
    }
    {
      e4. f8 e (d c d)\fermata|
    }
  }
  a1~
  a2 r4 r8 e
  %end part
  \break
  \repeat volta 2{
  \mark \default
    \mark \default
    c'4. d8 c2~
    c4 a8 b c4 a|
    c4.(d8)c2~
    c4 a8 b c4. a8|

    b4.(c8) b2~
    b8 gs gs a b4 c

  }
  \alternative {
    {a1~ a2 r4 r8 e }{a1 \fermata }
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

secund = \relative c{
  \key a \minor

  %begin part
  e4  c'4. b8 a [gs]|
  a b a2.|
  r8 a d4. e8 f [e]|
  d8 f e2.|
  \repeat volta 2{
  \mark \default
    d8 e f2 d4~
    d8 b b2.|
    e8 f e4. d8 c4|

  }
  \alternative {
    {
      d4 e2.
    }
    {
      b4 a2.
    }
  }
  %end part

  %add 2 empty measures for now..
  s1
  %B part, Chorus

  r2 r4 r8 e8
  \repeat volta 2{
  \mark \default
    c'2  a2~
    %d4  d8 e f4 e8 d|
    a4 d8 c b4 a|
    c2 a2~|
    a4 d8 c b4 a|
    %d4 e8 f g4

    f2 e2~|
    %a8 a8 d e4
    e8 b' b c d4 c


  }
  \alternative{
    {
      d2 c2~
      c2 r4 r8 e,
    }
    {<<c'1 e \fermata >>  }
  }
}
harmonies = \chordmode {
  a2:m
  e2
  a1:m
  d1:m
  a1:m
  d1:m
  e1
  e1:7
  a2:m
  a2:7
  e1
  %second part
  a1:m
  s1*5
  e1*2
  a1:m
  e1
  a1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
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
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
