\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody =  \relative c''' {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

   \repeat volta 2{
     \mark \default
   gs8. f16 a8 a
   gs8. (f16) gs16( f e d)
   gs8. f16 a8 a
   }
   \alternative{
    {d,4 d'8 d}
    {d,4 r8 d}
   }
   \break
   \repeat volta 2{
   \mark \default
   cs8 e r g
   f e f d
   cs8 e r g
   f cs8 d r
   }
  \break
   \repeat volta 2{
   \mark \default
   a,4  cs8 e
   d8 d e cs
   cs e r g8 |
   f cs d4
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
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff \melody
  >>
  \header{
    title= "Zhokul Rezeshilor"
    subtitle="Moldavian Dance"
    composer= "German Goldensteyn"
    instrument = "Violin"
    arranger= ""
  }
  \layout{indent = 0.0\cm }
  \midi{
    \tempo 4 = 80
  }
}
