\version "2.24.0"
\language "english"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))
\markup{ \italic{ \date }  }
%\markup{ \italic{ " Updated " \date  }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody =   \relative c' {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  \partial 8*3 a8 d f  %lead in notes

  \repeat volta 2{
    \mark \default
    a4 a gs a
    f8 e d4(d8)a d f|
    a4 a gs f|
    b8 c a4(a8) a b c|%4

    d4 a gs a
    f8 e d4(d8) d e f
    g4. bf8
    \times 2/3{g8 fs ef} \times 2/3{ef d c}
  }
  \alternative{
    {d2 ~ d8 f bf f}
    {
      d2 ~
      d8 c f a
    }
  }

  \repeat volta 2{
    \mark \default
    c4 bf
    a4 g8 f
    g8 a f4~

    f2
    c'8 d ef16 d c8|
    bf8 a g f
    a2~a2|

    f4 af16 g f8|
    g8 af4 c8
    b8 c bf af|
    g4. af8

    a8 a4 gs8|
    \times 2/3{a8 gs f} \times 2/3{f e d}

  }
  \alternative {
    {d2~ d8 c f a}
    {d,2~d8 c f a }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies =  \chordmode {
  s8*3
  d2*6:m
  a2*2:7
  d2*4:m
  g2:m
  a2:7
  d2*2:m
  d2*2:m
  %b section
  f2*5
  g2:m
  d2*2:m
  f2*2:m
  g2*2:m
  a2*2:7
  d2*2:m
  d2*2:m
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
    title= "Khosn Kale Mazel Tov"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  %\midi{
    \tempo 4 = 120
  }
}


%{
convert-ly (GNU LilyPond) 2.26.0  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3,
2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11,
2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
