\version "2.18.0"
%moved \header into \score for includes to work

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

%#################################### Melody ########################
notes = \relative c' {

  a'8 a g fis
  a8 a b4
  a4 r
  a8 a g fis
  a8 a g4
  fis 4 r

  a8 a g fis
  a8 a b4
  a4 r
  fis8 fis e d
  fis8 fis e4
  d4 r
}

melody = {
  <<
    \clef treble
    \key d \major
    \time 2/4
   % \transpose c c'\notes
    \\
    \notes
  >>
}

%################################# Lyrics #####################
%\addlyrics{ Doe a deer }
%################################# Chords #######################
harmonies = \chordmode {
  d2
  d4
  g4
  d2
  d2
  d4
  a4:7
  d2
  d2
  d4
  g4
  d2
  d2
  d4
  a4:7
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
    title= "Kiment"
    subtitle=""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
