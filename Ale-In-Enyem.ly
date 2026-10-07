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
  \key a\minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
chorus = {
  c'4. b8 b a a b
  b4. a8 a gs gs f
  d4 d8 f a4 gs8 f
  e4 gs b e

  c4. b8 b a a b
  b4. a8 a gs gs f
  d4 d8 f a4 gs8 f
  e2 r
}

melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
  %\repeat volta 2{

  e4 a a8 a e4|
  a4 a8 e a4 a8 b
  c4. b8 a4 b
  b4 gs e a8 b
  c4. b8 a4 b
  b gs e2

  \chorus
  \section
  %}
  \break

  %\repeat volta 2{

  e4 a a a8 a|
  c4 c8 e e4 e8 e  |
  e4 c a b
  b4 gs  e4 e'8 e

  e4 c a b
  b4 gs e r
  \chorus
  %}


}
%################################# Lyrics #####################

\addlyrics{
  \set stanza = #"1. "
  Lo -- mir ale in ey -- nem, in ey -- nem
  Al -- e gest me -- ka -- bl po -- nem zayn!
  Al -- e gest me -- ka -- bl po -- nem zayn!
  Lo -- mir ale in ey -- nem
  Lo -- mir ale in ey -- nem
  Lus -- tik un frey -- lekh -- e zai -- ai -- ai yn!
  Lo -- mir ale in ey -- nem
  Lo -- mir ale in ey -- nem
  Lus -- tik un frey -- lekh -- e zayn!

  Lo -- mir ale in ey -- nem, in ey -- nem
  Di gan -- se mish -- po -che po -- nem zayn!
  Di gan -- se mish -- po -che po -- nem zayn!
  Lo -- mir ale in ey -- nem
  Lo -- mir ale in ey -- nem
  Lus -- tik un frey -- lekh -- e zai -- ai -- ai yn!!
  Lo -- mir ale in ey -- nem
  Lo -- mir ale in ey -- nem
  Lus -- tik un frey -- lekh -- e zayn!
}


%################################# Chords #######################
harmonies = \chordmode {
  a1*3:m
  e1
  a1:m

  e1
  a1:m
  e1
  d1:m
  e1
  a1:m
  e1
  d2:m
  \parenthesize b2:7
  e1
  %
  a1*3:m
  e1
  a1:m
  e1
  a1:m
  e1
  d1:m
  e1
  a1:m
  e1
  d2:m
  \parenthesize b2:7
  e1

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
    title= "Ale In Enyem"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

%{
\markup{~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ }
\markup{}
\markup{}

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