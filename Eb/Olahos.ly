\version "2.18.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = ##f

  obsolete-between-system-padding = #0.6  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  obsolete-between-system-space = #0.6  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
  %annotate-spacing = ##t
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

common = {
  \clef treble
  \key a \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

olahosB = {
  %second version
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \break

  e,8-. ^\markup {\box 1}a-. c16(b a8-.) e8-. a-. c16(b a8-.)| %grace 13
  e'8 e ds c b-. e, b'-. e,|    %gliss
  e8-. a-. c16(b a8-.) e8-. a-. c16(b a8-.)|
  e'8 e ds8. [c16] b4 b8.. \upbow \breathe e32 \upbow | %16

  e8 fs g g a g fs8. e16|  %17
  fs8 e ds c b4 b|
  e8 fs g g a g fs e|    %19
  fs8 e d16 c b gs    a8 ^"x" e a4 |% x noteheads  20

  e'8 fs g16 g8. a8 g fs8. e16|
  fs8 e e16 d cs c b4 b|  %22
  \tuplet 3/2{e8 fs g}g4 a8 g fs8.-- \breathe e16|
  fs8 e a,16 d c b a gs a c b8 a-.|  %24
  \bar "||"

  %#2***********************************************
  a'4.\downbow ^\markup {\box 2} \breathe g16\downbow fs\upbow g(a)g\prall (f) e d c8\prall|
  b16\upbow(c)d c b b b d c8 c16(d)e d c(b)|   %26
  a8  a'4\downbow \breathe g16\downbow fs\upbow g a g f e d c8|
  b8\upbow \prall d16 c b a gs a   a8 ^"x" e' e e|   %28  x noteheads

  a4.\downbow \breathe g16\downbow fs\upbow g(a)g (f) e d c8|
  b8--\upbow b16 a' f d b d c8-- c16(d)e d c (b)|  %30
  a8  a'4\downbow \breathe g16\downbow fs\upbow g a g f e d c8|
  b16\upbow(c)d c b a gs b  b16\downbow(c)d e a8-.\upbow a,-. \upbow  %32

  d8-. d16 (c)b g b-1 d c8 c16 d e d c8|
  b16\downbow(d)g b, d\upbow g b, (d)c8-.\downbow c16(d)e d c8--|
  d8\upbow d16 c b\downbow(g)a b \tuplet 3/2{c8\upbow e-0 a-1} f16\downbow d c8\prall| %35
  b16\upbow(c)d c b a gs b   a8 ^"x" e' a, e' |  %36  x noteheads

  d8 d16(c)b g b d c8 c16 d e d c8|
  b16\downbow(d)g8-. b,16 (d)g8-. c,8-. c16 d e d c8--|
  b16 c d b b g b d c8 c16(d)e c c8|
  c16\upbow(b) b d c b a gs a b c e fs gs a8|
  \bar"||"
}

%#################################### Melody ########################
primas = \relative c' {
  \common

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a8  d16 e f e d8|
    a8 d16 e f e d8|
    a'8 a fs \prall f
    e4 e

  }

  \repeat volta 2{
  \mark \default
    a8.  b16 c8 c
    d8 c b \prall a
    gs8 f e d
    e4 e|

    a8. b16 c8 c
    d8 c b  a
    b8 a f16 g e f
    <<d,4 d'>><<d,4 d'>>|
  }
  % \alternative { { }{ } }
  \olahosB

}

secund = \relative c'{
  \common
  \repeat volta 2{
  \mark \default
    d8 f16 g a g f8
    d8 f16 g a g f8
    f'8 f e \prall d
    a4 a
  }
  \repeat volta 2{
  \mark \default
    f'8. g16 a8 a
    b8 a gs \prall f
    e8 d c b
    cs4 cs

    f8. g16 a8 a
    b8 a gs f
    gs8 f d a
    <<d4 a>><<d4 a>>|

  }
  %\olahosB

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \primas
    \new Staff \secund
  >>
  \header{
    title= "Olahos"
    subtitle="Hungarian"
    composer= ""
    instrument = "Eb"
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi{
    \tempo 4 = 120
  }
}

%{
% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
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
