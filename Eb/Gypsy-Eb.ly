\version "2.18.0"
%moved \header into \score for includes to work

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
common = {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose b cis' \relative c'' {
  \common
  \partial 16*3 fis16 gis ais   %lead in notes

  \repeat volta 2{
  \mark \default
    b8  fis4.
    g8. fis16 e dis e eis
    fis8 dis4 b'8
    a8. a16 g fis e dis

    fis2
    b8  fis4.
    g8. fis16 e dis e eis
    fis8 dis4 fis8

    e8 dis c dis

    b2
  }

  %\alternative { { }{ } }


  \repeat volta 2{
  \mark \default
    gis'8  a a a
    a4(a8) g16 fis
    fis8 g g g
    g4(g8)fis16 e

    fis8 dis4.|
    r16 b' a g fis e dis e
    fis2|

    gis8 a a a
    c4 b16 a g e
    fis8 dis4 fis8
    e8 dis c dis
    b2
  }

  % \alternative { { }{ } }

}

%################################# Lyrics #####################
%\addlyrics{ Doe a deer }
%################################# Chords #######################
harmonies =  \transpose b cis' \chordmode {
  s16*3
  b2 e2:m b2 a2:m b2 b2 e2:m b2 a2:m b2
  %B section
  a2:m s2 e2:m s2 b2 a2:m b2 a2:m s2
  b2 a2:m b2
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
    title= "Gypsy"
    subtitle=""
    arranger=""
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
