\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

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
    fis8 fis fis4
    fis8. d16 fis8 a|
    g8 fis ees d

    r8 d16 d d8 d|
    a'8 a a4
    g8. fis16 g8 a|

  }
  \alternative { { g8 fis(fis4)}{g8 fis r d |} }

  \repeat volta 2{
  \mark \default
    g4   bes16(a) g8|
    a16(bes)g8~g d
    g4 bes16(a)g8|
    a16(bes)g8~g d

    g4 bes16(a)g8|
    c8 bes a g
  }
  \alternative {
    {
      fis16 (g)a(g) fis(g)a(bes)
      a4 d8 d,
    }
    {
      fis16(g)a(g)fis(g) fis(ees)
      ees8 d(d4)
    }
  }
  \repeat volta 2{
  \mark \default
    d4-. ^\markup {\box C} d'--
    c8 bes a g
    fis16(g)a(g) fis8. ees16|
    g8 fis~fis ees16(d)|

    d4-. d'--
    c8 bes a g
    fis16(g)a(g) fis8. ees16|
    ees8 d~d4|

  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d2*6
  %r2*5
  c2:m
  d2*2
  %r2
  %b
  g2*6:m
  %r2*5
  d4*5
  %r4*3
  c4:m
  d2
  %c
  d4*13
  %r4*11
  c4:m
  d2
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
    title= "Goldenshteyn Freylekhs #3"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "J. Warschauer"
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
