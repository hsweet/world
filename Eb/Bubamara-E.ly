\version "2.18.0"
\language "english"
\pointAndClickOff

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

melody = \transpose d e \relative c' {
  \clef treble

  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a4.   bf8 a4 gs
    a8 a4 f8 d2
    r8 d'4 d8  d c bf a
    bf2 g4 g|

    r8 bf4 g8 e4 bf'
    a8 a4 f8 d4 r4|
    r8 e4 e8 f e ds e

  }

  \alternative {
    {a4 bf a2 }
    {r8 a4 bf8 a _rit g f e }
  }


  \repeat volta 2{
  \mark \default
    d8  e f g a gs a4

    r8 d4 bf8 g4 r4
    r8 a4 f8 d4 r4
    g8 f e d cs d e f
    d2. r4|

  }

  % \alternative { { }{ } }

}
%************************Lyrics Block****************
%{\addlyrics{
  Sa  o rao -- ma -- len phu -- che -- na
  bu -- ba -- ma -- ra so -- se a -- ce -- la.
  Dev -- la  dev -- la var -- car le _
  Bu -- be -- ma -- ra ko -- ka po -- ci -- ne
  \repeat unfold 6{\skip2}
  Djind -- ji - rind -- ji bu -- ba -- ma -- ro
  cik -- ni -- je shuz -- hi --je
  aj -- de mo -- re koj ro -- mesa.

}
\addlyrics {

  Ej ro -- ma -- len a -- shu -- nen, _
  Ej cha -- vo -- ren gug -- le zur -- a -- len.
  Bu -- ba -- ma -- ra cha -- jo -- ri, _
  Ba -- ro Gr -- ga voj --  si od -- ji -- li.
}
%}
harmonies =  \transpose d e \chordmode {
  d1*2:m
  d1:7
  g1:m
  a1:7
  d1:m
  g1:m
  a1:7
  d1:m
  %B part
  d1:m
  g1:m
  d1:m
  e2:7
  a2:7
  d1:m
  %a1:7
  %d2:m
  %e2:7
  %a1:7


  %old chords
  % d1:m r1 g1:m r1 a1:7 d1:m g1:m a1:7 r1
  %B section
  %d1:m g1:m d1:m g2:m a2:7 d1:m
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff

    \melody
    %\new Staff \transpose c c' \melody
  >>
  \header{
    title= "Bubamara"
instrument= "Eb"
    arranger= ""

  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
\markup \fontsize #2 {[Em] Shamale [Am] Romale (3x) [B7] Ajde Te Khela  }
%{
%\markup{ [Dm]Shamale [Gm]romale (3x) [A7]ajde te khela  }
\markup{.}

  % more verses:
  \markup{}
  \markup {
  \fill-line {
  \hspace #0.1 % distance from left margin
  \column {
  \line { "1."
  \column {
  "Sa Romalen phuche na"
  "Bubemara sose acela"
  "Devla, devla chajori"
  "Bubamara koka pocine"
  }
  }
  \hspace #0.2 % vertical distance between verses
  \line { "2."
  \column {
  "Ej Romalen a shunen"
  "Ej chavoren gugle zuralen"
  "Bubemara chajori,"
  "Baro grga vojsi odjili"
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



%{

  Sa o raomalen phuchena
  bubamara sose ni c(k)elel.
  Devla , devla mangav la
  o' lake meka merav.

  Sa e romen puchela,
  bubamara sose achela,
  devla devla vacar le,
  bubamara tuka pocinel.
  ej romalen ashunen,
  e chavoren gugle zurale.
  Bubamara chajori,
  baro Grga voj si o djili.

  Djindji - rindji bubamaro
  ciknije shuzhije
  ajde more koj romesa. x2
  Shamale romale! x3
  Shamale romale ajde te khela

  Sa romalen puchela,
  o dejori fusuj chudela.
  Devla devla sa charle,
  bubamaru voj te aresel.
  Ej romalen ashunen,
  e chavroren gugle shukaren,
  zivoto si ringishpil,
  Trajo o del rom aj romnji.

  Djindji - rindji bubamaro
  ciknije shuzhije
  ajde more koj romesa. x2
  Shamale romale! x3
  Shamale romale ajde te khela

  Sa Romalen puchela,
  bubamara sose achela,
  devla devla vacar le
  bubamara pocinel.
  Ej romalen ashunen
  e chavrore gugle zurale
  bubamara chajori
  baro Grga voj si o djili.

  Djindji - rindji bubamaro
  ciknije shuzhije
  ajde more goj romesa. x4
  Te cilabe te chela

  Everyone is asking
  Ladybug why are you so tiny?
  Oh God, oh God I love her
  Ladybug I will pay everything for you.

  Hey folks listen,
  Sweet beautiful children.
  Ladybug, little girl,
  You are a great, greatest song.

  Jinji rinji Ladybug
  You tiny beauty
  Go away man, I'm not for marriage,
  Children, folks

  Everyone is asking,
  And mother is serving beans,
  Oh God, oh God everything has been eaten,
  Ladybug can't wait.
  Everyone is asking
  Ladybug why are you so tiny?
  Oh God, oh God I love her
  Ladybug I will pay everything for you.

  Hey folks listen,
  Sweet beautiful children.
  Ladybug, little girl,
  You are a great, greatest song.

  Jinji rinji Ladybug
  You tiny beauty
  Go away man, I'm not for marriage,
  Children, folks

  Everyone is asking,
  And mother is serving beans,
  Oh God, oh God everything has been eaten,
  Ladybug can't wait.

  Hey folks listen,
  Sweet beautiful children,
  Life is a merry-go-round
  God bless husband and wife.

  Jinji rinji Ladybug
  You tiny beauty
  Go away man, I'm not for marriage,
  Children, folks

  Hey folks listen,
  Sweet beautiful children.
  Ladybug, little girl,
  You are a great, greatest song.
  Hey folks listen,
  Sweet beautiful children,
  Life is a merry-go-round
  God bless husband and wife.

  Jinji rinji Ladybug
  You tiny beauty
  Go away man, I'm not for marriage,
  Children, folks

  Hey folks listen,
  Sweet beautiful children.
  Ladybug, little girl,
  You are a great, greatest song.

%}
