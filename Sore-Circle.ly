\version "2.24.0"
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
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
start = {
  a8. d16 f a
  af8  a a
  bf8. a16  f d
  bf8 bf b
  %bf4 g8
  c8. c16 g' ef|
  g8. f16 ef g
  gs8. f16 gs c
  cs8.bf16 g e
  d e f e f e
  d8. r
  %{ef16 f g f ef g
  gs8. f16 gs c
  g8. ef16 g bf
  f8. cs16 f gs
  g8. f16 ef d
  d4.
  %gs8 f c'
  %}


}

melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

   \start



 \break
  \repeat volta 2{
    \mark \default
  }



}
%################################# Lyrics #####################
%{
\addlyrics{ \set stanza = #"1. "
  Spielt mir nokh a ho  -- ra!
  Hent -- lach drey -- zikh oyfn grus
  Di yung -- er men -- shn gey en dread
  Di Ku -- ban -- er faln oyf di fus
  Zey fo -- rn langs di payp -- layn
  Tangoen biz zey ken nit mer,
  Zey  legt zey -- e  -- re cho -- lem  -- es,
  zey li -- gn bay der tir

  Loz mich fa -- lozn fun fen -- ster a -- roys,
  Mit kon -- fe -- ti in di hor,

  Gib mir drey gute karten
  Oyf a dekn bay di tir.
  Ich vel dir zogen a sod in oyer
  Ober (ikh)lign vegn mayn fargangenen
  Shick mich aroys tsum shlof
  oyf eyshik, far mir

}
%}
%################################# Chords #######################
harmonies = \chordmode {
  d8*6:m
  g8*6:m
  c8*6:m
  f8*6:m
  bf8*6

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
    composer= ""

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