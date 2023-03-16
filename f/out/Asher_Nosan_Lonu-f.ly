\version "2.18.0"
\language "english"

\paper{
  tagline = ##f
  %  print-all-headers = ##t
  #(set-paper-size "letter")
}
\header{
  title= "Ahsher Nosan Lonu"
  subtitle=""
  composer= "Leon Schwartz"
  instrument ="violin"
  arranger= ""
}

%\markup { Play fifth higher on repeat }

melody = \relative c' {
  \clef treble
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    a16->\p  d d d d8 d
    d8 a d f
    d16-> f f f f8 f
    f8 d f g
    d16-> g g g g8 g
    g8 f g bf
    a g f e


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

  \alternative { {d8 \tuplet 3/2{f16 e g} f8 e16 d }{d2} }
  \mark \default
  d8 e16 f e8 f16 g
  d8 c c c
  d8 e16 f e8 f16 g
  d8 c c c
  c'8-3 bf a g
  f c f g
  a g f e
  d2
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
  d4*7 :m
  %r4*5
  g4*5:m
  %r4*4
  a2
  d2:m d2:m
  %b section
  d4:m g4:m c2
  d4:m g4:m c2 g2:m d2:m a2 d2:m


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
