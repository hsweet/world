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


melody = \relative c' {
  \clef treble
  \key a \minor
  \time 2/4
  \partial 16*5 e16 \mf ds e c b
  \repeat volta 2{
    a4 a
    \repeat unfold 2{
      r8. b16 c b a gs|
      a4 a}
    r8. gs16 a b c d|
    e2

    r8. e16 g e c a|
    g'8.(f16) f4~
    f8. d16 f d b g
    f'8.(e16) e4~

    e8. c16 e c a f|
    e'8.(d16) d4~
    d8. a16 gs a b c
    d2~
    d4. ds8 \p ^REFRAIN  \bar "||"

    e4 e ~
    e8. e16 d c b a
    a8. c16 b4~
    b4. b8
    a'4 a~

    a8. a16 g f e d
    e8. f16 e4~
    e4. e8 b'4 b~
    b16 a a gs gs f f e|
    d16 [c8 b16] a4~|
    a4 a' \mf

    f16[e8 ds16] e8 e|
    f16[e8 ds16] e8 e| %missing repeated bar
    f16 [e8 ds16] e4~
    e4 c'->
    b8. a16 a4
    r4 r8 a, \p
    a'4 a~
    a16 a b c d c b a|
    a16 [g8 fs16] g4~
    g4. g,8  %end page 2
    f'4 f  ~
    f16 f g a b a g f
    f16[e8 ds16] e4~
    e4 a
    e8. d16 d4

    d8 d16 e f f e d|
    f8. e16 e4~
    e4 a->
    e8. d16 d4
    d8 d16 e f f e d

    f8. e16 e4~
    e4. e8 \mf

    c'4 c ~
    c8 b16(c) d c b a
    b8. c16 b4~
    b4. d,8|
    b'4 b~
    b8 as16(b) d c c b|
    a8. b16 a4~
    a8 r c4\p
    b8. a16 a4~
    %last page
    a8 r c4
    a8. g16 g4~
    g8 r g,4
    e'8. d16 d4~
    d4 e
    d8. c16 c4~| %error in book? last page first You ka li
    c8 r c'4\pp
    b8. a16 a4~
    a8 r c4
    a8. g16 g4~
    g8 r g,4
    e'8. d16 d4~

  }

  \alternative{
    {
      d8 r e4
      d8. c16 c4~
      c8
      r16 e \mf ds e c b
    }
    {
      d8 r a4 c2\(
      c'2~
      c2\)
      c2
      c2~
      c2~
      c4 ^rit r
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
  a2*6:m
  e2:7
  b2:7 %maybe
  d2*2:m
  a2*2:m
  d2*4:m
  %refrain
  a2*2:m
  b2*2:m
  d2*2:m
  a2*2:m
  e4*5
  a4*11:m
  d2*4:m   % might be a Cm
  g2*2
  d2*2:7
  c2*2
  d2*2:m
  a2*2:m
  d2*2:m
  a2*12:m  % maybe a chord change @53 and back to Dm @ 57???
  g2*2
  g2*2:7
  c2*2
  a2*2:m
  g2*2
  g2:7
  c2*3
  c2*8

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