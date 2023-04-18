\version "2.18.0"
\language "english"
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
  \partial 16*3 a16 b cs   %lead in notes

  \repeat volta 2{
  \mark \default
    d8  a4.
    bf8. a16 g fs g gs
    a8 fs4 d'8
    c8. c16 bf a g fs

    a2
    d8  a4.
    bf8. a16 g fs g gs
    a8 fs4 a8

    g8 fs ef fs

    d2
  }

  %\alternative { { }{ } }


  \repeat volta 2{
  \mark \default
    b'8  c c c
    c4(c8) bf16 a
    a8 bf bf bf
    bf4(bf8)a16 g

    a8 fs4.|
    r16 d' c bf a g fs g
    a2|

    b8 c c c
    ef4 d16 c bf g
    a8 fs4 a8
    g8 fs ef fs
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
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Gypsy"
instrument= "Violin"
    subtitle=""
instrument= "Violin"
    arranger=""
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
