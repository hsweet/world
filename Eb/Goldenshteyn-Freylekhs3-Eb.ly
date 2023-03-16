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
melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    r8 b16 b b8 b
    ds8 ds ds4
    ds8. b16 ds8 fs|
    e8 ds c b

    r8 b16 b b8 b|
    fs'8 fs fs4
    e8. ds16 e8 fs|

  }
  \alternative { { e8 ds(ds4)}{e8 ds r b |} }

  \repeat volta 2{
  \mark \default
    e4   g16(fs) e8|
    fs16(g)e8~e b
    e4 g16(fs)e8|
    fs16(g)e8~e b

    e4 g16(fs)e8|
    a8 g fs e
  }
  \alternative {
    {
      ds16 (e)fs(e) ds(e)fs(g)
      fs4 b8 b,
    }
    {
      ds16(e)fs(e)ds(e) ds(c)
      c8 b(b4)
    }
  }
  \repeat volta 2{
  \break
  \mark \default
    b4-.  b'--
    a8 g fs e
    ds16(e)fs(e) ds8. c16|
    e8 ds~ds c16(b)|

    b4-. b'--
    a8 g fs e
    ds16(e)fs(e) ds8. c16|
    c8 b~b4|

  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b2*6
  a2:m
  b2*2
  %b
  e2*6:m
  b4*4
  b4 a4:m
  b2
  %c
  b4*13
  a4:m
  b2
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
