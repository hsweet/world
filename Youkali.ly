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
  \key d \minor
  \time 2/4
  \partial 16*5 a16 \mf gs a f e
  \repeat volta 2{
    d4 d
    \repeat unfold 2{
      r8. e16 f e d cs|
      d4 d}
    r8. cs16 d e f g|
    a2

    r8. a16 c a f d|
    c'8.(bf16) bf4~
    bf8. g16 bf g e c
    bf'8.(a16) a4~

    a8. f16 a f d bf|
    a'8.(g16) g4~
    g8. d16 cs d e f
    g2~
    g4. gs8 \p ^REFRAIN  \bar "||"

    a4 a ~
    a8. a16 g f e d
    d8. f16 e4~
    e4. e8
    d'4 d~

    d8. d16 c bf a g
    a8. bf16 a4~
    a4. a8 e'4 e~
    e16 d d cs cs bf bf a|
    g16 [f8 e16] d4~|
    d4 d' \mf

    bf16[a8 gs16] a8 a|
    bf16[a8 gs16] a8 a| %missing repeated bar
    bf16 [a8 gs16] a4~
    a4 f'->
    e8. d16 d4
    r4 r8 d, \p
    d'4 d~
    d16 d e f g f e d|
    d16 [c8 b16] c4~
    c4. c,8  %end page 2
    bf'4 bf  ~
    bf16 bf c d e d c bf
    bf16[a8 gs16] a4~
    a4 d
    a8. g16 g4

    g8 g16 a bf bf a g|
    bf8. a16 a4~
    a4 d->
    a8. g16 g4
    g8 g16 a bf bf a g

    bf8. a16 a4~
    a4. a8 \mf

    f'4 f ~
    f8 e16(f) g f e d
    e8. f16 e4~
    e4. g,8|
    e'4 e~
    e8 ds16(e) g f f e|
    d8. e16 d4~
    d8 r f4\p
    e8. d16 d4~
    %last page
    d8 r f4
    d8. c16 c4~
    c8 r c,4
    a'8. g16 g4~
    g4 a
    g8. f16 f4~| %error in book? last page first You ka li
    f8 r f'4\pp
    e8. d16 d4~
    d8 r f4
    d8. c16 c4~
    c8 r c,4
    a'8. g16 g4~

  }

  \alternative{
    {
      g8 r a4
      g8. f16 f4~
      f8
      r16 a \mf gs a f e
    }
    {
      g8 r d4 f2\(
      f'2~
      f2\)
      f2
      f2~
      f2~
      f4 ^rit r
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
  d2*6:m
  a2:7
  e2:7 %maybe
  g2*2:m
  d2*2:m
  g2*4:m
  %refrain
  d2*2:m
  e2*2:m
  g2*2:m
  d2*2:m
  a4*5
  d4*11:m
  g2*4:m   % might be a Cm
  c2*2
  g2*2:7
  f2*2
  g2*2:m
  d2*2:m
  g2*2:m
  d2*12:m  % maybe a chord change @53 and back to Dm @ 57???
  c2*2
  c2*2:7
  f2*2
  d2*2:m
  c2*2
  c2:7
  f2*3
  f2*8

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
    instrument = "Violin"
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