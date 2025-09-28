\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose b c\relative c' {
  \clef treble
  \key b \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    fs8  b16 b b b b b
    c8.\prall(b16)c8 ds
    ds16(e)e(ds) ds(c)c(b)|
    b16(c)ds8~ ds16 c b a|
    fs8  b16 b b b b b|
    c8.\prall(b16)c8 ds|
    ds16(e)e(ds) ds(c)c(b)|

  }
  \alternative {
    { b2}{ b8 b cs ds \break}
  }

  \repeat volta 2{
  \mark \default
    \grace {ds (e)} e8 e e e
    e4~e16 ds e f
    fs8.\prall (e16) ds8.\prall(c16)|
    ds8\prall(c)c16(b) b(a)|

    a4~a16 ds e f
    fs8.\prall (e16) ds8.\prall(c16)|
    ds8\prall(c)c16(b) b(a)|

  }
  \alternative {
    { b8 b cs ds}
    {b2 }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
%these are in the transposed key!!!
harmonies = \chordmode {
  c2*6
  %r2*5
  bf2:m
  c2*2 % r2
  f2*4:m
  bf2*3:m
  c2
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
    title= "Khosidl"
    subtitle=""
    composer= "German Goldenshteyn"
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
