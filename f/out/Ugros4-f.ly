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
melody = \transpose b, e \relative c {
  \clef treble
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b8  [e g e]
    b8 [e g e]
    b'8 [b as g]
    fs4 fs
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    b8. [cs16 d8 d]
    e8 [d cs b]
    cs8[b as g]|
  }
  \alternative { {fs4 fs }{e4 e } }

  \repeat volta 2{
  \mark \default
    b8 \downbow e16\downbow fs\upbow g(fs)e8|
    b8 \downbow e16\downbow fs\upbow g(fs)e8|
    b'8 b as g16(fs)
    fs4 fs|
  }


  \repeat volta 2{
  \mark \default
    b8 \downbow -. b16\downbow cs\upbow d8\downbow -.cs16 \downbow -> d\upbow |
    e8-. d-. \grace{cs (d)} cs -> b-.
    d16(cs) b8-> -. as8 g16->(fs)
  }
  \alternative { { \grace e fs4 fs}{e4 e } }
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
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Rokatanc"
    subtitle="Urgros 4"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}


%{
convert-ly (GNU LilyPond) 2.14.2 Processing `'...  Applying
conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18,
2.13.20, 2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42,
2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0
%}
