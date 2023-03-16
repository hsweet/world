\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a4  c16 d c b
    a16 gs a b c8. b16|
    a16 gs a b c b c d|
    ef16 ef d d  c c b b |

    a4 c16 d c b|
    a16 gs a b c8. b16|
    c16 g g c c bf bf a|
    a2
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    c8 d e e
    e8 e e r
    e16 e e8 e d
    e8 d d r|

    c8 c r e
    g4 f
    e2~
    e4 r|

    e8 a a a
    a8 e a r
    d, d d d
    e8 d d r

    c8 c r d
    c4 bf
    a2~
    a2|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
  \mark \default
    a4 c16 d c b
    a8 a a b
    c8. b16 c c d d|
    e8 c r b|

    c8 d g f
    e8 d c d
    e8 d c b
    c8 a r4

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
  a2*3:m
  %r2*2
  d2:m
  a4*5:m
  %r4*3
  g4:m
  a2:m
  %b part
  c4*7
  %r4*5
  d4
  c2
  g2
  c2*2
  %r2
  a2*2
  %r2
  d2*2:m
  %r2
  c2*2
  %r2
  a2*2:m
  %r2
  %C part
  a2*3:m
  %r2*2
  c4*3
  %r4
  g4
  a2*2:m
  %r2*2


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
    title= "Drey Dreydele"
    subtitle=""
    composer= ""
    instrument =""
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
