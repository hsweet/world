\version "2.18.0"

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
  \key b \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \mark \default
  d4 cis8 b ais b cis d|
  b2. r8 b|
  e4. fis8 g a g(fis)
  fis1
  \repeat volta 2{
  \mark \default
    g4 g8 g g fis e d|
    % e2. e4|
    cis2. \tuplet 3/2 {cis8 d e}|
  }
  \alternative {
    {
      fis4. g8 fis (e d \prall e)|
      fis2. r4|
    }
    {
      fis4. g8 fis (e d e)\fermata|
    }
  }
  b1~
  b2 r4 r8 fis
  %end part
  \break
  \repeat volta 2{
  \mark \default
    \mark \default
    d'4. e8 d2~
    d4 b8 cis d4 b|
    d4.(e8)d2~
    d4 b8 cis d4. b8|

    cis4.(d8) cis2~
    cis8 ais ais b cis4 d

  }
  \alternative {
    {b1~ b2 r4 r8 fis }{b1 \fermata }
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
  \key b \minor

  %begin part
  fis4  d'4. cis8 b [ais]|
  b cis b2.|
  r8 b e4. fis8 g [fis]|
  e8 g fis2.|
  \repeat volta 2{
  \mark \default
    e8 fis g2 e4~
    e8 cis cis2.|
    fis8 g fis4. e8 d4|

  }
  \alternative {
    {
      e4 fis2.
    }
    {
      cis4 b2.
    }
  }
  %end part

  %add 2 empty measures for now..
  s1
  %B part, Chorus

  r2 r4 r8 fis8
  \repeat volta 2{
  \mark \default
    d'2  b2~
    %d4  d8 e f4 e8 d|
    b4 e8 d cis4 b|
    d2 b2~|
    b4 e8 d cis4 b|
    %d4 e8 f g4

    g2 fis2~|
    %a8 a8 d e4
    fis8 cis' cis d e4 d


  }
  \alternative{
    {
      e2 d2~
      d2 r4 r8 fis,
    }
    {<<d'1 fis \fermata >>  }
  }
}
harmonies = \chordmode {
  b2:m
  fis2
  b1:m
  e1:m
  b1:m
  e1:m
  fis1
  fis1:7
  b2:m
  b2:7
  fis1
  %second part
  b1:m
  s1*5
  fis1*2
  b1:m
  fis1
  b1:m
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
