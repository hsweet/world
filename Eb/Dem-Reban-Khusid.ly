\version "2.18.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key e \minor
  \time 4/4
  \set Score.markFormatter = \version "2.18.0"#format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  e8 (b-.) b (e-.) e(g-.) g(b-.)  |
  b8 a16(b a8 g) a2
  r8 e fs [g ]a g16( a g8 ) fs |
  g2 g4. e8
  \version "2.18.0"
  e8 (b-.) b (e-.) e(g-.) g(b-.)  |
  b8 a16(b a8 g) a4. g8|
  g8(fs) fs(g) g f16 g f8 d
  e2. r4 \bar "||"

  e8 (b-.) b (e-.) e(g-.) g(b-.)  |
  b8 a16(b a8 g) a2
  r8 e fs [g ]a g16( a g8 ) fs |
  g2. \tuplet 3/2 {d8 e fs}|

  g8 d e fs g a b c
  d8 c b a b4\trill a8 g|
  g8 d e f g e f e
  e2. d4
  \break
  \repeat volta 2{
    \mark \default
    g8 a b4 b b
    \tuplet 3/2 {b8 a b} \tuplet 3/2{c b a} a2|
    a8(e) e(a) a g16( a g8) fs|
    g2. \tuplet 3/2{d8 e fs}
    g8 d e fs g a b c

    d8 c b a b4 \trill a8 g
    g8 d e f g e f d
    e2. d4

  }
  \break

  \repeat volta 2{
    \mark \default
    \repeat unfold 2{
      b'2(b8) a16 b a8 g|
    }

    b2 b4.\glissando as8-  %slide stuff
    \glissando
    b4 b b b
    d8(c-.) c(b-.) b a16 b a8 g|
    a8 b g4-. d-. g-.

    d'8(c-.) c(b-.) b a16 b a8 g|
    a8 b g4 r2
    d'8(c-.) c(b-.) b a16 b a8 g|
    a8(bf) a(bf) a4 a8 g
    g8(fs-.) fs (g-.) g f16 g f8 e

  }

  \alternative { {e2. d4 }{e2. r4 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e2*3:m
  a2:m
  e2*7:m
  a2:m
  e2:m d2:m
  e2*5:m  %bar
  a2:m
  e1:m
  g2*5
  a2:m
  e2:m
  d2:m
  e1:m
  %B section
  g2*3
  a2*2:m
  d2
  g2*5
  a2:m
  e2:m
  d2:m
  e1:m
  %last section
  g1*9
  g1:m
  e2:m
  d2:m
  e1*2:m
  %end section
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
    title= "Dem Reben Khusid"
    subtitle="Brandwein"
    composer= ""
    instrument = "Eb"
    arranger=  ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}
%{
  % more verses:
  \markup{}
  \markup {
  \fill-line {
  \hspace #0.1 % distance from lefempire plan copay code dt margin
  \column {
  \line { "1."
  \column {
  ""
  }
  }
  \hspace #0.2 % vertical distance between verses
  \line { "2."
  \column {
  ""
  }
  }
  }
  \hspace #0.1  % horiz. distance between columns
  \column {
  \line { "3."
  \column {
  ""
  }
  }
  \hspace #0.2 % distance between verses
  \line { "4."
  \column {
  ""
  }
  }
  }
  \hspace #0.1 % distance to right margin
  }
  }

%}
