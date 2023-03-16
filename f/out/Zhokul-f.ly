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
melody = \transpose a, g, \relative c'' {
  \clef treble
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    es8.\trill d16 fs8 fs
    es8.\trill (d16)es(d cs b)|
    es8.\trill d16 fs8 fs

  }
  \alternative {
    { b,4 \grace as' (b8) b }
    { b,4 r8 b \break}
  }

  \repeat volta 2{
  \mark \default
    as16 (b) cs8~cs cs16(e)|
    d16(cs b as) b( cs d b)|
    as16 (b) cs8~cs cs16(e)|

  }
  \alternative {
    {d16(cs b as)b8 b, }
    {d'16(cs b as) b8 r \break}
  }

  \repeat volta 2{
  \mark \default
    fs4 fs16(as cs e)|
    d16(cs b as)b(cs d b)|
    as16 (b) cs8~cs cs16(e)|
    d16(cs b as)b8 r

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
