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
  \key f \major
  \time 3/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default
   c4. bf8 bf a
   a4. g8 g f
   f4 f a
   c2.

   c4. bf8 bf a
   a4. g8 g f
   f4 f a
   c,2.

   c'4. bf8 bf a
   a4. g8 g f
   f4 f a
   d2.

   d4. c8 c b
   b4. \trill af8 g f
   g4 g g

  }
  \alternative {
    {g2 f4 }
    {g2 d4 }
  }

  \repeat volta 2{
    \mark \default
    g4 g g
    b4.\trill af8 g f
    g4 g g
    b4.\trill af8 g f

    g4 g g
    d'4. ef8 d c
    b4 c af
    g2.
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  f2.*7
  c2.
  f2.*2 f2.:7
  bf2.
  g2.
  f2.:m
  g2.*3

  %
  g4*5 f4:m
  g4*5 f4:m
  g2.*2
  f2.:m
  g2.
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
    title= "Yidishe Hora from Ukraine"
    subtitle="Kiselgof-Makonovetsky Project"
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