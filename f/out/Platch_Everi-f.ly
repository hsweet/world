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
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  %introduction

  % {d4 d d2 d4 d d2}
  \partial 8*2 e16 fs gs8
  % A section, 1 repeat
  \repeat volta 2{
    \mark \default
    a2\f a'4. e8
    f4-> e-> d f
    e8 \grace g (f) e \grace g (f) | e d8 r c16 b
    a2\> ~
    a4\! r
    e'2\f  c'\prallup
    \grace a16(b4) b
    b8 a gs a
    b4-> b->
    b8 (a gs f)
    e2\>  ~
    e4\! \breathe \times 2/5 {e8 ds e f fs }%\tuplet 3/2 {a8 as bf}
    g2 |
    a2
    g8 a g4
    c,4 d \breathe
    e e
    e8 d c b
    a4. \tuplet 3/2 {c16 b a}
    gs4\fermata \tuplet 3/2 {e8\< fs8 gs8} c4\!

    e g
    c, d
    e8 d c4
    b  a ~ a8 a'
    e4 c
  }
  \alternative{
    {
      %a4 f4
      a2~ a4 e
    }
    {
      a2 ~
      a4 e16 fs gs8
    }
  }
  % B section, no repeat
  \break
  \mark \default
  {
    %\bar "||"
    %a8 b4 cs 8
    a2\pp a
    a4 bf g bf
    a2 a
    a4 bf
    g  \tuplet 3/2 {d'8\f c bf}
    %d4 \tuplet 3/2 {g8 f ef}

    a4\p r8 a8 a gs r a16 bf
    b4 r8 b8 b a r b c4 c c8 b r a gs2 e
    b' b b4 c8 b
    a4 \tuplet 3/2 {e'8 d c}
    b2 b b4 c8 b
    a4 \tuplet 3/2 {e'8\f  d c}
    b4 b gs e
    e8 gs a b
    c b e c
    a 4 r8 a'\> e4 c a2\!
  }
  %C sectio
  \break

  \repeat volta 2{
    \mark \default
a8  b r c
    d4-> d-> \glissando
    f2 \prallprall
    d4 d
    d8 c r b
    c4-> c->\glissando
    e2
    c4 c
    c8 b r a
    b4 b
    gs e \breathe
    e8 gs a b

  }
  \alternative {
    {c8 ^4 b e c a4 r8 a' e4  c a2}
    {
      c8 ^"3 Solo"  b a c e2 ~
      e4 \tuplet 3/2{b'8 c d}|
      e8 d c b
      a8 g f e
      e2~
      e2
    }

  }

}

secund = \relative c
{
  \clef bass
  \key a \minor
  \time 2/4
  r8*3
  \chordmode{
    a4:m a:m
    a:m r
    d4:m d:m
    d:m r
    a4:m a:m
    e4:7 r
    a4:m a:m
    a:m r
    a4:m a:m
    a:m r

  }

}
harmonies = \chordmode {
  %A section
  s8*2
  a2*2:m

  d2*2:m
  a2:m
  e2:7
  a2*4:m

  e2*4
  a2*2:m

  c2
  f2*2 %b2*2:6

  c2
  e2*2
  a2:m
  e4*2:7
  c4*2

  g4*2

  d4*2:m
  e4*2:7

  a4*12:m
  %B section

  a2*3:m
  g2:m
  a2*3:m
  g2:m
  a2*2:m

  e2*2
  %r2
  c2*2
  e2*2:7

  e2*3
  a2:m
  e2*3
  a2:m
  e2*3
  e2:7
  a2*3:m
  % C section
  a2:m
  d2*4:m
  c2*4
  e2*3:7
  a2*4:m


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
