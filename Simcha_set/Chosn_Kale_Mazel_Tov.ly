\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose d c \relative c' {
  \clef treble
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 8*3 b8 e g  %lead in notes

  \repeat volta 2{
  \mark \default
    b4 b as b
    g8 fs e4(e8)b e g|
    b4 b as g|
    cs8 d b4(b8) b cs d|%4

    e4 b as b
    g8 fs e4(e8) e fs g
    a4. c8 b a g fs
    e1|

  }


  %\repeat volta 2{
  \mark \default
  r2 r8 e'  ds [e]
  c4 r r8 e ds [e]
  b4  r r8 fs g [a] %?
  b4 b b b
  b8. a16 g8 a b e ds e|
  c4 r r8 e8 ds ^\markup{ play out } [e]
  % }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose d c \chordmode {
  s8*3 e1*6:m  a2:m b2:7 e1:m
  %b section
  s2 e2:m s1*2 b1:7 s2 e2:m a1:m
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
    title= "Chosn Kalah Mazel Tov"
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
