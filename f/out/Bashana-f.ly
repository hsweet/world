\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose a, g, \relative c' {
  \clef treble
  \key b \minor
  \time 4/4

  \partial 4*2 fs4 d'   %lead in notes

  \repeat volta 3{
    b2 fs4 d'
    b2. d4|
    e4 d cs b
    a4 fs fs a

    g2 g4 b
    as2 b4 cs
    b1 ~
    b2 fs4 d'

    b2 fs4 d'
    b2. d4

    g4 g fs e
    fs4 d a d
    b2 b4 d
    b2 d4 e
    fs1~

    fs2 e4 fs
    g2 \segno g4 g
    g2 fs4 e
    fs2 e4 d d2 cs4 d

    e2 d4 cs
    cs2 b4 cs
    d1~    %doesn't work
    ds2 e4 fs
    g2 g4 g

    g2 fs4 e
    fs2 e4 d
    d2 cs4 d
    e2 d4 cs|
    cs2 b4 as


  }
  \alternative {
    {b1~b4 r fs   d'}
    {b1~b4 ^\markup {\italic D.S.al Fine}r e fs }
    {b,1 ^\markup {\italic Fine}~b4 r r2}
  }
}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose a, g,\chordmode {
  s2 b1*2:m  a1:7 d1 e1:m
  fs1 b1:m s1*2 g1
  a1:7 d1 e1 fs1:7 b1:m
  b1:7 e1:m a1:7 d1 g1
  e1:m6 fs1:7 b1:m a2:7 e4:m b4:7 e1:m
  a1:7 d1 g1 e1:m6 fs1:7
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
  >>
  \header{
    title= "Bashana Haba'ah"
    subtitle="Israeli"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
