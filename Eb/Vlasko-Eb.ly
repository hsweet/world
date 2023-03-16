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
  cs'8 d' es' fs'
  gs'2
}

ebab = {
  cs'8 gs' fs' gs'
  cs'8 gs' fs' gs'
}

common = {
  \clef treble
  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
primas = \relative c'' {
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
    cs8 d es fs|
    gs4\prall fs8 es|
    es8 d fs d|
    es4\prall d8 cs|

    cs8  d es fs
    gs4\prall fs8 es
    es8 d fs d
    es2\prall

    cs8  d es fs
    gs4\prall fs8 es
    es8 d fs d
    es4\prall d8 cs|

    cs8 gs fs' gs,
    cs8 gs fs' gs,
    es'4\prall d\prall
    cs4 r
    \break
  }

  \repeat volta 2{
  \mark \default
    cs8 gs fs' gs, %17
    cs8 gs fs' gs,
    es'8 es d b %19
    cs8 gs gs' gs,

    cs8 gs fs' gs,%21
    cs8 gs fs' gs,
    es'4\prall d8 d
    cs4 r
    \break
  }

  \repeat volta 2{
  \mark \default
    b8 cs cs\prall gs
    cs8 gs fs' gs,
    es'4\prall d8 b
    cs8 gs gs' gs,|

    b4 cs->\prall ~
    cs8 gs fs' gs,
    es'4\prall d\prall
    cs4 r

  }
  % \alternative { { }{ } }
  %\override Staff.TimeSignature.stencil = ##f
}
secund = \relative c''{
  \common
  \repeat volta 2{
  \mark \default
    cs2 ~ cs2 ~ cs2 ~ cs2 ~ cs2 ~ cs2 ~cs2 ~cs2
    es8 fs gs a b4\prall a8 gs
    gs8\prall fs a fs
    gs4\prall
    fs8 es

    es8 d cs b
    cs8 b a gs
    cs4\prall b8  cs
    cs4 r
  }
  \repeat volta 2{
  \mark \default
    cs8 cs d b
    cs8 cs d b
    cs4 b8 d
    cs8 b a gs

    cs8 cs d b
    cs8 cs d b
    cs8 gs b b
    cs4 r

  }

  \repeat volta 2{
  \mark \default
    b4 cs8 gs
    cs8 gs d' b
    cs8 gs b d
    cs8 b a gs

    b4 cs->\prall ~
    cs8 gs d' gs,
    cs8 gs a b
    cs4 r

  }
}


%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  cs2
  s2*11
  b2:m
  s2*2
  cs2
  %b
  s2*6
  b2:m
  cs2
  s2*2
  %c
  b2:m
  s2
  cs2
  s2
  b2:m
  cs2
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
