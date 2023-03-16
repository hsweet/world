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
notes = \relative c'' {

  fis8 fis e dis
  fis8 fis gis4
  fis4 r
  fis8 fis e dis
  fis8 fis e4
  dis 4 r

  fis8 fis e dis
  fis8 fis gis4
  fis4 r
  dis8 dis cis b
  dis8 dis cis4
  b4 r
}

melody = {
  <<
    \clef treble
    \key b \major
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
  b2
  b4
  e4
  b2
  b2
  b4
  fis4:7
  b2
  b2
  b4
  e4
  b2
  b2
  b4
  fis4:7
  b2
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
