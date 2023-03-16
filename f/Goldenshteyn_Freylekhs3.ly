\version "2.20.0"
\include "english.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    r8 d16 d d8 d
    fs8 fs fs4
    fs8. d16 fs8 a|
    g8 fs ef d

    r8 d16 d d8 d|
    a'8 a a4
    g8. fs16 g8 a|

  }
  \alternative { { g8 fs(fs4)}{g8 fs r d |} }

  \repeat volta 2{
  \mark \default
    g4   bf16(a) g8|
    a16(bf)g8~g d
    g4 bf16(a)g8|
    a16(bf)g8~g d

    g4 bf16(a)g8|
    c8 bf a g
  }
  \alternative {
    {
      fs16 (g)a(g) fs(g)a(bf)
      a4 d8 d,
    }
    {
      fs16(g)a(g)fs(g) fs(ef)
      ef8 d(d4)
    }
  }
  \repeat volta 2{
  \break
  \mark \default
    d4-.  d'--
    c8 bf a g
    fs16(g)a(g) fs8. ef16|
    g8 fs~fs ef16(d)|

    d4-. d'--
    c8 bf a g
    fs16(g)a(g) fs8. ef16|
    ef8 d~d4|

  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d2*6
  c2:m
  d2*2
  %b
  g2*6:m
  d4*4
  d4 c4:m
  d2
  %c
  d4*13
  c4:m
  d2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Goldenshteyn Freylekhs #3"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
