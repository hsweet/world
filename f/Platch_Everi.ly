\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  %print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
\header{
  subtitle ="Platch Everi"
  title="Yevrieskaya Melodie"
  composer= "Belf/Naye Kapele"

}


melody = \relative c'
{
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  %introduction

  % {d4 d d2 d4 d d2}
  \partial 8*2 a16 b cs8
  % A section, 1 repeat
  \repeat volta 2{
    \mark \default
    d2\f d'4. a8
    bf4-> a-> g bf
    a8 \grace c (bf) a \grace c (bf) | a g8 r f16 e
    d2\> ~
    d4\! r
    a'2\f  f'\prallup
    \grace d16(e4) e
    e8 d cs d
    e4-> e->
    e8 (d cs bf)
    a2\>  ~
    a4\! \breathe \times 2/5 {a8 gs a bf b }%\tuplet 3/2 {a8 as bf}
    c2 |
    d2
    c8 d c4
    f,4 g \breathe
    a a
    a8 g f e
    d4. \tuplet 3/2 {f16 e d}
    cs4\fermata \tuplet 3/2 {a8\< b8 cs8} f4\!

    a c
    f, g
    a8 g f4
    e  d ~ d8 d'
    a4 f
  }
  \alternative{
    {
      %a4 f4
      d2~ d4 a
    }
    {
      d2 ~
      d4 a16 b cs8
    }
  }
  % B section, no repeat
  \break
  \mark \default
  {
    %\bar "||"
    %a8 b4 cs 8
    d2\pp d
    d4 ef c ef
    d2 d
    d4 ef
    c  \tuplet 3/2 {g'8\f f ef}
    %d4 \tuplet 3/2 {g8 f ef}

    d4\p r8 d8 d cs r d16 ef
    e4 r8 e8 e d r e f4 f f8 e r d cs2 a
    e' e e4 f8 e
    d4 \tuplet 3/2 {a'8 g f}
    e2 e e4 f8 e
    d4 \tuplet 3/2 {a'8\f  g f}
    e4 e cs a
    a8 cs d e
    f e a f
    d 4 r8 d'\> a4 f d2\!
  }
  %C sectio
  \break

  \repeat volta 2{
    \mark \default
d8  e r f
    g4-> g-> \glissando
    bf2 \prallprall
    g4 g
    g8 f r e
    f4-> f->\glissando
    a2
    f4 f
    f8 e r d
    e4 e
    cs a \breathe
    a8 cs d e

  }
  \alternative {
    {f8 ^4 e a f d4 r8 d' a4  f d2}
    {
      f8 ^"3 Solo"  e d f a2 ~
      a4 \tuplet 3/2{e'8 f g}|
      a8 g f e
      d8 c bf a
      a2~
      a2
    }

  }

}

secund = \relative c
{
  \clef bass
  \key d \minor
  \time 2/4
  r8*3
  \chordmode{
    d,4:m d,:m
    d,:m r
    g,4:m g,:m
    g,:m r
    d,4:m d,:m
    a,4:7 r
    d,4:m d,:m
    d,:m r
    d,4:m d,:m
    d,:m r

  }

}
harmonies = \chordmode {
  %A section
  s8*2
  d2*2:m

  g2*2:m
  d2:m
  a2:7
  d2*4:m

  a2*4
  d2*2:m

  f2
  bf2*2 %b2*2:6

  f2
  a2*2
  d2:m
  a4*2:7
  f4*2

  c4*2

  g4*2:m
  a4*2:7

  d4*12:m
  %B section

  d2*3:m
  c2:m
  d2*3:m
  c2:m
  d2*2:m

  a2*2
  %r2
  f2*2
  a2*2:7

  a2*3
  d2:m
  a2*3
  d2:m
  a2*3
  a2:7
  d2*3:m
  % C section
  d2:m
  g2*4:m
  f2*4
  a2*3:7
  d2*4:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
   % \new Staff \secund
  >>

  \layout{indent = 1.0\cm}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment  120 4)
    }
  }
}
