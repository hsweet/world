\version "2.18.0"
\language "english"
\pointAndClickOff

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key g \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  d2 d
  c8 d c bf c4 a
  g8 a bf g a bf a fs
  g1
  \break
  \repeat volta 2{
  \mark \default
    fs8  \segno g ef fs g a fs g
    a1
    a8 bf c d c bf a g
    a1|

    a8 d d c c bf bf a
    g4 g8 a fs2
    fs8 g ef fs g a fs ef
    d1|

    d'2 ^\markup { \italic 8va}  d |
    c8 d c bf c4 a|
    bf2. a8 g|
    a4 d a d,|

    d'2 d c8 d c bf c4 a
    g8 a bf g a bf a fs
    g1^\markup {\italic Fine}

  }
  \break
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    \key d\minor
    cs8  d bf cs d e cs d
    e1
    e8 f g a g f e d
    e1|

    e8 a a g g f f e|
    d4 d8 e cs2|
    cs8 d bf cs d e cs bf
    a1|

    a'2^Intro a
    g8 a g f g4 e|
    f2. e8 d
    e4 a e a,

    a'2 a
    g8 a g f g4 e|
    d8 ^\markup {rit. 2nd time} e f d e f e cs
    d1^\markup {\italic{D.S. al Segno}}


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
  d1
  c2:m f2
  ef2 d2:7 g1:m

  %a section
  d2 c2:m
  d2*3
  %r2
  c2:m
  d2*3
  %r2
  c2:m
  g2:m
  d2*2
  %r2
  c2:m d1
  bf1
  c2:m f2
  g1:m
  d1
  bf1
  c2:m f2
  ef2:7 d2:7
  g1:m

  %b section
  a2 g2:m
  a2*3
  %r2
  g2:m
  a2*3
  % r2
  g2:m
  d2:m a2*2
  %r2
  g2:m
  a1
  f1
  g2:m c2
  d1:m
  a1
  f1
  g2:m c2
  bf2:7 a2:7
  d1:m

}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Zemer Atik"
    subtitle="Israeli"
    composer= ""
    instrument = "Eb"
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
