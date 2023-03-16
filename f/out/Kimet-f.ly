\version "2.18.0"
\language "english"
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

  e8 e d cs
  e8 e fs4
  e4 r
  e8 e d cs
  e8 e d4
  cs 4 r

  e8 e d cs
  e8 e fs4
  e4 r
  cs8 cs b a
  cs8 cs b4
  a4 r
}

melody = {
  <<
    \clef treble
    \key a \major
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
  a2
  a4
  d4
  a2
  a2
  a4
  e4:7
  a2
  a2
  a4
  d4
  a2
  a2
  a4
  e4:7
  a2
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
