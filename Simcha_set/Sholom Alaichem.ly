\version "2.12.2"

\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \date }
%\markup{ Got something to say? }

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \transpose d c \relative c' {
  \clef treble
  \key e \minor
  \time 4/4

  \partial 4*3 b4 e g   %lead in notes

  \repeat volta 2{
    b1
    g2. fis4
    fis4 e2. ~
    e4 e g b
    e1
    %5
    c2. b4
    b4 a2. ~
    a4 a b c

    b2.(fis4)
    b2. a4 a4 g2. ~|

    g4 fis g a
    %chords start here
    %bottom line...
    
    b2 b
        b2 b
        b4 a g a
        b4 b, e g
   %{ <<
      {b2 b
        b2 b
        b4 a g a
        b4 r2 r4
      }
      \\
      { b,2 c    %13
        cis2 d
        dis2 e
        dis4 b e g|}
    >>
   %}
    b1      %17
    g2. fis4
    fis4 e2. ~
    e4 e g b|   %20

    e1|
    c2. b4
    b4 a2. ~
    a4 a b c| %24

    b2.(fis4)|
    b2. a4|
    a4 g2. ~|
    g4 fis g a| %28

    %bottom line again for now
    <b,b'>2 <c b'>
    <cis b'>2 <d b'>
    
  }
  \alternative{
    {b'4 a g fis
    e4 b e g }
    {<dis b'>4 b' <a cis> <a dis>
    <g b e>4 r <g b e>  r|}
    
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose d c \chordmode {
  s4 s2 e1:m b1:7
  e1:m s1 a1:m
  e1:7 a1:m s1
  b1:7 s1 e1:m
  e2:m c2 e1:m
  s1 b2:7 c2:6 b1:7
  e1:m  b1:7 e1:m s1
  a1:m e1:7 a1:m s1
  b1:7 s1 e1:m s2 c2
  e1:m s1 b1:7 e1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
  #(set-paper-size "letter")
  #(set-paper-size "letter")
      \harmonies
    }
    \new Staff \
       \melody
  >>
  \header{
    title= "Sholom Alaichem"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{ }
  \midi{ 
	  \context { 
		 \Score tempoWholesPerMinute = #(ly:make-moment 120 4) 
	 } 
 }
}
