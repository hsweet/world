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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    g16 fs e ds e8 ds'16 e|
    e16 ds c b c b a gs
    a8. e16 gs a b a|
    a2

    g16 fs e ds-4 d8-3 cs'16-1d|
    d16 cs c b c b a c
    b4 as16 b c as
    b4 r16 ds, e fs|

    g16 fs e ds e8 ds'16 e |
    e16 ds c b c b a gs|
    a8. e16 gs a b a|
    b8 c(c)b

    a16 g fs e ds e fs g
    b16 as g as g fs e ds
    e8. b16 ds e fs ds

  }
  \alternative { { e4 r}{e4 r8 b'-3 } }
  \break

  \repeat volta 2{
  \mark \default
    \mark \default
    b8-3   g'-4 g g
    fs16 g g e-2 ds8-1 e-2
    fs2-3~|
    fs4. e8

    ds16 e fs8 fs fs
    e16-3 ds c ds c b a c
    b8 e b e
    b4. b8|

    b8 e e ds16 e
    e16 f f d d c c b|
    a16 b c8 c c
    c8 b16 c d c b a|

    a16 g fs e ds e fs g
    b16 as g as g fs e ds
    e8. b16 ds e fs ds|
  }
  \alternative { { e4 r8 b8-3 }{ e4 r8 b8~| } }
  \break

  \repeat volta 2{
  \mark \default
    \mark \default
    b8 as'16 b g as-4 fs g|
    e8 e16 ds e fs g e
    r8 ds'16 e c ds b c
    a8 a16 e a b c a|

    r8 fs'16-3 g-4 e-2 fs ds-1 e
    c16-4 ds b c a16-2 b c a
    b16 as g as g fs e ds
    e16 fs g as b4|

    r8 as16 b g as-4 fs g
    e8 e16 ds e fs g e
    r8 ds'16 e c ds b c
    a8 a16 e a b c a|

    r8 fs'16-3 g-4 e fs ds-1 e
    c16-4 ds b c a b c a
    b16 as g as g fs e ds
    e16 b c ds e8 r
  }
}
secund = \relative c {
  \clef alto
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e4  fs
    g4 gs
    a4 b
    c4 a

    d,4 e
    f4 fs
    g4 a
    b4 b

    e,4  fs
    g4 gs
    a4 b
    c4 a|

    r8 <b g b'>8(<b g b'>)<b g b'>~|
    <b g b'>8 <b g b'>(<b g b'>)<b g b'>|
    e,8 e(e) e
  }
  \alternative {
    {g16 fs e ds e8 b' }
    {e,8 e'16 e b8 g }
  }

  \repeat volta 2{
  \mark \default
    e8 e'b e
    e, e' b e
    fs,8. fs16 as8 cs|
    fs8 cs as4|

    a2
    b2
    b8 e b e
    b8 b16 b b a g fs|

    e4 fs
    g4 gs
    a4 b
    c4 a|

    r8 <b g b'>8(<b g b'>)<b g b'>~|
    <b g b'>8 <b g b'>(<b g b'>)<b g b'>|
    e,8 e(e) e
  }

  \alternative {
    {g16 fs e ds e8 b' }
    {e8 b e, r}
  }

  \repeat volta 2{
  \mark \default
    \chordmode{
      e4:m^3 e4:m^3
      e4:m^3 e4:m^3
      e4:7^3 e4:7^3
      a4:m^3/e a4:m^3/e  %chord inversion
      %and remove thirds

      b4^5/ds  b4^5/ds
      b4^5/ds  b4^5/ds
      b4^5/ds  b4^5/ds
      e4:m^3 e4:m^3
    }
    e4 b'
    g4 b
    gs4 e
    a4 c

    r8 <b fs' b>8(<b fs' b>)<b fs' b>~
    <b fs' b>8 <b fs' b>(<b fs' b>)<b fs' b>~
    <b fs' b>8 <b fs' b>(<b fs' b>)<b fs' b>8
    g16 fs e ds fs8 r
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e4*3:m
  %r4
  e4:7
  a2*2:m
  %r2
  d2*2
  %r2
  g2
  b2:7
  e4*3:m
  %r4
  e4:7
  a2:m
  c2:dim7
  e2:m/b
  b2:7
  e4:m
  b4:7
  e2:m
  e2:m
  %B part
  e2*2:m
  %r2
  fs2*2
  %r2
  a2:m6
  b2:7
  e2*2:m
  %r2
  e2*2:7
  %r2
  a2:m
  c2:dim7
  e2:m/b
  b2:7
  e4:m
  b4:7
  e2*2:m
  %r2
  %C part
  e2*2:m
  %r2
  e2:7
  a2:m
  b2*3:7
  %r2*2
  e4:m
  b4:7
  e2*2:m
  %r2
  e2:7
  a2:m
  b2*3:7
  %r2*2
  e2:m

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
