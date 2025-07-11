\version "2.22.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key d \minor
  \time 3/8
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
start = {
  a8. d16 f a
  af8  a a
  bf8. a16  f d
  bf4 g8
  a8. g16 a g
  a8. g16 a bf
  d16 e d e f e  % Kubaner
  %d8. e16 f e   % Kubaner
  %d8. d16 e f
  d8. r8 d16
}

melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

   \start

   %d8. r8 d16
    a8. d16 f a
  af8  a a
  bf8. a16  f d
  bf4 bf8
  a8. g16 a g
  %a8 bf c
   a16 g a bf8.
  %a8. g16 a bf
  d8 e f16 e
  %d8. e16 f e
  d8. d16 e f

 \break
  \repeat volta 2{
    \mark \default
  }
  %g8. g16 g a
  g16 g g g fs g|
  bf8 g bf|
  c8. d16 ef d|
  ef8. r16 r ef16|
  %d8. a16 f d
  d8. c16 bf a
  %e8 f g
  bf8 c d
  gs,8. a16 bf c
  a8. r16 a16 a|

  g8. f16 e d
  e8 f g
  f8. e16 f g %?
  a8. r8 a16

  g8. f16 e d
  e8. f16 g e
  d8. d'16 a f
  d4.

%{
  a8. a16 bf c
  a8. r8 a16
  g8. f16 e d
  e8.g16 f d
  d4.~
  d4 r8
%}

}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
  Spielt mir nokh a ho  -- ra,
  hent -- lach drey -- zikh oyfn grus.
  Di yung -- er men -- shn gey en dread
  Di Ku -- ban -- er faln oyf di fus
  Zey fo -- rn langs di payp -- layn
  Tangoen biz zey ken nit mer,
  Zey  legt zey -- e  -- re cho -- lem  -- es,
  Lozn li -- gn bay der tir.

  Loz mich fa -- fa -- ln fun fen -- ster a -- roys,
  Mit kon -- fe -- ti in di hor,

  Gib mir drey gu -- te kar -- ten
  Oyf a dekn bay di tir.
  Ich vel zog(dir)  a sod in oy -- er
  Ober (ikh)lign a mol tsu dir
  Shick mich a -- roys tsum shlof
  oyf eyshik, far mir

}
%################################# Chords #######################
harmonies = \chordmode {
  d8*6:m
  g8*6:m
  a8*6:7
  d8*6:m

  d8*6:m
  g8*6:m
  a8*6:7
  d8*6:m

  %b
  g8*6:m
  a8*6:7
  d8*6:m
  g8*6:m
  a8*6:7
  d8*6:m
  g8*3:m
  a8*3:7
  d8*3:m
}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Sora Hora"
    subtitle="Tango Till They're Sore"
    composer= "Harry Sweet"

    instrument =""
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}
%{
% more verses:
\markup{}
\markup {
  \font-size #2
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