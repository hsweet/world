\version "2.18.0"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%%\markup{ \italic{ " Updated " \date  }  }


melody = \relative c''' {
  \clef treble
  \key e \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes


  <<
    {
      e4  dis cis gis
      gis'8 fis4. e4 dis
      cis2 cis4 r4

      gis'8 gis4. a4 gis
      fis4 b, gis'8 fis4.
      e2 e4 r4
    }
    \\
    {
      e,4  dis cis gis
      gis'8 fis4. e4 dis
      cis2 cis4 r4

      gis'8 gis4. a4 gis
      fis4 b, gis'8 fis4.
      e2 e4 r4
    }
  >>


  \repeat volta 2{
  \mark \default
    <<
      {
        gis'4  gis a8 gis4.
        fis8 fis gis dis-3 e-4 fis4.

        e4 dis8 dis cis gis4.
        gis'4 fis e dis
        cis2 cis4 r4
      }
      % \\arranger= "Szélrózsa"
      {
        gis4  gis a8 gis4.
        fis8 fis gis dis e fis4.

        e4 dis8 dis cis gis4.
        gis'4 fis e dis
        cis2 cis4 r4
      }
    >>
  }

  % \alternative { { }{ } }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {

  cis4:m gis:7 cis:m cis:m
  b4 b e gis:7
  cis1:m
  e2 fis4:m e
  b1
  e1

  %b part

  e1
  b1
  cis4:m gis:7 cis2:m
  e4 b cis:m gis:7
  cis:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Folmaszott a kakas"
    subtitle = ""
    composer= "Rabatamasi"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
