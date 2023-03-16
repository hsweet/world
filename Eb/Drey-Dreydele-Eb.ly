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
melody = \relative c'' {
  \clef treble
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b4  d16 e d cs
    b16 as b cs d8. cs16|
    b16 as b cs d cs d e|
    f16 f e e  d d cs cs |

    b4 d16 e d cs|
    b16 as b cs d8. cs16|
    d16 a a d d c c b|
    b2
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    d8 e fs fs
    fs8 fs fs r
    fs16 fs fs8 fs e
    fs8 e e r|

    d8 d r fs
    a4 g
    fs2~
    fs4 r|

    fs8 b b b
    b8 fs b r
    e, e e e
    fs8 e e r

    d8 d r e
    d4 c
    b2~
    b2|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
  \mark \default
    b4 d16 e d cs
    b8 b b cs
    d8. cs16 d d e e|
    fs8 d r cs|

    d8 e a g
    fs8 e d e
    fs8 e d cs
    d8 b r4

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
  b2*3:m
  %r2*2
  e2:m
  b4*5:m
  %r4*3
  a4:m
  b2:m
  %b part
  d4*7
  %r4*5
  e4
  d2
  a2
  d2*2
  %r2
  b2*2
  %r2
  e2*2:m
  %r2
  d2*2
  %r2
  b2*2:m
  %r2
  %C part
  b2*3:m
  %r2*2
  d4*3
  %r4
  a4
  b2*2:m
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
