\version "2.18.0"
\language "english"

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
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  a2 a
  g8 a g f g4 e
  d8 e f d e f e cs
  d1
  \break
  \repeat volta 2{
  \mark \default
    cs8  \segno d bf cs d e cs d
    e1
    e8 f g a g f e d
    e1|

    e8 a a g g f f e
    d4 d8 e cs2
    cs8 d bf cs d e cs bf
    a1|

    a'2 ^\markup { \italic 8va}  a |
    g8 a g f g4 e|
    f2. e8 d|
    e4 a e a,|

    a'2 a g8 a g f g4 e
    d8 e f d e f e cs
    d1^\markup {\italic Fine}

  }
  \break
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    \key a\minor
    gs8  a f gs a b gs a
    b1
    b8 c d e d c b a
    b1|

    b8 e e d d c c b|
    a4 a8 b gs2|
    gs8 a f gs a b gs f
    e1|

    e'2^Intro e
    d8 e d c d4 b|
    c2. b8 a
    b4 e b e,

    e'2 e
    d8 e d c d4 b|
    a8 ^\markup {rit. 2nd time} b c a b c b gs
    a1^\markup {\italic{D.S. al Segno}}


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
  a1
  g2:m c2
  bf2 a2:7 d1:m

  %a section
  a2 g2:m
  a2*3
  %r2
  g2:m
  a2*3
  %r2
  g2:m
  d2:m
  a2*2
  %r2
  g2:m a1
  f1
  g2:m c2
  d1:m
  a1
  f1
  g2:m c2
  bf2:7 a2:7
  d1:m

  %b section
  e2 d2:m
  e2*3
  %r2
  d2:m
  e2*3
  % r2
  d2:m
  a2:m e2*2
  %r2
  d2:m
  e1
  c1
  d2:m g2
  a1:m
  e1
  c1
  d2:m g2
  f2:7 e2:7
  a1:m

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
