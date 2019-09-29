\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

\markup{AA-BB-ABC}

global = {
  \clef treble
  \key d \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
cadence = {
  \tuplet 3/2{fs8 g a} g8 fs %maybe es g a?
  fs4. d8
  \tuplet 3/2{fs8 g a} g8 fs %maybe es g a?
  fs4. ef8
  ef8 d d4-1~
  d2~
  d2~
  %d2
}

melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   d8 e fs g
   g8 a \tuplet 3/2{a g fs}
   fs8 a \tuplet 3/2{a g fs}
   fs8 a \tuplet 3/2{a g fs}
   g2 ~
   g2~
   g2~
   g2
   \repeat unfold 3 {\tuplet 3/2 {a8 (gs a)}fs 4 |}

   d8 cs b a

   d8 e fs g
   g8 a \tuplet 3/2{a g fs}
   b2
   a4. fs8
   g4 e~
   e2~
   e2~
   e2 |
   %e2
   %b4 \glissando g~
   %g2~
   %g2

   \cadence
   %d2

  }

  \alternative{
    {d4. a8}
    {d2-1}
  }

\break
  \repeat volta 2{
   \mark \default
   d'8 cs-3 c-3 b~
   b2~
   b2~
   b2~
   b2
   \repeat unfold 2{
   \tuplet 3/2{b8-2 bf-1 b} d4
   \tuplet 3/2{b8 bf b} g4-4
   }

   d8-1 e fs g
   a8 bf \tuplet 3/2 {bf a g}
   %fs8 g a bf
   %cs8 d cs16 b cs8|
   e'4. d8
   cs4. bf8
   bf16 (c bf a) a4~
   %bf8 a a4~
   a2~
   a2~
   a2
   % end phrase

   d,8 e fs g
   g8 a \tuplet 3/2{a g fs}
   b4. a8
   a4. fs8
   fs4 e~
   e2~
   e2~
   e2~
   e2

   \cadence


  }
   % needs pickup note for last section
   \alternative {
     {d2 }
     {d4. g8 }
   }
   \break
 \repeat volta 2{
   \mark \default
   fs8\prall ef fs\prall ef
   d16 ef fs g a8-> g
   %d8 fs a g   % maybe d fs
  fs8\prall ef fs\prall ef
   ef16 d c d  d4


 }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d2*4
  g2*4:m
  d2*6
  b2*2:m
  e2*4:m
  %lost chord back to D last 4 bars of A

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Bughici Sirba"
    subtitle="DRAFT"
    composer= ""
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
