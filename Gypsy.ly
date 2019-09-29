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
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose d e \relative c'' {
  \common
  \partial 16*3 a16 b cis   %lead in notes

  \repeat volta 2{
  \mark \default
    d8  a4.
    bes8. a16 g fis g gis
    a8 fis4 d'8
    c8. c16 bes a g fis

    a2
    d8  a4.
    bes8. a16 g fis g gis
    a8 fis4 a8

    g8 fis ees fis

    d2
  }

  %\alternative { { }{ } }


  \repeat volta 2{
  \mark \default
    b'8  c c c
    c4(c8) bes16 a
    a8 bes bes bes
    bes4(bes8)a16 g

    a8 fis4.|
    r16 d' c bes a g fis g
    a2|

    b8 c c c
    ees4 d16 c bes g
    a8 fis4 a8
    g8 fis ees fis
    d2
  }

  % \alternative { { }{ } }

}

%################################# Lyrics #####################
%\addlyrics{ Doe a deer }
%################################# Chords #######################
harmonies =  \transpose d e \chordmode {
  s16*3
  d2 g2:m d2 c2:m d2 d2 g2:m d2 c2:m d2
  %B section
  c2:m s2 g2:m s2 d2 c2:m d2 c2:m s2
  d2 c2:m d2
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
