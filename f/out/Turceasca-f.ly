\version "2.20.0"
\include "english.ly"
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
  \key d \major

  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
  \mark \default
   a4 g8 a a a a4
   a4 a a2\trill
   bf4 cs8 cs cs4 \prall bf8 g
   a2 a8 bf cs d

   e4 d8 e e e e4|
   e4 e e2 \trill
   e4 g \prall g8 f e g
   f2 r8 e f g

   a4\prall g8 f g4\prall f8 e
   f4 \prall e8 d e4 \prall e8 f % end 2nd line
   g4 \prall f8 e f4 \prall e8 d
   e4 \prall d8 cs d4\prall cs8 d

   e4 \prall d8 cs d4 \prall cs8 bf
   cs4\prall bf8 cs bf a g4 % 3rd line
   bf4 \prall bf8 cs bf a g4
   d'8 d d e d cs bf4
   bf4 \prall bf8 cs bf a g4
   e'8 d cs bf a2 \trill %end 4

 bf4 \prall bf8 cs bf a g4
   d'8 d d e d cs bf4
   bf4 \prall bf8 cs bf a g4
   e'8 d cs bf a2 \trill %end 4
 \break

  \repeat volta 2{
    \mark \default
   a8 bf cs d e4  e8 e~
   e8 e e4 e2\trill
   e4 r a4 r
   a,8 bf cs d e4 r


   a,8 bf cs d e4 e8 e~
   e8 e e4 e2 \trill
   e4 r a r
   a,8 bf cs d e4 r|

   a8 gs a bf a4\prall a
   g8 fs g a g4\prall g
   f8 e f g f4\prall f
   e8 d e f e4\prall e

   d8 cs d e d4\prall d
   cs8 bf cs d cs4\prall bf|
   a4 a'8 bf g a f g
   e8 f d e cs d bf cs
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
 a1*2
 g1:m
 a1*4
 d1:m
 g1:m
 d1:m
 a1
 g1:m
 a1
 g1*4:m
 a1
 g1*4:m
 %b
 a1*9
 g1:m
 d1:m
 g1:m
 d1:m
 g1:m
 a1*3
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

    instrument =""
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