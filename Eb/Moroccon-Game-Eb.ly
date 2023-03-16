\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
  %obsolete-after-title-space = 2\mm  markup-system-spacing #'basic-distance = #(/ obsolete-after-title-space staff-space)
  %obsolete-between-system-space = 1.5\cm  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
  %obsolete-between-system-padding = #1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  ragged-bottom=##f
  ragged-last-bottom=##f

}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

common = {
  \clef treble
  \key fs \minor
  \time 12/8
  \compressFullBarRests
}

pone = { bs16(cs')cs' cs' cs' cs'   bs16(cs')cs' cs' cs' cs'   cs' bs a gs' a bs }
ptwoa = {e'16 ds' fs' e' ds' cs' \acciaccatura {bs} cs'8 a4 a16 gs' b a gs' fs' \acciaccatura{gs'}a8 fs'4}
ptwob = {e''16 ds' fs' e' ds' cs' \acciaccatura {bs} cs'8 a4 a16 gs' b a gs' fs' \acciaccatura{gs'}a8 fs'4}
pthreea = {fs'16 es' d' cs' a as b4 \trill b8 b16 a gs' fs' gs' a}
pthreeb= {fs''16 es' d' cs' a as b4 \trill b8 b16 a gs' fs' gs' a}
%#################################### Melody ########################
vln = \relative c''' {
  \common

  R1*6/4*8   			%8 measures rest
  r4. r4. cs16 bs a gs a bs cs4.	%9
  r4. r4. cs16 bs a gs a bs cs4.	%10
  r4. \acciaccatura{bs}cs8 a4 r4. \acciaccatura{gs} a8 fs4|

  r4. \acciaccatura{bs}cs8 a4 r4. gs16 a fs4|  	%12
  r4. r4. e'16 ds cs bs cs ds e4.|
  r4. r4. e16 ds cs bs cs ds e4.|
  r4. \acciaccatura{ds}e8 cs4 r4. \acciaccatura {bs}cs8 a4|

  r4. \acciaccatura ds e8 cs4 r4. bs16 cs \mark"To Coda" a4| 	%16
  \pthreeb \acciaccatura {gs} a8 fs4|
  \pthreeb gs16 a fs4|
  \pthreeb \acciaccatura {gs} a8 fs4|
  \pthreeb gs16 a fs gs a b|			%20


  \repeat volta 2{
    \pone cs4.
    \pone cs4 cs16 ds
    \ptwoa   %24

    e'16 ds fs e ds cs \acciaccatura bs cs8 a4 a16 gs b a gs fs gs a fs4 \mark \markup  {"D.S. al Coda "}
  }
  R1*3/2*4   \mark \markup  { \musicglyph #"scripts.coda" }

  \bar ".."
  \repeat percent 2{
    \pthreeb \acciaccatura {gs16} a8 fs4|
    \pthreeb gs16 a fs4
  }
  %\pthreeb \acciaccatura b c8 a4|
  %\pthreeb b16 c a4
}

%%%%%%%%%%%%%%%%%%%%%%%%%Accordian%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
accordian = \relative c''{
  \common
  R1*6/4*3			%3 measures rest
  r1 r4  fs16 gs a b \mark \markup { \musicglyph #"scripts.segno" }
  \bar"||" bs16(cs) cs cs cs cs   bs16(cs)cs cs cs cs   cs bs a gs a bs cs4 cs16 ds
  %\pone e4.
  \pone cs4 cs16 ds|
  \ptwoa

  \ptwob    %8
  \bar "||"
  \pone cs4.
  \pone cs4 cs16 ds
  \ptwoa
  \ptwob  %12

  \pone cs4.|
  \pone cs4 cs16 ds
  \ptwoa
  e'16 ds fs e ds cs \acciaccatura {bs} cs8 a4 a16 gs b a gs fs gs16 a \mark "To Coda" fs4
  \bar"||" %16

  a,8 cs e16 ef d4 fs8 ef4 a8 fs4 b,16 bf|
  a8 cs e16 ef d8 fs8 [es cs gs'8] a fs4.|
  a,8 cs e16 ef d4 fs8 ef4 a8 fs4 b,16 bf|
  a8 cs e16 ef d8 fs8 [es cs gs'8] a fs4.| %20

  \repeat volta 2{
    gs16(a)a a a a  gs(a)a a a a a gs fs es fs gs a4.
    gs16(a)a a a a  gs(a)a a a a a gs fs es fs gs a4.
    r4 cs16 ds e ds fs e ds cs \acciaccatura bs cs8 a4 a16 gs b a gs fs|
    \acciaccatura gs a8 fs4 e16 ds fs e ds cs \acciaccatura bs cs8 a4 a16 gs b a gs fs|
  }
  gs16 ^"Drums 4 Bars" a fs4 r4. r4. r4.
  R1*6/4*3

  %{
  \relative c'' {
   \pthreeb \acciaccatura b c8 a4|
  \pthreeb b16 c a4  \mark \markup { \musicglyph #"scripts.coda" } %28
  \pthreeb \acciaccatura b c8 a4|
  \pthreeb b16 c a4
  }
  %}

}

ch = \chordmode {
  fs8*3:m
  b8*3:m
  cs8*3
  fs8*3:m
}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  R1*3/2*4
  fs1*3/2:m
  R1*3/2*11

  \ch
  \ch
  \ch
  \ch

  fs1*3/2:m
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
      \harmonies
    }
    \new Staff \vln
    \new Staff \accordian
  >>
  \header{
    title= "Moroccan Game"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }

  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4. = 40

    % \midi { }
  }
}
%{
c1 \mark \markup { \musicglyph #"scripts.segno" }
c1 \mark \markup { \musicglyph #"scripts.coda" }
c1 \mark \markup { \musicglyph #"scripts.ufermata" }
c1
%}

