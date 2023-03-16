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
melody = \transpose b a \relative c'' {
  \clef treble
  \key cis \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    fisis8.\trill e16 gis8 gis
    fisis8.\trill (e16)fisis(e dis cis)|
    fisis8.\trill e16 gis8 gis

  }
  \alternative {
    { cis,4 \grace bis' (cis8) cis }
    { cis,4 r8 cis \break}
  }

  \repeat volta 2{
  \mark \default
    bis16 (cis) dis8~dis dis16(fis)|
    e16(dis cis bis) cis( dis e cis)|
    bis16 (cis) dis8~dis dis16(fis)|

  }
  \alternative {
    {e16(dis cis bis)cis8 cis, }
    {e'16(dis cis bis) cis8 r \break}
  }

  \repeat volta 2{
  \mark \default
    gis,4 gis16(bis dis fis)|
    e16(dis cis bis)cis(dis e cis)|
    bis16 (cis) dis8~dis dis16(fis)|
    e16(dis cis bis)cis8 r

  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>
  \header{
    title= "Zhokul Rezeshilor"
    subtitle="Moldavian Dance"
    composer= "German Goldensteyn"
    instrument =""
    arranger= ""
  }
  \layout{indent = 0.0\cm }
  \midi{
    \tempo 4 = 120
  }
}
