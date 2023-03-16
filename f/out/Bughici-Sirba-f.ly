\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

\markup{Form: AA-BB-ABC}

global = {
  \clef treble
  \key a \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
cadence = {
  \tuplet 3/2{cs8 d e} d8 cs %maybe es g a?
  cs4. a,8
  \tuplet 3/2{cs8 d e} d8 cs %maybe es g a?
  cs4. bf,8-2
  bf,8 a, a,4~
  a,2~
  a,2~
  %d2
}

melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   a8 b cs d
   d8 e \tuplet 3/2{e d cs}
   cs8 e \tuplet 3/2{e d cs}
   cs8 e \tuplet 3/2{e d cs}
   d2 ~
   d2~
   d2~
   d2
   \repeat unfold 3 {\tuplet 3/2 {e8 (ds e)}cs 4 |}

   a8 gs fs e

   a8 b cs d
   d8 e \tuplet 3/2{e d cs}
   fs2
   e4. cs8
   d4 b~
   b2~
   b2~
   b2 |
   %e2
   %b4 \glissando g~
   %g2~
   %g2

   \cadence
   %d2

  }

  \alternative{
    {a4. e8}
    % {d4. d'8}
    {a8 a'8 gs8-3 g-3 }
  }

\break
  \repeat volta 2{
   \mark \default
  % cs8-3 c-3 b4~
   fs2~
   fs2~
   fs2~
   fs2   % am I an extra measuere?
   \repeat unfold 2{
   \tuplet 3/2{fs8-2 f-1 fs} a4
   \tuplet 3/2{fs8 f fs} d4-4
   }

   a8-1 b cs d
   e8 (f) \tuplet 3/2 {f (e d-3)}
   %fs8 g a bf
   %cs8 d cs16 b cs8|
   b'4.-4  a8-4
   gs4. f8
   f16 (g f e) e4~
   %bf8 a a4~
   e2~
   e2~
   e2
   % end phrase

   a,8 b cs d
   d8 e \tuplet 3/2{e d cs}
   fs4. e8
   d4. cs8
   cs4 b~
   b2~
   b2~
   b2~
   %e2 % am I an extra measure?

   \cadence


  }
   % needs pickup note for last section
   \alternative {
     {a8 a'8 gs8-3 g-3 }
     {a,4. d8 }
   }
   \break
 \repeat volta 2{
   \mark \default
   cs8\prall bf cs\prall bf
   a16 bf cs d e8-> d
   %d8 fs a g   % maybe d fs
  cs8\prall bf cs\prall bf
   bf16 a g a  a4


 }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a2*4
  d2*4
  a2*6
  fs2*2
  b2*4:m
  a2*9
  %b
  d2*8
  a2*2
  e2*6
  a4*7
  e4*9:7
  a2*9
  a2*4
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
    subtitle=""
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
