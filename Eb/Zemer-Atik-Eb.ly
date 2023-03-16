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
melody = \relative c'' {
  \clef treble
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  b2 b
  a8 b a g a4 fis
  e8 fis g e fis g fis dis
  e1
  \break
  \repeat volta 2{
  \mark \default
    dis8  \segno e c dis e fis dis e
    fis1
    fis8 g a b a g fis e
    fis1|

    fis8 b b a a g g fis
    e4 e8 fis dis2
    dis8 e c dis e fis dis c
    b1|

    b'2 ^\markup { \italic 8va}  b |
    a8 b a g a4 fis|
    g2. fis8 e|
    fis4 b fis b,|

    b'2 b a8 b a g a4 fis
    e8 fis g e fis g fis dis
    e1^\markup {\italic Fine}

  }
  \break
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    \key b\minor
    ais8  b g ais b cis ais b
    cis1
    cis8 d e fis e d cis b
    cis1|

    cis8 fis fis e e d d cis|
    b4 b8 cis ais2|
    ais8 b g ais b cis ais g
    fis1|

    fis'2^Intro fis
    e8 fis e d e4 cis|
    d2. cis8 b
    cis4 fis cis fis,

    fis'2 fis
    e8 fis e d e4 cis|
    b8 ^\markup {rit. 2nd time} cis d b cis d cis ais
    b1^\markup {\italic{D.S. al Segno}}


  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
\addlyrics{
 \repeat unfold 17 {\skip 2}


Od na -- shu -- va el ni -- gun a -- tik
Ve -- ha -- ze -- mer yif ve -- ye' -- e -- rav
Od ga -- vi -- 'a me -- shu -- mar na -- shik, na -- _ shik
A -- liz -- ei ein -- a -- yim vel -- e -- vav.

To -- vu, to -- vu o -- ha -- le -- nu
Ki ma -- a -- chol hif --  tzi -- 'a
To -- vo, to -- vu o -- ha -- le -- nu
Od na -- shu -- va el ni -- gun  -- a -- tik.


}
%################################# Chords #######################
harmonies = \chordmode {
  %intro
  %s1 * 2
  b1
  a2:m d2
  c2 b2:7 e1:m

  %a section
  b2 a2:m
  b2*3
  %r2
  a2:m
  b2*3
  %r2
  a2:m
  e2:m
  b2*2
  %r2
  a2:m b1
  g1
  a2:m d2
  e1:m
  b1
  g1
  a2:m d2
  c2:7 b2:7
  e1:m

  %b section
  fis2 e2:m
  fis2*3
  %r2
  e2:m
  fis2*3
  % r2
  e2:m
  b2:m fis2*2
  %r2
  e2:m
  fis1
  d1
  e2:m a2
  b1:m
  fis1
  d1
  e2:m a2
  g2:7 fis2:7
  b1:m

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
    title= "Zemer Atik"
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

%{
https://lyricstranslate.com/en/zemer-atik-r%C3%A9gi-dal.html

Od nashuva el nigun atik
Vehazemer yif veye'erav
Od gavi'a meshumar nashik, nashik
Alizei einayim velevav.

Tovu, tovu ohalenu
Ki machol hiftzi'a
Tovi, tovu ohalenu
Od nashuva el nigun atik.


%}
