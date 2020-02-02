\version "2.12.2"
\include "english.ly"
\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
  %after-title-space = 2\mm
  %between-system-space = 1.5\cm
  %between-system-padding = #1
  ragged-bottom=##f
  ragged-last-bottom=##f

}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ "Sheet 3 | Updated " \date }  }

%\markup{ Got something to say? }

common = {
  \clef treble
  \key a \minor
  \time 12/8
  \compressFullBarRests
}

pone = { ds16(e)e e e e   ds16(e)e e e e   e ds c b c ds }
ptwoa = {g16 fs a g fs e \acciaccatura {ds} e8 c4 c16 b d c b a \acciaccatura{b}c8 a4}
ptwob = {g'16 fs a g fs e \acciaccatura {ds} e8 c4 c16 b d c b a \acciaccatura{b}c8 a4}
pthreea = {a16 gs f e c cs d4 \trill d8 d16 c b a b c}
pthreeb= {a'16 gs f e c cs d4 \trill d8 d16 c b a b c}
%#################################### Melody ########################
%vln =  \transpose c d \transpose c a \relative c' {  %transpose for clarinet
vln = \transpose c a \relative c' {
  \common

  R1*6/4*8   			%8 measures rest
  r4. r4. e16 ds c b c ds e4.	%9
  r4. r4. e16 ds c b c ds e4.	%10
  r4. \acciaccatura{ds}e8 c4 r4. \acciaccatura{b} c8 a4|

  r4. \acciaccatura{ds}e8 c4 r4. b16 c a4|  	%12
  r4. r4. g'16 fs e ds e fs g4.|
  r4. r4. g16 fs e ds e fs g4.|
  r4. \acciaccatura{fs}g8 e4 r4. \acciaccatura {ds}e8 c4|

  r4. \acciaccatura fs g8 e4 r4. ds16 e \mark"To Coda" c4| 	%16
  \pthreeb \acciaccatura {b} c8 a4|
  \pthreeb b16 c a4|
  \pthreeb \acciaccatura {b} c8 a4|
  \pthreeb b16 c a b c d|			%20


  \repeat volta 2{
    \pone e4.
    \pone e4 e16 fs
    \ptwoa   %24

    g'16 fs a g fs e \acciaccatura ds e8 c4 c16 b d c b a b c a4|
  }
  R1*3/2*4   \mark \markup  {"D.S. al Coda " \musicglyph #"scripts.coda"  }

  \bar ".|."
  \repeat percent 2{
    \pthreeb \acciaccatura {b16} c8 a4|
    \pthreeb b16 c a4
    }
  %\pthreeb \acciaccatura b c8 a4|
  %\pthreeb b16 c a4
}

%%%%%%%%%%%%%%%%%%%%%%%%%Accordian%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
accordian = \relative c''{
  \common
  R1*6/4*3			%3 measures rest
  r1 r4  a16 b c d \mark \markup { \musicglyph #"scripts.segno" }
  \bar"||" ds16(e) e e e e   ds16(e)e e e e   e ds c b c ds e4 e16 fs
  %\pone e4.
  \pone e4 e16 fs|
  \ptwoa

  \ptwob    %8
  \bar "||"
  \pone e4.
  \pone e4 e16 fs
  \ptwoa
  \ptwob  %12

  \pone e4.|
  \pone e4 e16 fs
  \ptwoa
  g'16 fs a g fs e \acciaccatura {ds} e8 c4 c16 b d c b a b16 c \mark "To Coda" a4
  \bar"||" %16

  c,8 e g16 gf f4 a8 gf4 c8 a4 d,16 df|
  c8 e g16 gf f8 a8 [gs e b'8] c a4.|
  c,8 e g16 gf f4 a8 gf4 c8 a4 d,16 df|
  c8 e g16 gf f8 a8 [gs e b'8] c a4.| %20

  \repeat volta 2{
    b16(c)c c c c  b(c)c c c c c b a gs a b c4.
    b16(c)c c c c  b(c)c c c c c b a gs a b c4.
    r4 e16 fs g fs a g fs e \acciaccatura ds e8 c4 c16 b d c b a|
    \acciaccatura b c8 a4 g16 fs a g fs e \acciaccatura ds e8 c4 c16 b d c b a|
  }
  b16 ^"Drums 4 Bars" c a4 r4. r4. r4.
  %R1*6/4*3

  %{
  \transpose c a \relative c'' {
   \pthreeb \acciaccatura b c8 a4|
  \pthreeb b16 c a4  \mark \markup { \musicglyph #"scripts.coda" } %28
  \pthreeb \acciaccatura b c8 a4|
  \pthreeb b16 c a4
  }
  %}

}

ch = \chordmode {
  a8*3:m
  d8*3:m
  e8*3
  a8*3:m
}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose c a \chordmode {
  R1*3/2*4
  a1*3/2:m
  R1*3/2*11

  \ch
  \ch
  \ch
  \ch

  a1*3/2:m
  R1*3/2*7

  \ch
  \ch
  %  \ch
  % \ch

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
  #(set-paper-size "letter")
      \harmonies
    }
    \new Staff \with {
      instrumentName = "Ef Horn"} \vln
    \new Staff \with{
      instrumentName = "Accordian"}\accordian
  >>
  \header{
    title= "Moroccan Game"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }

  \layout{ }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment  120 4)
    }

    % \midi { }
  }
}
%{
c1 \mark \markup { \musicglyph #"scripts.segno" }
c1 \mark \markup { \musicglyph #"scripts.coda" }
c1 \mark \markup { \musicglyph #"scripts.ufermata" }
c1
%}

