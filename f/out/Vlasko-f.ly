\version "2.18.0"
\include "english.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }


intro = {
  b,8 c ds e
  fs2
}

ebab = {
  b,8 fs e fs
  b,8 fs e fs
}

common = {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
primas = \relative c' {
  \common
  %\override Staff.TimeSignature.stencil = ##f

  %\partial 16*3 a16 d f   %lead in notes

  %{

    \intro

      c8. b16 gis8 g
      g2\fermata
      r1
      \intro
      d8 c b gis
      b gis gis g
      g2\fermata
      r1

      d'8 c b gis
      b gis gis g
      g8 f e cis
      c2\fermata|
  %}
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default

    %\override Staff.TimeSignature.stencil = ##t
    #(set-paper-size "letter")
    #(set-paper-size "letter")
    b8 c ds e|
    fs4\prall e8 ds|
    ds8 c e c|
    ds4\prall c8 b|

    b8  c ds e
    fs4\prall e8 ds
    ds8 c e c
    ds2\prall

    b8  c ds e
    fs4\prall e8 ds
    ds8 c e c
    ds4\prall c8 b|

    b8 fs e' fs,
    b8 fs e' fs,
    ds'4\prall c\prall
    b4 r
    \break
  }

  \repeat volta 2{
  \mark \default
    b8 fs e' fs, %17
    b8 fs e' fs,
    ds'8 ds c a %19
    b8 fs fs' fs,

    b8 fs e' fs,%21
    b8 fs e' fs,
    ds'4\prall c8 c
    b4 r
    \break
  }

  \repeat volta 2{
  \mark \default
    a8 b b\prall fs
    b8 fs e' fs,
    ds'4\prall c8 a
    b8 fs fs' fs,|

    a4 b->\prall ~
    b8 fs e' fs,
    ds'4\prall c\prall
    b4 r

  }
  % \alternative { { }{ } }
  %\override Staff.TimeSignature.stencil = ##f
}
secund = \relative c'{
  \common
  \repeat volta 2{
  \mark \default
    b'2 ~ b2 ~ b2 ~ b2 ~ b2 ~ b2 ~b2 ~b2
    ds8 e fs g a4\prall g8 fs
    fs8\prall e g e
    fs4\prall
    e8 ds

    ds8 c b a
    b8 a g fs
    b4\prall a8  b
    b4 r
  }
  \repeat volta 2{
  \mark \default
    b8 b c a
    b8 b c a
    b4 a8 c
    b8 a g fs

    b8 b c a
    b8 b c a
    b8 fs a a
    b4 r

  }

  \repeat volta 2{
  \mark \default
    a4 b8 fs
    b8 fs c' a
    b8 fs a c
    b8 a g fs

    a4 b->\prall ~
    b8 fs c' fs,
    b8 fs g a
    b4 r

  }
}


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b2
  s2*11
  a2:m
  s2*2
  b2
  %b
  s2*6
  a2:m
  b2
  s2*2
  %c
  a2:m
  s2
  b2
  s2
  a2:m
  b2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \primas
    \new Staff \secund
  >>
  \header{
    title= "Vlasko"
    subtitle="Bulgaria"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
