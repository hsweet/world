\version "2.14.2"

\include "english.ly"
\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ " Updated " \date }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet


melody = \relative c'' {
  \clef treble
  \key b \minor
  \time 2/4
  \partial 16*5 fs16 \mf es fs d cs
  \repeat volta 2{
    b4 b
    \repeat unfold 2{
      r8. cs16 d cs b as|
      b4 b}
    r8. as16 b cs d e|
    fs2

    r8. fs16 a fs d b|
    a'8.(g16) g4~
    g8. e16 g e cs a
    g'8.(fs16) fs4~

    fs8. d16 fs d b g|
    fs'8.(e16) e4~
    e8. b16 as b cs d
    e2~
    e4. es8 \p ^REFRAIN  \bar "||"

    fs4 fs ~
    fs8. fs16 e d cs b
    b8. d16 cs4~
    cs4. cs8
    b'4 b~

    b8. b16 a g fs e
    fs8. g16 fs4~
    fs4. fs8 cs'4 cs~
    cs16 b b as as g g fs|
    e16 [d8 cs16] b4~|
    b4 b' \mf

    g16[fs8 es16] fs8 fs|
    g16[fs8 es16] fs8 fs| %missing repeated bar
    g16 [fs8 es16] fs4~
    fs4 d'->
    cs8. b16 b4
    r4 r8 b, \p
    b'4 b~
    b16 b cs d e d cs b|
    b16 [a8 gs16] a4~
    a4. a,8  %end page 2
    g'4 g  ~
    g16 g a b cs b a g
    g16[fs8 es16] fs4~
    fs4 b
    fs8. e16 e4

    e8 e16 fs g g fs e|
    g8. fs16 fs4~
    fs4 b->
    fs8. e16 e4
    e8 e16 fs g g fs e

    g8. fs16 fs4~
    fs4. fs8 \mf

    d'4 d ~
    d8 cs16(d) e d cs b
    cs8. d16 cs4~
    cs4. e,8|
    cs'4 cs~
    cs8 bs16(cs) e d d cs|
    b8. cs16 b4~
    b8 r d4\p
    cs8. b16 b4~
    %last page
    b8 r d4
    b8. a16 a4~
    a8 r a,4
    fs'8. e16 e4~
    e4 fs
    e8. d16 d4~| %error in book? last page first You ka li
    d8 r d'4\pp
    cs8. b16 b4~
    b8 r d4
    b8. a16 a4~
    a8 r a,4
    fs'8. e16 e4~

  }

  \alternative{
    {
      e8 r fs4
      e8. d16 d4~
      d8
      r16 fs \mf es fs d cs
    }
    {
      e8 r b4 d2\(
      d'2~
      d2\)
      d2
      d2~
      d2~
      d4 ^rit r
      r2 \fermata
    }
  }

}

%{
%################################# Lyrics #####################
\addlyrics{
  C'est presque au bout du mon -- de
  Ma bar -- que va -- ga -- bon -- de
  Er -- rante au gré de l'on -- de
  M'y con -- dui -- sit un jour
  L'île est tou -- te pe -- ti -- te
  Mais la fée qui l'ha -- bi -- te
  Gen -- ti -- ment nous in -- vi -- te
  A en fai -- re le tour

  You -- ka -- li
  C'est le pays de nos dé -- sirs
  You -- ka -- li
  C'est le bon -- heur, c'est le plai -- sir
  You -- ka -- li
  C'est la terre où l'on quit -- te tous les sou -- cis
  C'est, dans notre nuit, comme une éclair -- cie
  L'étoile qu'on suit
  C'est You -- ka -- li

}
\addlyrics {
  Et la vie nous en -- traî -- ne
  Las -- san  -- te, quo -- ti -- dien -- ne
  Mais la pauvre âme hu -- mai -- ne
  Cherch -- ant par -- tout l'ou -- bli
  A pour quit -- ter la ter -- re
  Su trou -- ver le mys -- tè -- re
  Où nos rê -- ves se ter -- rent
  En quel -- ques You -- ka -- li....
}
%}
%################################# Chords #######################
harmonies = \chordmode {
  s16*5
  b2*6:m
  fs2:7
  cs2:7 %maybe
  e2*2:m
  b2*2:m
  e2*4:m
  %refrain
  b2*2:m
  cs2*2:m
  e2*2:m
  b2*2:m
  fs4*5
  b4*11:m
  e2*4:m   % might be a Cm
  a2*2
  e2*2:7
  d2*2
  e2*2:m
  b2*2:m
  e2*2:m
  b2*12:m  % maybe a chord change @53 and back to Dm @ 57???
  a2*2
  a2*2:7
  d2*2
  b2*2:m
  a2*2
  a2:7
  d2*3
  d2*8

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
  #(set-paper-size "letter")
      \harmonies
    }
    \new Staff \with {
      instrumentName = "Violin"} \melody
  >>
  \header{
    title= "Youkali"
    subtitle="Tango Habanera "
    composer= "Kurt Weill"
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
  % more verses:
  \markup{}
  \markup {
  \fill-line {
  \hspace #0.1 % distance from left margin
  \column {
  \line { "1."
  \column {
  ""
  }
  }
  \hspace #0.2 % vertical distance between verses
  \line { "2."
  \column {
  ""
  }
  }
  }
  \hspace #0.1  % horiz. distance between columns
  \column {
  \line { "3."
  \column {
  ""
  }
  }
  \hspace #0.2 % distance between verses
  \line { "4."
  \column {
  ""
  }
  }
  }
  \hspace #0.1 % distance to right margin
  }
  }


  C'est presque au bout du monde
  Ma barque vagabonde
  Errante au gré de l'onde
  M'y conduisit un jour
  L'île est toute petite
  Mais la fée qui l'habite
  Gentiment nous invite
  A en faire le tour

  Youkali
  C'est le pays de nos désirs
  Youkali
  C'est le bonheur, c'est le plaisir
  Youkali
  C'est la terre où l'on quitte tous les soucis
  C'est, dans notre nuit, comme une éclaircie
  L'étoile qu'on suit
  C'est Youkali

  Et la vie nous entraîne
  Lassante, quotidienne
  Mais la pauvre âme humaine
  Cherchant partout l'oubli
  A pour quitter la terre
  Su trouver le mystère
  Où nos rêves se terrent
  En quelques Youkali....


  ****************English*********
 It was almost to the end of the world
That my wandering boat
Straying at the will of the waves
Led me one day
The isle is very small
But the kind fairy that lives there
Invites us
To take a look around

Youkali
Is the land of our desires
Youkali
Is happiness, pleasure
Youkali
Is the land where we forget all our worries
It is in our night, like a bright rift
The star we follow
It is Youkali

Youkali
Is the respect of all vows exchanged
Youkali
Is the land of love returned
It is the hope
That is in every human heart
The deliverance
We await for tomorrow

Youkali
Is the land of our desires
Youkali
Is happiness, pleasure
But it is a dream, a folly
There is no Youkali

And life carries us along
Tediously, day by day
But the poor human soul
Seeking forgetfulness everywhere
Has, in order to escape the world
Managed to find the mystery
In which our dreams burrow themselves
In some Youkali

Youkali
Is the land of our desires
Youkali
Is happiness, pleasure
Youkali
Is the land where we forget all our worries
It is in our night, like a bright rift
The star we follow
It is Youkali

Youkali
Is the respect of all vows exchanged
Youkali
Is the land of love returned
It is the hope
That is in every human heart
The deliverance
We await for tomorrow

Youkali
Is the land of our desires
Youkali
Is happiness, pleasure
But it is a dream, a folly
There is no Youkali

But it is a dream, a folly
There is no Youkali


%}