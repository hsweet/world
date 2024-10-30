\version "2.18.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \relative c {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    d4  f16 g f e
    d16 cs d e f8. e16|
    d16 cs d e f e f g|
    af16 af g g  f f e e |

    d4 f16 g f e|
    d16 cs d e f8. e16|
    f16 c c f f ef ef d|
    d2
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    f8 g a a
    a8 a a r
    a16 a a8 a g
    a8 g g r|

    f8 f r a
    c4 bf
    a2~
    a4 r|

    a8 d d d
    d8 a d r
    g, g g g
    a8 g g r

    f8 f r g
    f4 ef
    d2~
    d2|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
  \mark \default
    d4 f16 g f e
    d8 d d e
    f8. e16 f f g g|
    a8 f r e|

    f8 g c bf
    a8 g f g
    a8 g f e
    f8 d r4

  }

}
%################################# Lyrics #####################
\addlyrics{
  \repeat unfold 47 \skip1
  Breng mir broyt un breng mir vayn,
  Veln  \skip2 mir a \skip2 fre -- leigh zayn,
  Trai -- lai lai lai lai lai
  'Khob shoyn lat -- kes, fleysh un fish
  Un a vays ge -- dek -- tn tish
  Trai -- lai lai lai lai lai

  Drey, drey --  de -- le fun nun -- tsu ger -- otn
  Drey, drey, drey -- del tsum ger -- o -- tn
  Kumt di voch fun kha -- nu -- ke
  Iz altz bay mir ger -- o -- tn

}

%################################# Chords #######################
harmonies = \chordmode {
  d2*3:m
  %r2*2
  g2:m
  d4*5:m
  %r4*3
  c4:m
  d2:m
  %b part
  f4*7
  %r4*5
  g4
  f2
  c2
  f2*2
  %r2
  d2*2
  %r2
  g2*2:m
  %r2
  f2*2
  %r2
  d2*2:m
  %r2
  %C part
  d2*3:m
  %r2*2
  f4*3
  %r4
  c4
  d2*2:m
  %r2*2


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
    title= "Drey Dreydele"
    subtitle=""
    composer= ""
    instrument = "Eb"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi { }
}


%{
convert-ly (GNU LilyPond) 2.14.2 Processing `'...  Applying
conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18,
2.13.20, 2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42,
2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0
%}
