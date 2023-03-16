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
melody =  \relative c'' {
  \clef treble
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

   \repeat volta 2{
     \mark \default
   ds8. c16 e8 e
   ds8. (c16) ds16( c b a)
   ds8. c16 e8 e
   }
   \alternative{
    {a,4 a'8 a}
    {a,4 r8 a}
   }
   \break
   \repeat volta 2{
   \mark \default
   gs8 b r d
   c b c a
   gs8 b r d
   c gs8 a r
   }
  \break
   \repeat volta 2{
   \mark \default
   e4  gs8 b
   a8 a b gs
   gs b r d8 |
   c gs a4
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
    \tempo 4 = 80
  }
}
