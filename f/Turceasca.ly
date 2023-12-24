\version "2.20.0"
\include "english.ly"
\pointAndClickOff
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
  \key g \major

  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
  \mark \default
   d4 c8 d d d d4
   d4 d d2\trill
   ef4 fs8 fs fs4 \prall ef8 c
   d2 d8 ef fs g

   a4 g8 a a a a4|
   a4 a a2 \trill
   a4 c \prall c8 bf a c
   bf2 r8 a bf c

   d4\prall c8 bf c4\prall bf8 a
   bf4 \prall a8 g a4 \prall a8 bf % end 2nd line
   c4 \prall bf8 a bf4 \prall a8 g
   a4 \prall g8 fs g4\prall fs8 g

   a4 \prall g8 fs g4 \prall fs8 ef
   fs4\prall ef8 fs ef d c4 % 3rd line
   ef4 \prall ef8 fs ef d c4
   g'8 g g a g fs ef4
   ef4 \prall ef8 fs ef d c4
   a'8 g fs ef d2 \trill %end 4

 ef4 \prall ef8 fs ef d c4
   g'8 g g a g fs ef4
   ef4 \prall ef8 fs ef d c4
   a'8 g fs ef d2 \trill %end 4
 \break

  \repeat volta 2{
    \mark \default
   d8 ef fs g a4  a8 a~
   a8 a a4 a2\trill
   a4 r d4 r
   d,8 ef fs g a4 r


   d,8 ef fs g a4 a8 a~
   a8 a a4 a2 \trill
   a4 r d r
   d,8 ef fs g a4 r|

   d8 cs d ef d4\prall d
   c8 b c d c4\prall c
   bf8 a bf c bf4\prall bf
   a8 g a bf a4\prall a

   g8 fs g a g4\prall g
   fs8 ef fs g fs4\prall ef|
   d4 d'8 ef c d bf c
   a8 bf g a fs g ef fs
  }
  \alternative {
    { }
    { }
  }

  \repeat volta 2{
    \mark \default
  }

}
%#### ############# Chords #######################
harmonies = \chordmode {
 d1*2
 c1:m
 d1*4
 g1:m
 c1:m
 g1:m
 d1
 c1:m
 d1
 c1*4:m
 d1
 c1*4:m
 %b
 d1*9
 c1:m
 g1:m
 c1:m
 g1:m
 c1:m
 d1*3
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
    title= "Turceasca"
    subtitle="Tarif De Haidouks"
    composer= ""\version "2.22.2"

    instrument = "F Horn"
    arranger= ""
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