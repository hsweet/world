\version "2.18.0"


\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

melody = \relative c'' {
  \clef treble

  \key a\major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet


  \repeat volta 2{
  \mark \default
    fis8.  fis16 cis8 fis~
    fis16 fis fis fis cis8 fis
    fis,8 fis'cis fis
    fis16 fis fis fis cis8 fis
    cis8 d cis d %5
    eis8 fis(fis)fis
    eis8 cis' b16 a gis fis
    eis8 cis16 cis dis 8 eis
    fis8. fis16 cis8 cis
    fis16 fis fis fis cis8 fis
    fis,8 fis'cis fis~
    fis16 fis fis fis cis8 fis
    cis8 d cis d16 cis
    b4 d


  }

  \alternative {
    {
      cis8 cis' b16 a gis fis
      eis8 cis dis eis
    }
    {
      cis8 cis'16 cis gis8 eis
      cis8. cis16 gis8 b
    }
  }


  \repeat volta 2{
  \mark \default
    cis8.   cis16 dis8 fis
    b8 fis dis b
    b8 dis fis, dis'
    b8 dis fis, dis'

    cis8.  cis16 dis8 fis
    b8 fis dis b
    %p2 original
    b4 d
  }
  \alternative {
    {cis4. b8 }
    {cis8 cis16 cis dis8 e }
  }

  \repeat volta 2{
  \mark \default
    fis8. fis16 b,8 fis' ~
    fis16 fis fis fis cis8 eis
    fis8 fis16 fis a8 cis
    fis8 cis a fis
    fis8. fis16 cis8 a|
    fis8 fis a cis %31
    fis8. fis16 b,8 fis' ~
    fis16 fis fis fis cis8 eis
    fis8. fis16 cis8 fis~
    fis16 fis fis fis cis8 dis
    fis8. fis16 cis8 fis~|
    fis8 fis cis a'
    fis8. fis16 cis8 a|
    fis8 a cis fis
    eis8 fis eis fis %42
    eis4 d
    cis8. cis16 eis8 gis
    cis8 gis eis cis
    fis8. fis16 cis8 fis~
    fis16 fis fis fis cis8 a
    fis8. fis16 a8 cis
    fis8 a cis a
    fis8. fis16 cis8 fis~
    fis16 fis fis fis cis8 eis
    fis8. fis16 cis8 fis~
    fis16 fis fis fis cis8 eis
    fis8. fis16 cis8 fis~
    fis8 fis cis fis
    fis8. fis16 cis8 fis~
    fis8 a cis a
    eis8 fis eis fis
    eis4 d
    cis8. cis16 eis8 gis
    cis8 gis eis d



  }

  \repeat volta 2{
  \mark \default
    cis8   eis gis, eis'
    cis8 eis gis, eis'
    cis8 eis gis, eis'
    cis8 eis eis gis

    cis,8 eis gis eis
    cis8 eis gis, eis'
    cis4 d




  }

  \alternative {
    {cis8 eis gis, eis' }
    { cis8 r cis' r}
  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff  \with{
      instrumentName = "Violin2"
    } \melody
  >>
  \header{
    title= "Oy Tate, S'iz Git "
    subtitle="2nd Part  "
    composer= ""
    instrument =""
    arranger=""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
