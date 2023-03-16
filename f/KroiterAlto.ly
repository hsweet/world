\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody =  \relative c' {
  \clef alto
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    c16 b a gs a8 gs'16 a|
    a16 gs f e f e d cs
    d8. a16 cs d e d|
    d2

    c16 b a gs-4 g8-3 fs'16-1g|
    g16 fs f e f e d f
    e4 ds16 e f ds
    e4 r16 gs, a b|

    c16 b a gs a8 gs'16 a |
    a16 gs f e f e d cs|
    d8. a16 cs d e d|
    e8 f(f)e

    d16 c b a gs a b c
    e16 ds c ds c b a gs
    a8. e16 gs a b gs

  }
  \alternative { { a4 r}{a4 r8 e'-3 } }
  \break

  \repeat volta 2{
  \mark \default
    \mark \default
    e8-3   c'-4 c c
    b16 c c a-2 gs8-1 a-2
    b2-3~|
    b4. a8

    gs16 a b8 b b
    a16-3 gs f gs f e d f
    e8 a e a
    e4. e8|

    e8 a a gs16 a
    a16 bf bf g g f f e|
    d16 e f8 f f
    f8 e16 f g f e d|

    d16 c b a gs a b c
    e16 ds c ds c b a gs
    a8. e16 gs a b gs|
  }
  \alternative { { a4 r8 e8-3 }{ a4 r8 e8~| } }
  \break

  \repeat volta 2{
  \mark \default
    \mark \default
    e8 ds'16 e c ds-4 b c|
    a8 a16 gs a b c a
    r8 gs'16 a f gs e f
    d8 d16 a d e f d|

    r8 b'16-3 c-4 a-2 b gs-1 a
    f16-4 gs e f d16-2 e f d
    e16 ds c ds c b a gs
    a16 b c ds e4|

    r8 ds16 e c ds-4 b c
    a8 a16 gs a b c a
    r8 gs'16 a f gs e f
    d8 d16 a d e f d|

    r8 b'16-3 c-4 a b gs-1 a
    f16-4 gs e f d e f d
    e16 ds c ds c b a gs
    a16 e f gs a8 r
  }
}
secund = \relative c'' {
  \clef alto
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a,4  b
    c4 cs
    d4 e
    f4 d

    g,4 a
    bf4 b
    c4 d
    e4 e

    a,4  b
    c4 cs
    d4 e
    f4 d|

    r8 <e c e'>8(<e c e'>)<e c e'>~|
    <e c e'>8 <e c e'>(<e c e'>)<e c e'>|
    a,8 a(a) a
  }
  \alternative {
    {c16 b a gs a8 e' }
    {a,8 a'16 a e8 c }
  }

  \repeat volta 2{
  \mark \default
    a8 a'e a
    a, a' e a
    b,8. b16 ds8 fs|
    b8 fs ds4|

    d2
    e2
    e8 a e a
    e8 e16 e e d c b|

    a4 b
    c4 cs
    d4 e
    f4 d|

    r8 <e c e'>8(<e c e'>)<e c e'>~|
    <e c e'>8 <e c e'>(<e c e'>)<e c e'>|
    a,8 a(a) a
  }

  \alternative {
    {c16 b a gs a8 e' }
    {a8 e a, r}
  }

  \repeat volta 2{
  \mark \default
    \chordmode{
      a,4:m^3 a,4:m^3
      a,4:m^3 a,4:m^3
      a,4:7^3 a,4:7^3
      d4:m^3/a d4:m^3/a  %chord inversion
      %and remove thirds

      e4^5/gs  e4^5/gs
      e4^5/gs  e4^5/gs
      e4^5/gs  e4^5/gs
      a,4:m^3 a,4:m^3
    }
    a4 e'
    c4 e
    cs4 a
    d4 f

    r8 <e b' e>8(<e b' e>)<e b' e>~
    <e b' e>8 <e b' e>(<e b' e>)<e b' e>~
    <e b' e>8 <e b' e>(<e b' e>)<e b' e>8
    c16 b a gs b8 r
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a4*3:m
  %r4
  a4:7
  d2*2:m
  %r2
  g2*2
  %r2
  c2
  e2:7
  a4*3:m
  %r4
  a4:7
  d2:m
  f2:dim7
  a2:m/e
  e2:7
  a4:m
  e4:7
  a2:m
  a2:m
  %B part
  a2*2:m
  %r2
  b2*2
  %r2
  d2:m6
  e2:7
  a2*2:m
  %r2
  a2*2:7
  %r2
  d2:m
  f2:dim7
  a2:m/e
  e2:7
  a4:m
  e4:7
  a2*2:m
  %r2
  %C part
  a2*2:m
  %r2
  a2:7
  d2:m
  e2*3:7
  %r2*2
  a4:m
  e4:7
  a2*2:m
  %r2
  a2:7
  d2:m
  e2*3:7
  %r2*2
  a2:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff  \melody
    \new Staff \secund
  >>
  \header{
    title= "Kroiter Hora"
    subtitle=""
    composer= "Emil Kroiter"
    instrument =""
    arranger= "Jeff Warshauer"
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}


%{
convert-ly (GNU LilyPond) 2.14.2 Processing `'...  Applying
conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18,
2.13.20, 2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42,
2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0
%}
