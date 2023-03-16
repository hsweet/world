\version "2.18.0"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose b a \relative c'' {
  \clef treble
  \key cis \minor
  \time 4/4

  \partial 4*2 gis4 e'   %lead in notes

  \repeat volta 3{
    cis2 gis4 e'
    cis2. e4|
    fis4 e dis cis
    b4 gis gis b

    a2 a4 cis
    bis2 cis4 dis
    cis1 ~
    cis2 gis4 e'

    cis2 gis4 e'
    cis2. e4

    a4 a gis fis
    gis4 e b e
    cis2 cis4 e
    cis2 e4 fis
    gis1~

    gis2 fis4 gis
    a2 \segno a4 a
    a2 gis4 fis
    gis2 fis4 e e2 dis4 e

    fis2 e4 dis
    dis2 cis4 dis
    e1~    %doesn't work
    eis2 fis4 gis
    a2 a4 a

    a2 gis4 fis
    gis2 fis4 e
    e2 dis4 e
    fis2 e4 dis|
    dis2 cis4 bis


  }
  \alternative {
    {cis1~cis4 r gis   e'}
    {cis1~cis4 ^\markup {\italic D.S.al Fine}r fis gis }
    {cis,1 ^\markup {\italic Fine}~cis4 r r2}
  }
}

%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose b a\chordmode {
  s2 cis1*2:m  b1:7 e1 fis1:m
  gis1 cis1:m s1*2 a1
  b1:7 e1 fis1 gis1:7 cis1:m
  cis1:7 fis1:m b1:7 e1 a1
  fis1:m6 gis1:7 cis1:m b2:7 fis4:m cis4:7 fis1:m
  b1:7 e1 a1 fis1:m6 gis1:7
  cis1:m
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
    title= "Bashana Haba'ah"
    subtitle="Israeli"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
