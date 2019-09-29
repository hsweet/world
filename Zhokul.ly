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
melody = \transpose d c \relative c''' {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    ais8.\trill g16 b8 b
    ais8.\trill (g16)ais(g fis e)|
    ais8.\trill g16 b8 b

  }
  \alternative {
    { e,4 \grace dis' (e8) e }
    { e,4 r8 e \break}
  }

  \repeat volta 2{
  \mark \default
    dis16 (e) fis8~fis fis16(a)|
    g16(fis e dis) e( fis g e)|
    dis16 (e) fis8~fis fis16(a)|

  }
  \alternative {
    {g16(fis e dis)e8 e, }
    {g'16(fis e dis) e8 r \break}
  }

  \repeat volta 2{
  \mark \default
    b,4 b16(dis fis a)|
    g16(fis e dis)e(fis g e)|
    dis16 (e) fis8~fis fis16(a)|
    g16(fis e dis)e8 r

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
