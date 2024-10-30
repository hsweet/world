\version "2.18.0"
\language "english"
\pointAndClickOff

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
    as8.\trill g16 b8 b
    as8.\trill (g16)as(g fs e)|
    as8.\trill g16 b8 b

  }
  \alternative {
    { e,4 \grace ds' (e8) e }
    { e,4 r8 e \break}
  }

  \repeat volta 2{
  \mark \default
    ds16 (e) fs8~fs fs16(a)|
    g16(fs e ds) e( fs g e)|
    ds16 (e) fs8~fs fs16(a)|

  }
  \alternative {
    {g16(fs e ds)e8 e, }
    {g'16(fs e ds) e8 r \break}
  }

  \repeat volta 2{
  \mark \default
    b,4 b16(ds fs a)|
    g16(fs e ds)e(fs g e)|
    ds16 (e) fs8~fs fs16(a)|
    g16(fs e ds)e8 r

  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \melody
  >>
  \header{
    title= "Zhokul Rezeshilor"
    subtitle="Moldavian Dance"
    composer= "German Goldensteyn"
    instrument = "Eb"
    arranger= ""
  }
  \layout{indent = 0.0\cm }
  \midi{
    \tempo 4 = 120
  }
}
