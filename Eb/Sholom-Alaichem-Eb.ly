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

  \partial 4*3 gis4 cis e   %lead in notes

  \repeat volta 2{
    gis1
    e2. dis4
    dis4 cis2. ~
    cis4 cis e gis
    cis1
    %5
    a2. gis4
    gis4 fis2. ~
    fis4 fis gis a

    gis2.(dis4)
    gis2. fis4 fis4 e2. ~|

    e4 dis e fis
    %chords start here
    %bottom line...
    <<
      {
        gis2 gis
        gis2 gis
        gis4 fis e fis
        gis4
      }
      \\
      {
        gis,2 a    %13
        ais2 b
        bis2 cis
        bis4 gis cis e|
      }
    >>
    gis1      %17
    e2. dis4
    dis4 cis2. ~
    cis4 cis e gis|   %20

    cis1|
    a2. gis4
    gis4 fis2. ~
    fis4 fis gis a| %24

    gis2.(dis4)|
    gis2. fis4|
    fis4 gis2. ~|
    e4 dis e fis| %28

    %bottom line again for now
    <gis,gis'>2 <a gis'>
    <ais gis'>2 <b gis'>
    <bis gis'>4 gis' <fis ais> <fis bis>
    <e gis cis>4 r <e gis cis>  r|


  }


}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose b a \chordmode {
  s4 s2 cis1:m gis1:7
  cis1*2:m
  %r1
  fis1:m
  cis1:7 fis1*2:m
  %r1
  gis1*2:7
  %r1
  cis1:m
  cis2:m a2 cis1*2:m
  %r1
  gis2:7 a2:6 gis1:7
  cis1:m  gis1:7 cis1*2:m
  %r1
  fis1:m cis1:7 fis1*2:m
  %r1
  gis1*2:7
  %r1
  cis2*3:m
  %r2
  a2
  cis1*2:m
  %r1
  gis1:7 cis1:m
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
    title= "Sholom Alaichem"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
