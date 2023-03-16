\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose b a \relative c'' {
  \clef treble
  \key cis \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  \partial 8*3 gis8 cis e  %lead in notes

  \repeat volta 2{
  \mark \default
    gis4 gis fisis gis
    e8 dis cis4(cis8)gis cis e|
    gis4 gis fisis e|
    ais8 b gis4(gis8) gis ais b|%4

    cis4 gis fisis gis
    e8 dis cis4(cis8) cis dis e
    fis4. a8 gis fis e dis
    cis1|

  }


  %\repeat volta 2{
  \mark \default
  r2 r8 cis'  bis [cis]
  a4 r r8 cis bis [cis]
  gis4  r r8 dis e [fis] %?
  gis4 gis gis gis
  gis8. fis16 e8 fis gis cis bis cis|
  a4 r r8 cis8 bis ^\markup{ play out } [cis]
  % }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose b a \chordmode {
  s8*3 cis1*6:m  fis2:m gis2:7 cis1:m
  %b section
  s2 cis2:m s1*2 gis1:7 s2 cis2:m fis1:m
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
