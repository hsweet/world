\version "2.18.0"

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

melody = \relative c'' {
  \clef treble
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \set Score.markFormatter = #format-mark-box-alphabet
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    \mark \default
    b16->\p  e e e e8 e
    e8 b e g
    e16-> g g g g8 g
    g8 e g a
    e16-> a a a a8 a
    a8 g a c
    b a g fis


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

  \alternative { {e8 \tuplet 3/2{g16 fis a} g8 fis16 e }{e2} }
  \mark \default
  e8 fis16 g fis8 g16 a
  e8 d d d
  e8 fis16 g fis8 g16 a
  e8 d d d
  d'8-3 c b a
  g d g a
  b a g fis
  e2
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
  e4*7 :m
  %r4*5
  a4*5:m
  %r4*4
  b2
  e2:m e2:m
  %b section
  e4:m a4:m d2
  e4:m a4:m d2 a2:m e2:m b2 e2:m


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
