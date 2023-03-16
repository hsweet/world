\version "2.18.0"
\include "english.ly"
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
  \key b \minor
  \time 4/4
  \set Score.markFormatter = \version "2.18.0"#format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  b8 (fs-.) fs (b-.) b(d-.) d(fs-.)  |
  fs8 e16(fs e8 d) e2
  r8 b cs [d ]e d16( e d8 ) cs |
  d2 d4. b8
  \version "2.18.0"
  b8 (fs-.) fs (b-.) b(d-.) d(fs-.)  |
  fs8 e16(fs e8 d) e4. d8|
  d8(cs) cs(d) d c16 d c8 a
  b2. r4 \bar "||"

  b8 (fs-.) fs (b-.) b(d-.) d(fs-.)  |
  fs8 e16(fs e8 d) e2
  r8 b cs [d ]e d16( e d8 ) cs |
  d2. \tuplet 3/2 {a8 b cs}|

  d8 a b cs d e fs g
  a8 g fs e fs4\trill e8 d|
  d8 a b c d b c b
  b2. a4
  \break
  \repeat volta 2{
    \mark \default
    d8 e fs4 fs fs
    \tuplet 3/2 {fs8 e fs} \tuplet 3/2{g fs e} e2|
    e8(b) b(e) e d16( e d8) cs|
    d2. \tuplet 3/2{a8 b cs}
    d8 a b cs d e fs g

    a8 g fs e fs4 \trill e8 d
    d8 a b c d b c a
    b2. a4

  }
  \break

  \repeat volta 2{
    \mark \default
    \repeat unfold 2{
      fs'2(fs8) e16 fs e8 d|
    }

    fs2 fs4.\glissando es8-  %slide stuff
    \glissando
    fs4 fs fs fs
    a8(g-.) g(fs-.) fs e16 fs e8 d|
    e8 fs d4-. a-. d-.

    a'8(g-.) g(fs-.) fs e16 fs e8 d|
    e8 fs d4 r2
    a'8(g-.) g(fs-.) fs e16 fs e8 d|
    e8(f) e(f) e4 e8 d
    d8(cs-.) cs (d-.) d c16 d c8 b

  }

  \alternative { {b2. a4 }{b2. r4 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b2*3:m
  e2:m
  b2*7:m
  e2:m
  b2:m a2:m
  b2*5:m  %bar
  e2:m
  b1:m
  d2*5
  e2:m
  b2:m
  a2:m
  b1:m
  %B section
  d2*3
  e2*2:m
  a2
  d2*5
  e2:m
  b2:m
  a2:m
  b1:m
  %last section
  d1*9
  d1:m
  b2:m
  a2:m
  b1*2:m
  %end section
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
    title= "Dem Reben Khusid"
    subtitle="Brandwein"
    composer= ""
    instrument =""
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
