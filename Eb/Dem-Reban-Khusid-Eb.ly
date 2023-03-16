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
  \key cs \minor
  \time 4/4
  \set Score.markFormatter = \version "2.18.0"#format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  cs8 (gs-.) gs (cs-.) cs(e-.) e(gs-.)  |
  gs8 fs16(gs fs8 e) fs2
  r8 cs ds [e ]fs e16( fs e8 ) ds |
  e2 e4. cs8
  \version "2.18.0"
  cs8 (gs-.) gs (cs-.) cs(e-.) e(gs-.)  |
  gs8 fs16(gs fs8 e) fs4. e8|
  e8(ds) ds(e) e d16 e d8 b
  cs2. r4 \bar "||"

  cs8 (gs-.) gs (cs-.) cs(e-.) e(gs-.)  |
  gs8 fs16(gs fs8 e) fs2
  r8 cs ds [e ]fs e16( fs e8 ) ds |
  e2. \tuplet 3/2 {b8 cs ds}|

  e8 b cs ds e fs gs a
  b8 a gs fs gs4\trill fs8 e|
  e8 b cs d e cs d cs
  cs2. b4
  \break
  \repeat volta 2{
    \mark \default
    e8 fs gs4 gs gs
    \tuplet 3/2 {gs8 fs gs} \tuplet 3/2{a gs fs} fs2|
    fs8(cs) cs(fs) fs e16( fs e8) ds|
    e2. \tuplet 3/2{b8 cs ds}
    e8 b cs ds e fs gs a

    b8 a gs fs gs4 \trill fs8 e
    e8 b cs d e cs d b
    cs2. b4

  }
  \break

  \repeat volta 2{
    \mark \default
    \repeat unfold 2{
      gs'2(gs8) fs16 gs fs8 e|
    }

    gs2 gs4.\glissando fss8-  %slide stuff
    \glissando
    gs4 gs gs gs
    b8(a-.) a(gs-.) gs fs16 gs fs8 e|
    fs8 gs e4-. b-. e-.

    b'8(a-.) a(gs-.) gs fs16 gs fs8 e|
    fs8 gs e4 r2
    b'8(a-.) a(gs-.) gs fs16 gs fs8 e|
    fs8(g) fs(g) fs4 fs8 e
    e8(ds-.) ds (e-.) e d16 e d8 cs

  }

  \alternative { {cs2. b4 }{cs2. r4 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  cs2*3:m
  fs2:m
  cs2*7:m
  fs2:m
  cs2:m b2:m
  cs2*5:m  %bar
  fs2:m
  cs1:m
  e2*5
  fs2:m
  cs2:m
  b2:m
  cs1:m
  %B section
  e2*3
  fs2*2:m
  b2
  e2*5
  fs2:m
  cs2:m
  b2:m
  cs1:m
  %last section
  e1*9
  e1:m
  cs2:m
  b2:m
  cs1*2:m
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
