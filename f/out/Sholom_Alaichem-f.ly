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

  \partial 4*3 fs4 b d   %lead in notes

  \repeat volta 2{
    fs1
    d2. cs4
    cs4 b2. ~
    b4 b d fs
    b1
    %5
    g2. fs4
    fs4 e2. ~
    e4 e fs g

    fs2.(cs4)
    fs2. e4 e4 d2. ~|

    d4 cs d e
    %chords start here
    %bottom line...
    <<
      {
        fs2 fs
        fs2 fs
        fs4 e d e
        fs4
      }
      \\
      {
        fs,2 g    %13
        gs2 a
        as2 b
        as4 fs b d|
      }
    >>
    fs1      %17
    d2. cs4
    cs4 b2. ~
    b4 b d fs|   %20

    b1|
    g2. fs4
    fs4 e2. ~
    e4 e fs g| %24

    fs2.(cs4)|
    fs2. e4|
    e4 fs2. ~|
    d4 cs d e| %28

    %bottom line again for now
    <fs,fs'>2 <g fs'>
    <gs fs'>2 <a fs'>
    <as fs'>4 fs' <e gs> <e as>
    <d fs b>4 r <d fs b>  r|


  }


}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose a, g, \chordmode {
  s4 s2 b1:m fs1:7
  b1*2:m
  %r1
  e1:m
  b1:7 e1*2:m
  %r1
  fs1*2:7
  %r1
  b1:m
  b2:m g2 b1*2:m
  %r1
  fs2:7 g2:6 fs1:7
  b1:m  fs1:7 b1*2:m
  %r1
  e1:m b1:7 e1*2:m
  %r1
  fs1*2:7
  %r1
  b2*3:m
  %r2
  g2
  b1*2:m
  %r1
  fs1:7 b1:m
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
    title= "Sholom Alaichem"
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
