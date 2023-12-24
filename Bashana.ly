\version "2.18.0"
\language "english"
%\pointAndClickOff

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose d c \relative c' {
  \clef treble
  \key e \minor
  \time 4/4

  \partial 4*2 b4 g'   %lead in notes

  \repeat volta 3{
    e2 b4 g'
    e2. g4|
    a4 g fs e
    d4 b b d

    c2 c4 e
    ds2 e4 fs
    e1 ~
    e2 b4 g'

    e2 b4 g'
    e2. g4

    c4 c b a
    b4 g d g
    e2 e4 g
    e2 g4 a
    b1~

    b2 a4 b
    c2 \segno c4 c
    c2 b4 a
    b2 a4 g g2 fs4 g

    a2 g4 fs
    fs2 e4 fs
    g1~    %doesn't work
    gs2 a4 b
    c2 c4 c

    c2 b4 a
    b2 a4 g
    g2 fs4 g
    a2 g4 fs|
    fs2 e4 ds


  }
  \alternative {
    {e1~e4 r b   g'}
    {e1~e4 ^\markup {\italic D.S.al Fine}r a b }
    {e,1 ^\markup {\italic Fine}~e4 r r2}
  }
}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose d c\chordmode {
  s2 e1*2:m  d1:7 g1 a1:m
  b1 e1:m s1*2 c1
  d1:7 g1 a1 b1:7 e1:m
  e1:7 a1:m d1:7 g1 c1
  a1:m6 b1:7 e1:m d2:7 a4:m e4:7 a1:m
  d1:7 g1 c1 a1:m6 b1:7
  e1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Bashana Haba'ah"
    subtitle="Israeli"
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
