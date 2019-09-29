\version "2.18.0"


\paper {
  obsolete-between-system-padding = #0.1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  obsolete-between-system-space = #0.1  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
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

  \key c \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e8 dis16 e fis e d c
    c8 b16 c d c b a
    gis16 a b c d c b a
    b16 a gis f gis f e d
    e8 f gis a
    b8 c dis e
    b2 ~
    b4 r8 e8

    e4(dis8 \trill c)
    c4(b8 \trill a)
    gis16 a b c d c b a
    b16 a gis f gis f e d
    e8 f gis a
    b16 a gis f gis f e d
  }

  \alternative {
    {e2 ~ e4 r8 e }
    {e2 ~ e4 r8  d }
  }
\repeat volta 2{
  \mark \default
    \tuplet 3/2 { d8 fis d }  \tuplet 3/2 { d a' d, }
    \tuplet 3/2 { d fis d} a'4
    gis16 a b a gis8. f16
    f16 e e d a8 d
    \tuplet 3/2 { d8  fis d }  \tuplet 3/2 { d a' d, }
    \tuplet 3/2 { d fis d} a'4
    gis16 a b a gis8. f16

    %alternate end for part II

  }

  \alternative {
    { gis16 f e8(e4)) }
    { gis16 f e8(e4)) }
  }

 
  \repeat volta 2{
  \mark \default
    dis'8  e(e4 e2) \barNumberCheck #30
    e8 e e e
    e8 e e e
    e2~
    e4 r8 dis
    e16 dis \trill c8 c c
    c c c c c2~
    c4. b8
    b \trill a a a ~
    a16 e a e a e a e
    a2 ~%40
    a8 r r b16 a
    gis8 a b c
    dis8. \trill c16 d c b a|
    ais8 b(b4 b) r4
    dis8 e e e
    e8 e e e
    e2~|
    e4.(dis8)|
    e16 dis \trill c8 c c |
    c8 c c c  %50
    dis8 e e e
    dis8. \trill c16 d c b a
    c16 b a8 a a ~
    a16 e a e a e a e
    a2 ~
    a8 r r b16 a
    gis8 a b c
    dis8. \trill c16 d c b a
    ais8 b( b4) ~
    b8 r d16 c b a


  }

  \repeat volta 2{
  \mark \default
    gis16  a b c b c b a
    d c b a b c b a
    gis a b a gis a gis f
    e8 gis b e
    gis,16 a b c b c b a
    d c b a  b c b a
    gis a b a gis a gis f
  }
  \alternative {
    {gis16 f e8 r4 }
    {e8 r e' r }
  }

}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  a2*4:m
  %r2*3
  e2 e4 f4
  e2*2
  %r2
  a2*4:m
  %r2*3
  e2 d2:m e2*2
  %r2
  e2*2
  %r2
  %b part
  d2*6
  %r2*5
  d2:m e2*17
  %c part
  %r2*16
  e4 f4 e2*2
  %r2
  a2*12:m
  %r2*11
  e2  e4 f4 e2*2
  %r2
  %d part
  e2*6
  %r2*5
  e4 d4:m e2
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
    title= "Oy Tata, S'z Git"
    composer= "Barndwein/Warshauer"
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
