\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose fs g,\relative c'' {
  \clef treble
  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    cs8  fs16 fs fs fs fs fs
    g8.\prall(fs16)g8 as
    as16(b)b(as) as(g)g(fs)|
    fs16(g)as8~ as16 g fs e|
    cs8  fs16 fs fs fs fs fs|
    g8.\prall(fs16)g8 as|
    as16(b)b(as) as(g)g(fs)|

  }
  \alternative {
    { fs2}{ fs8 fs gs as \break}
  }

  \repeat volta 2{
  \mark \default
    \grace {as (b)} b8 b b b
    b4~b16 as b c
    cs8.\prall (b16) as8.\prall(g16)|
    as8\prall(g)g16(fs) fs(e)|

    e4~e16 as b c
    cs8.\prall (b16) as8.\prall(g16)|
    as8\prall(g)g16(fs) fs(e)|

  }
  \alternative {
    { fs8 fs gs as}
    {fs2 }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
%these are in the transposed key!!!
harmonies = \chordmode {
  g2*6
  %r2*5
  f2:m
  g2*2 % r2
  c2*4:m
  f2*3:m
  g2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Khosidl"
    subtitle=""
    composer= "German Goldenshteyn"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
