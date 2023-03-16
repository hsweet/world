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
melody =  \relative c'' {
  \clef treble
  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    a16 gs fs es fs8 es'16 fs|
    fs16 es d cs d cs b as
    b8. fs16 as b cs b|
    b2

    a16 gs fs es-4 e8-3 ds'16-1e|
    e16 ds d cs d cs b d
    cs4 bs16 cs d bs
    cs4 r16 es, fs gs|

    a16 gs fs es fs8 es'16 fs |
    fs16 es d cs d cs b as|
    b8. fs16 as b cs b|
    cs8 d(d)cs

    b16 a gs fs es fs gs a
    cs16 bs a bs a gs fs es
    fs8. cs16 es fs gs es

  }
  \alternative { { fs4 r}{fs4 r8 cs'-3 } }
  \break

  \repeat volta 2{
  \mark \default
    \mark \default
    cs8-3   a'-4 a a
    gs16 a a fs-2 es8-1 fs-2
    gs2-3~|
    gs4. fs8

    es16 fs gs8 gs gs
    fs16-3 es d es d cs b d
    cs8 fs cs fs
    cs4. cs8|

    cs8 fs fs es16 fs
    fs16 g g e e d d cs|
    b16 cs d8 d d
    d8 cs16 d e d cs b|

    b16 a gs fs es fs gs a
    cs16 bs a bs a gs fs es
    fs8. cs16 es fs gs es|
  }
  \alternative { { fs4 r8 cs8-3 }{ fs4 r8 cs8~| } }
  \break

  \repeat volta 2{
  \mark \default
    \mark \default
    cs8 bs'16 cs a bs-4 gs a|
    fs8 fs16 es fs gs a fs
    r8 es'16 fs d es cs d
    b8 b16 fs b cs d b|

    r8 gs'16-3 a-4 fs-2 gs es-1 fs
    d16-4 es cs d b16-2 cs d b
    cs16 bs a bs a gs fs es
    fs16 gs a bs cs4|

    r8 bs16 cs a bs-4 gs a
    fs8 fs16 es fs gs a fs
    r8 es'16 fs d es cs d
    b8 b16 fs b cs d b|

    r8 gs'16-3 a-4 fs gs es-1 fs
    d16-4 es cs d b cs d b
    cs16 bs a bs a gs fs es
    fs16 cs d es fs8 r
  }
}
secund = \relative c' {
  \clef treble
  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    fs4  gs
    a4 as
    b4 cs
    d4 b

    e,4 fs
    g4 gs
    a4 b
    cs4 cs

    fs,4  gs
    a4 as
    b4 cs
    d4 b|

    r8 <cs a cs'>8(<cs a cs'>)<cs a cs'>~|
    <cs a cs'>8 <cs a cs'>(<cs a cs'>)<cs a cs'>|
    fs,8 fs(fs) fs
  }
  \alternative {
    {a16 gs fs es fs8 cs' }
    {fs,8 fs'16 fs cs8 a }
  }

  \repeat volta 2{
  \mark \default
    fs8 fs'cs fs
    fs, fs' cs fs
    gs,8. gs16 bs8 ds|
    gs8 ds bs4|

    b2
    cs2
    cs8 fs cs fs
    cs8 cs16 cs cs b a gs|

    fs4 gs
    a4 as
    b4 cs
    d4 b|

    r8 <cs a cs'>8(<cs a cs'>)<cs a cs'>~|
    <cs a cs'>8 <cs a cs'>(<cs a cs'>)<cs a cs'>|
    fs,8 fs(fs) fs
  }

  \alternative {
    {a16 gs fs es fs8 cs' }
    {fs8 cs fs, r}
  }

  \repeat volta 2{
  \mark \default
    \chordmode{
      fs4:m^3 fs4:m^3
      fs4:m^3 fs4:m^3
      fs4:7^3 fs4:7^3
      b4:m^3/fs b4:m^3/fs  %chord inversion
      %and remove thirds

      cs4^5/es  cs4^5/es
      cs4^5/es  cs4^5/es
      cs4^5/es  cs4^5/es
      fs4:m^3 fs4:m^3
    }
    fs4 cs'
    a4 cs
    as4 fs
    b4 d

    r8 <cs gs' cs>8(<cs gs' cs>)<cs gs' cs>~
    <cs gs' cs>8 <cs gs' cs>(<cs gs' cs>)<cs gs' cs>~
    <cs gs' cs>8 <cs gs' cs>(<cs gs' cs>)<cs gs' cs>8
    a16 gs fs es gs8 r
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  fs4*3:m
  %r4
  fs4:7
  b2*2:m
  %r2
  e2*2
  %r2
  a2
  cs2:7
  fs4*3:m
  %r4
  fs4:7
  b2:m
  d2:dim7
  fs2:m/cs
  cs2:7
  fs4:m
  cs4:7
  fs2:m
  fs2:m
  %B part
  fs2*2:m
  %r2
  gs2*2
  %r2
  b2:m6
  cs2:7
  fs2*2:m
  %r2
  fs2*2:7
  %r2
  b2:m
  d2:dim7
  fs2:m/cs
  cs2:7
  fs4:m
  cs4:7
  fs2*2:m
  %r2
  %C part
  fs2*2:m
  %r2
  fs2:7
  b2:m
  cs2*3:7
  %r2*2
  fs4:m
  cs4:7
  fs2*2:m
  %r2
  fs2:7
  b2:m
  cs2*3:7
  %r2*2
  fs2:m

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
