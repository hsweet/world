\version "2.24.0"
\language "english"
%\pointAndClickOff

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose e a \relative c {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e8  [a c a]
    e8 [a c a]
    e'8 [e ds c]
    b4 b
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    e8. [fs16 g8 g]
    a8 [g fs e]
    fs8[e ds c]|
  }
  \alternative { {b4 b }{a4 a } }

  \repeat volta 2{
  \mark \default
    e8 \downbow a16\downbow b\upbow c(b)a8|
    e8 \downbow a16\downbow b\upbow c(b)a8|
    e'8 e ds c16(b)
    b4 b|
  }


  \repeat volta 2{
  \mark \default
    e8 \downbow -. e16\downbow fs\upbow g8\downbow -.fs16 \downbow -> g\upbow |
    a8-. g-. \grace{fs (g)} fs -> e-.
    g16(fs) e8-> -. ds8 c16->(b)
  }
  \alternative { { \grace a b4 b}{a4 a } }
}
%################################# Lyrics #####################
\addlyrics{
  Ha meg -- fo -- gom
  az or -- do  got,
  a la -- da -- ba -- za -- rom
  aj la la la...
}

\addlyrics{
  Men -- nel job -- ban
  fic -- kan -- do -- zik,
  an -- nal job -- ban ra -- zom.
}
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Rokatanc"
    subtitle="Urgros 4"
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}


%{
convert-ly (GNU LilyPond) 2.14.2 Processing `'...  Applying
conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18,
2.13.20, 2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42,
2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0
%}
