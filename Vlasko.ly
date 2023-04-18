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
  e8 f gs a
  b2
}

ebab = {
  e8 b a b
  e8 b a b
}

common = {
  \clef treble
  \key a \minor
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
    e8 f gs a|
    b4\prall a8 gs|
    gs8 f a f|
    gs4\prall f8 e|

    e8  f gs a
    b4\prall a8 gs
    gs8 f a f
    gs2\prall

    e8  f gs a
    b4\prall a8 gs
    gs8 f a f
    gs4\prall f8 e|

    e8 b a' b,
    e8 b a' b,
    gs'4\prall f\prall
    e4 r
    \break
  }

  \repeat volta 2{
  \mark \default
    e8 b a' b, %17
    e8 b a' b,
    gs'8 gs f d %19
    e8 b b' b,

    e8 b a' b,%21
    e8 b a' b,
    gs'4\prall f8 f
    e4 r
    \break
  }

  \repeat volta 2{
  \mark \default
    d8 e e\prall b
    e8 b a' b,
    gs'4\prall f8 d
    e8 b b' b,|

    d4 e->\prall ~
    e8 b a' b,
    gs'4\prall f\prall
    e4 r

  }
  % \alternative { { }{ } }
  %\override Staff.TimeSignature.stencil = ##f
}
secund = \relative c'{
  \common
  \repeat volta 2{
  \mark \default
    e2 ~ e2 ~ e2 ~ e2 ~ e2 ~ e2 ~e2 ~e2
    gs8 a b c d4\prall c8 b
    b8\prall a c a
    b4\prall
    a8 gs

    gs8 f e d
    e8 d c b
    e4\prall d8  e
    e4 r
  }
  \repeat volta 2{
  \mark \default
    e8 e f d
    e8 e f d
    e4 d8 f
    e8 d c b

    e8 e f d
    e8 e f d
    e8 b d d
    e4 r

  }

  \repeat volta 2{
  \mark \default
    d4 e8 b
    e8 b f' d
    e8 b d f
    e8 d c b

    d4 e->\prall ~
    e8 b f' b,
    e8 b c d
    e4 r

  }
}


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e2
  s2*11
  d2:m
  s2*2
  e2
  %b
  s2*6
  d2:m
  e2
  s2*2
  %c
  d2:m
  s2
  e2
  s2
  d2:m
  e2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \primas
    \new Staff \secund
  >>
  \header{
    title= "Vlasko"
    subtitle="Bulgaria"
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
