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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    r8 a16 a a8 a
    cs8 cs cs4
    cs8. a16 cs8 e|
    d8 cs bf a

    r8 a16 a a8 a|
    e'8 e e4
    d8. cs16 d8 e|

  }
  \alternative { { d8 cs(cs4)}{d8 cs r a |} }

  \repeat volta 2{
  \mark \default
    d4   f16(e) d8|
    e16(f)d8~d a
    d4 f16(e)d8|
    e16(f)d8~d a

    d4 f16(e)d8|
    g8 f e d
  }
  \alternative {
    {
      cs16 (d)e(d) cs(d)e(f)
      e4 a8 a,
    }
    {
      cs16(d)e(d)cs(d) cs(bf)
      bf8 a(a4)
    }
  }
  \repeat volta 2{
  \break
  \mark \default
    a4-.  a'--
    g8 f e d
    cs16(d)e(d) cs8. bf16|
    d8 cs~cs bf16(a)|

    a4-. a'--
    g8 f e d
    cs16(d)e(d) cs8. bf16|
    bf8 a~a4|

  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2*6
  g2:m
  a2*2
  %b
  d2*6:m
  a4*4
  a4 g4:m
  a2
  %c
  a4*13
  g4:m
  a2
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
