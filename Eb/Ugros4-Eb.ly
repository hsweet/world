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
melody = \transpose cis' fis' \relative c' {
  \clef treble
  \key cis \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    cis8  [fis a fis]
    cis8 [fis a fis]
    cis'8 [cis bis a]
    gis4 gis
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    cis8. [dis16 e8 e]
    fis8 [e dis cis]
    dis8[cis bis a]|
  }
  \alternative { {gis4 gis }{fis4 fis } }

  \repeat volta 2{
  \mark \default
    cis8 \downbow fis16\downbow gis\upbow a(gis)fis8|
    cis8 \downbow fis16\downbow gis\upbow a(gis)fis8|
    cis'8 cis bis a16(gis)
    gis4 gis|
  }


  \repeat volta 2{
  \mark \default
    cis8 \downbow -. cis16\downbow dis\upbow e8\downbow -.dis16 \downbow -> e\upbow |
    fis8-. e-. \grace{dis (e)} dis -> cis-.
    e16(dis) cis8-> -. bis8 a16->(gis)
  }
  \alternative { { \grace fis gis4 gis}{fis4 fis } }
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
