\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  %  print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Ahser Nosan Lonu"
  subtitle=""
  composer= "Leon Schwartz"
  instrument ="violin"
  arranger= ""
}

%\markup { Play fifth higher on repeat }

melody = \relative c' {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    d16->\p  g g g g8 g
    g8 d g bf
    g16-> bf bf bf bf8 bf
    bf8 g bf c
    g16-> c c c c8 c
    c8 bf c ef
    d c bf a


    %{
    d8  g8 g
    g8 d g bes
    g8 \tuplet 3/2 {bes16 bes bes} bes8 bes
    bes8 g bes c
    g8 \tuplet 3/2 {c16 c c} c8 c
    c8 bes c ees
    d c bes a
    %}

  }

  \alternative { {g8 \tuplet 3/2{bf16 a c} bf8 a16 g }{g2} }
  \mark \default
  g8 a16 bf a8 bf16 c
  g8 f f f
  g8 a16 bf a8 bf16 c
  g8 f f f
  f'8-3 ef d c
  bf f bf c
  d c bf a
  g2
}


\addlyrics{
  A- sher no- san lo- nu toy- ras em- es
  A- sher no- san lo- nu toy- ras em- es
  A- sher no- san lo- nu toy- ras em- es
  Toy- ras e- e- mes
}
\addlyrics{
  V'- khay- ey oy- lom nota b'- soy- khey- nu
  V'- khay- ey oy- lom nota b'- soy- khey- nu
  V'- khay- ey oy- lom nota b'- soy- khey- nu
  Nota b'- soy- khey- nu
}
harmonies = \chordmode {
  g4*7 :m
  %r4*5
  c4*5:m
  %r4*4
  d2
  g2:m g2:m
  %b section
  g4:m c4:m f2
  g4:m c4:m f2 c2:m g2:m d2 g2:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \melody
  >>

  \layout{indent = 1.0\cm}
  \midi { }
}


%{
convert-ly (GNU LilyPond) 2.14.2 Processing `'...  Applying
conversion: 2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18,
2.13.20, 2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42,
2.13.44, 2.13.46, 2.13.48, 2.13.51, 2.14.0
%}
