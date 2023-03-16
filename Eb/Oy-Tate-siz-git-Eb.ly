\version "2.20.0"


\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
  tagline = ##f
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

melody = \relative c'' {
  \clef treble

  \key a \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    cis8 bis16 cis dis cis b a
    a8 gis16 a b a gis fis
    eis16 fis gis a b a gis fis
    gis16 fis eis d eis d cis b
    cis8 d eis fis
    gis8 a bis cis
    gis2 ~
    gis4 r8 cis8

    cis4(bis8 \trill a)
    a4(gis8 \trill fis)
    eis16 fis gis a b a gis fis
    gis16 fis eis d eis d cis b
    cis8 d eis fis
    gis16 fis eis d eis d cis b
  }

  \alternative {
    {cis2 ~ cis4 r8 cis }
    {cis2 ~ cis4 r8  b }
  }
\repeat volta 2{
  \mark \default
    \tuplet 3/2 { b8 dis b }  \tuplet 3/2 { b fis' b, }
    \tuplet 3/2 { b dis b} fis'4
    eis16 fis gis fis eis8. d16
    d16 cis cis b fis8 b
    \tuplet 3/2 { b8  dis b }  \tuplet 3/2 { b fis' b, }
    \tuplet 3/2 { b dis b} fis'4
    eis16 fis gis fis eis8. d16

    %alternate end for part II

  }

  \alternative {
    { eis16 d cis8(cis4)) }
    { eis16 d cis8(cis8.) bis'16) }
  }


  \repeat volta 2{
  \mark \default
   cis2~ \barNumberCheck #30
    cis8 cis cis cis
    cis8 cis cis cis
    cis2~
    cis4 r8 bis
    cis16 bis \trill a8 a a
    a a a a a2~
    a4. gis8
    a8 \trill gis fis fis ~
    fis16 cis fis cis fis4~ %a e a e
    fis2 ~%40
    fis4  r8 gis16 fis
    eis8 fis gis a
    bis8. \trill a16 b a gis fis|
    fisis8 gis(gis4 gis) r4
    bis8 cis cis cis
    cis8 cis cis cis
    cis2~|
    cis4.(bis8)|
    cis16 bis \trill a8 a a |
    a8 a a a  %50
    bis8 cis cis cis
    bis8. \trill a16 b a gis fis
    a16 gis fis8 fis fis ~
    fis16 cis fis cis fis cis fis cis
    fis2 ~
    fis8 r r gis16 fis
    eis8 fis gis a
    bis8. \trill a16 b a gis fis
    fisis8 gis( gis4) ~
    gis8 r b16 a gis fis


  }

  \repeat volta 2{
  \mark \default
    eis16  fis gis a gis a gis fis
    b a gis fis gis a gis fis
    eis fis gis fis eis fis eis d
    cis8 eis gis cis
    eis,16 fis gis a gis a gis fis
    b a gis fis  gis a gis fis
    eis fis gis fis eis fis eis d
  }
  \alternative {
    {eis16 d cis8 r4 }
    {cis8 r cis' r }
  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  fis2*4:m
  %r2*3
  cis2 cis4 d4
  cis2*2
  %r2
  fis2*4:m
  %r2*3
  cis2 b2:m cis2*2
  %r2
  cis2*2
  %r2
  %b part
  b2*6
  %r2*5
  b2:m cis2*2
  %c part
  fis2*14
  \parenthesize cis4*3
  d4
  cis2*2
  %r2
  fis2*12:m
  %r2*11
  cis2
  cis4 d4
   cis2*2
  %r2
  %d part
  cis2*6
  %r2*5
  cis4 b4:m cis2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Oy Tata, S'z Git"
    composer= "Brandndwein"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 80
  }
}


%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49,
2.19.80, 2.20.0
%}
