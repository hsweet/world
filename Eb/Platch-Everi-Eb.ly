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


melody = \relative c
{
  \clef treble
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  %introduction

  % {d4 d d2 d4 d d2}
  \partial 8*2 fs16 gs as8
  % A section, 1 repeat
  \repeat volta 2{
    \mark \default
    b2\f b'4. fs8
    g4-> fs-> e g
    fs8 \grace a (g) fs \grace a (g) | fs e8 r d16 cs
    b2\> ~
    b4\! r
    fs'2\f  d'\prallup
    \grace b16(cs4) cs
    cs8 b as b
    cs4-> cs->
    cs8 (b as g)
    fs2\>  ~
    fs4\! \breathe \times 2/5 {fs8 es fs g gs }%\tuplet 3/2 {a8 as bf}
    a2 |
    b2
    a8 b a4
    d,4 e \breathe
    fs fs
    fs8 e d cs
    b4. \tuplet 3/2 {d16 cs b}
    as4\fermata \tuplet 3/2 {fs8\< gs8 as8} d4\!

    fs a
    d, e
    fs8 e d4
    cs  b ~ b8 b'
    fs4 d
  }
  \alternative{
    {
      %a4 f4
      b2~ b4 fs
    }
    {
      b2 ~
      b4 fs16 gs as8
    }
  }
  % B section, no repeat
  \break
  \mark \default
  {
    %\bar "||"
    %a8 b4 cs 8
    b2\pp b
    b4 c a c
    b2 b
    b4 c
    a  \tuplet 3/2 {e'8\f d c}
    %d4 \tuplet 3/2 {g8 f ef}

    b4\p r8 b8 b as r b16 c
    cs4 r8 cs8 cs b r cs d4 d d8 cs r b as2 fs
    cs' cs cs4 d8 cs
    b4 \tuplet 3/2 {fs'8 e d}
    cs2 cs cs4 d8 cs
    b4 \tuplet 3/2 {fs'8\f  e d}
    cs4 cs as fs
    fs8 as b cs
    d cs fs d
    b 4 r8 b'\> fs4 d b2\!
  }
  %C sectio
  \break

  \repeat volta 2{
    \mark \default
b8  cs r d
    e4-> e-> \glissando
    g2 \prallprall
    e4 e
    e8 d r cs
    d4-> d->\glissando
    fs2
    d4 d
    d8 cs r b
    cs4 cs
    as fs \breathe
    fs8 as b cs

  }
  \alternative {
    {d8 ^4 cs fs d b4 r8 b' fs4  d b2}
    {
      d8 ^"3 Solo"  cs b d fs2 ~
      fs4 \tuplet 3/2{cs'8 d e}|
      fs8 e d cs
      b8 a g fs
      fs2~
      fs2
    }

  }

}

secund = \relative c
{
  \clef bass
  \key b \minor
  \time 2/4
  r8*3
  \chordmode{
    b4:m b:m
    b:m r
    e4:m e:m
    e:m r
    b4:m b:m
    fs4:7 r
    b4:m b:m
    b:m r
    b4:m b:m
    b:m r

  }

}
harmonies = \chordmode {
  %A section
  s8*2
  b2*2:m

  e2*2:m
  b2:m
  fs2:7
  b2*4:m

  fs2*4
  b2*2:m

  d2
  g2*2 %b2*2:6

  d2
  fs2*2
  b2:m
  fs4*2:7
  d4*2

  a4*2

  e4*2:m
  fs4*2:7

  b4*12:m
  %B section

  b2*3:m
  a2:m
  b2*3:m
  a2:m
  b2*2:m

  fs2*2
  %r2
  d2*2
  fs2*2:7

  fs2*3
  b2:m
  fs2*3
  b2:m
  fs2*3
  fs2:7
  b2*3:m
  % C section
  b2:m
  e2*4:m
  d2*4
  fs2*3:7
  b2*4:m


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
