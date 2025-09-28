\version "2.24.0"
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

  \partial 4*3 b4 e g   %lead in notes

  \repeat volta 2{
    b1
    g2. fs4
    fs4 e2. ~
    e4 e g b
    e1
    %5
    c2. b4
    b4 a2. ~
    a4 a b c

    b2.(fs4)
    b2. a4 a4 g2. ~|

    g4 fs g a
    %chords start here
    %bottom line...
    <<
      {
        b2 b
        b2 b
        b4 a g a
        b4
      }
      \\
      {
        b,2 c    %13
        cs2 d
        ds2 e
        ds4 b e g|
      }
    >>
    b1      %17
    g2. fs4
    fs4 e2. ~
    e4 e g b|   %20

    e1|
    c2. b4
    b4 a2. ~
    a4 a b c| %24

    b2.(fs4)|
    b2. a4|
    a4 b2. ~|
    g4 fs g a| %28

    %bottom line again for now
    <b,b'>2 <c b'>
    <cs b'>2 <d b'>
    <ds b'>4 b' <a cs> <a ds>
    <g b e>4 r <g b e>  r|


  }


}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose d c \chordmode {
  s4 s2 e1:m b1:7
  e1*2:m
  %r1
  a1:m
  e1:7 a1*2:m
  %r1
  b1*2:7
  %r1
  e1:m
  e2:m c2 e1*2:m
  %r1
  b2:7 c2:6 b1:7
  e1:m  b1:7 e1*2:m
  %r1
  a1:m e1:7 a1*2:m
  %r1
  b1*2:7
  %r1
  e2*3:m
  %r2
  c2
  e1*2:m
  %r1
  b1:7 e1:m
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
    title= "Sholom Alaichem"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
