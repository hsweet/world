\version "2.26.0"
\include "english.ly"
\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \date }
%\markup{ Got something to say? }

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
%melody = \transpose d c \relative c' {
melody = \relative c'{
  \clef treble
  \key d \minor
  \time 4/4

  \partial 4*3 a4 d f   %lead in notes

  \repeat volta 2{
    a1
    f2. e4
    e4 d2. ~
    d4 d f a
    d1
    %5
    bf2. a4
    a4 g2. ~
    g4 g a bf

    a2.(e4)
    a2. g4 g4 f2. ~|

    f4 e f g
    %chords start here
    %bottom line...

    a2 a
    a2 a
    a4 g f g
    a4 a, d f

    a1      %17
    f2. e4
    e4 d2. ~
    d4 d f a|   %20

    d1|
    bf2. a4
    a4 g2. ~
    g4 g a bf| %24

    a2.(e4)|
    a2. g4|
    g4 f2. ~|
    f4 e f g| %28

    %bottom line again for now
    <a,a'>2 <bf a'>
    <b a'>2 <c a'>

  }
  \alternative{
    {
      a'4 g f e
      d4 a d f
    }
    {
      <cs a'>4 a' <g b> <g cs>
      <f a d>4 r <f a d>  r|
    }

  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
%harmonies = \transpose d c \chordmode {
harmonies = \chordmode{
  s4 s2 d1:m a1:7
  d1:m s1 g1:m
  d1:7 g1:m s1
  a1:7 s1 d1:m
  d2:m bf2 d1:m
  s1 a2:7 bf2:6 a1:7
  d1:m  a1:7
  d1:m s1
  g1:m d1:7 g1:m s1
  a1:7 s1 d1:m s2 bf2
  d1:m s1 a1:7 d1:m
}

\score {
  % transpose score below
  %\transpose d a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Shalom Alechem"
    subtitle=""
    composer= ""
    instrument = ""
    arranger= ""
  }
  %\midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

%{
convert-ly (GNU LilyPond) 2.26.0  convert-ly: Processing `'...
Applying conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16,
2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31, 2.13.36, 2.13.39,
2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7,
2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25,
2.15.32, 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4,
2.17.5, 2.17.6, 2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20,
2.17.25, 2.17.27, 2.17.29, 2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11,
2.19.16, 2.19.22, 2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39,
2.19.40, 2.19.46, 2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1,
2.23.2, 2.23.3, 2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9,
2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
