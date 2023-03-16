\version "2.18.0"
\include "english.ly"
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
  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

olahosB = {
  %second version
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
  \break

  cs8-. ^\markup {\box 1}fs'-. a16(gs' fs'8-.) cs'8-. fs'-. a16(gs' fs'8-.)| %grace 13
  cs''8 cs' bs a gs'-. cs gs''-. cs|    %gliss
  cs'8-. fs'-. a16(gs' fs'8-.) cs'8-. fs'-. a16(gs' fs'8-.)|
  cs''8 cs' bs8. [a16] gs'4 gs'8.. \upbow \breathe cs'32 \upbow | %16

  cs'8 ds' e' e' fs' e' ds'8. cs'16|  %17
  ds'8 cs' bs a gs'4 gs'|
  cs'8 ds' e' e' fs' e' ds' cs'|    %19
  ds'8 cs' b16 a gs' es'    fs'8 ^"x" cs' fs'4 |% x noteheads  20

  cs''8 ds' e'16 e'8. fs'8 e' ds'8. cs'16|
  ds'8 cs' cs'16 b as a gs'4 gs'|  %22
  \tuplet 3/2{cs'8 ds' e'}e'4 fs'8 e' ds'8.-- \breathe cs'16|
  ds'8 cs' fs16 b a gs' fs' es' fs' a gs'8 fs'-.|  %24
  \bar "||"

  %#2***********************************************
  fs''4.\downbow ^\markup {\box 2} \breathe e'16\downbow ds'\upbow e'(fs')e'\prall (d') cs' b a8\prall|
  gs'16\upbow(a)b a gs' gs' gs' b a8 a16(b)cs' b a(gs')|   %26
  fs'8  fs''4\downbow \breathe e'16\downbow ds'\upbow e' fs' e' d' cs' b a8|
  gs'8\upbow \prall b16 a gs' fs' es' fs'   fs'8 ^"x" cs'' cs' cs'|   %28  x noteheads

  fs'4.\downbow \breathe e'16\downbow ds'\upbow e'(fs')e' (d') cs' b a8|
  gs'8--\upbow gs'16 fs'' d' b gs' b a8-- a16(b)cs' b a (gs')|  %30
  fs'8  fs''4\downbow \breathe e'16\downbow ds'\upbow e' fs' e' d' cs' b a8|
  gs'16\upbow(a)b a gs' fs' es' gs'  gs'16\downbow(a)b cs' fs'8-.\upbow fs-. \upbow  %32

  b8-. b16 (a)gs' e' gs'-1 b a8 a16 b cs' b a8|
  gs'16\downbow(b)e' gs b\upbow e' gs (b)a8-.\downbow a16(b)cs' b a8--|
  b8\upbow b16 a gs'\downbow(e')fs' gs' \tuplet 3/2{a8\upbow cs'-0 fs'-1} d'16\downbow b a8\prall| %35
  gs'16\upbow(a)b a gs' fs' es' gs'   fs'8 ^"x" cs'' fs cs'' |  %36  x noteheads

  b8 b16(a)gs' e' gs' b a8 a16 b cs' b a8|
  gs'16\downbow(b)e'8-. gs16 (b)e'8-. a,8-. a16 b cs' b a8--|
  gs'16 a b gs' gs' e' gs' b a8 a16(b)cs' a a8|
  a16\upbow(gs') gs' b a gs' fs' es' fs' gs' a cs' ds' es' fs'8|
  \bar"||"
}

%#################################### Melody ########################
primas = \relative c'' {
  \common

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    fs8  b16 cs d cs b8|
    fs8 b16 cs d cs b8|
    fs'8 fs ds \prall d
    cs4 cs

  }

  \repeat volta 2{
  \mark \default
    fs8.  gs16 a8 a
    b8 a gs \prall fs
    es8 d cs b
    cs4 cs|

    fs8. gs16 a8 a
    b8 a gs  fs
    gs8 fs d16 e cs d
    <<b,4 b'>><<b,4 b'>>|
  }
  % \alternative { { }{ } }
  \olahosB

}

secund = \relative c''{
  \common
  \repeat volta 2{
  \mark \default
    b8 d16 e fs e d8
    b8 d16 e fs e d8
    d'8 d cs \prall b
    fs4 fs
  }
  \repeat volta 2{
  \mark \default
    d'8. e16 fs8 fs
    gs8 fs es \prall d
    cs8 b a gs
    as4 as

    d8. e16 fs8 fs
    gs8 fs es d
    es8 d b fs
    <<b4 fs>><<b4 fs>>|

  }
  %\olahosB

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
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
    instrument =""
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
