\version "2.24.0"
\include "english.ly"
\paper{
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \date }
%\markup{ Got something to say? }

%#################################### Melody ########################
melody = \transpose e d \relative c' {
  \clef treble
  \key a \minor
  \time 4/4

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    e4 ^\markup { \box A} e4. gs8 f e
    gs4 gs4. b8 a gs
    a4 a4. c8 b a|
  }
  \alternative {
    { gs4 f16 e f8 gs4 r}
    { gs4 f16 e f8 e4 r}
  }

  \repeat volta 2{
    gs8 ^\markup { \box B} gs4 f8 e e e4|
    f8 f4 e8 d d d4|
    d4 f8. f16 d8 d a'4|
    %gs4 f16[(e)f8] e4 r4|
  }
  \alternative{
    {gs4 f16[(e)f8] gs4 r4|}
    {gs4 f16[(e)f8] e4 r4|}
  }

  \repeat volta 2{
    a2 ^\markup { \box C} a
    a4 a a a
    a16 a a8 c8. b16 a8 c b a|
    a16 a a8 c8. b16 a8 c b a|

    b16 b b8 d8. c16 b8 d c b
    b16 b b8 d8. c16 b8 d c b|

    b16 b b8 e4 b16 b b8 e8. e,16|
    e8 e c'16(b a gs) a2|
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \transpose e d \chordmode {
  e1 s1 a1:m e4 d4:m e2 e4 d4:m e2

  e1 d1:m s1 e4 d4:m e2 e4 d4:m e2

  a1*4:m e4 e4:7 s2 e4 e4:7 s2
  e1 s4 d4:m a2:m
}
\score {
  % transpose score below
  %\transpose d a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Hava Nagilla"
    subtitle=""
    composer= ""
    instrument = ""
    arranger= ""
  }
  %\midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

%{
convert-ly (GNU LilyPond) 2.16.2  convert-ly: Processing `'...
Applying conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16,
2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31, 2.13.36, 2.13.39,
2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7,
2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25,
2.15.32, 2.15.39, 2.15.40, 2.15.42, 2.15.43, 2.16.0
%}


%{
convert-ly (GNU LilyPond) 2.26.0  convert-ly: Processing `'...
Applying conversion: 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22, 2.19.24,
2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46, 2.19.49, 2.20.0,
2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2, 2.23.3, 2.23.4, 2.23.5,
2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13,
2.23.14, 2.24.0
%}


%{
convert-ly (GNU LilyPond) 2.26.0  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
