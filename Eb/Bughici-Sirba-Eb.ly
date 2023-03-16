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
  \key b \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
cadence = {
  \tuplet 3/2{ds'8 e' fs'} e'8 ds' %maybe es g a?
  ds'4. b8
  \tuplet 3/2{ds'8 e' fs'} e'8 ds' %maybe es g a?
  ds'4. c'8-2
  c'8 b b4~
  b2~
  b2~
  %d2
}

melody = \relative c''' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   b8 cs ds e
   e8 fs \tuplet 3/2{fs e ds}
   ds8 fs \tuplet 3/2{fs e ds}
   ds8 fs \tuplet 3/2{fs e ds}
   e2 ~
   e2~
   e2~
   e2
   \repeat unfold 3 {\tuplet 3/2 {fs8 (es fs)}ds 4 |}

   b8 as gs fs

   b8 cs ds e
   e8 fs \tuplet 3/2{fs e ds}
   gs2
   fs4. ds8
   e4 cs~
   cs2~
   cs2~
   cs2 |
   %e2
   %b4 \glissando g~
   %g2~
   %g2

   \cadence
   %d2

  }

  \alternative{
    {b4. fs8}
    % {d4. d'8}
    {b8 b'8 as8-3 a-3 }
  }

\break
  \repeat volta 2{
   \mark \default
  % cs8-3 c-3 b4~
   gs2~
   gs2~
   gs2~
   gs2   % am I an extra measuere?
   \repeat unfold 2{
   \tuplet 3/2{gs8-2 g-1 gs} b4
   \tuplet 3/2{gs8 g gs} e4-4
   }

   b8-1 cs ds e
   fs8 (g) \tuplet 3/2 {g (fs e-3)}
   %fs8 g a bf
   %cs8 d cs16 b cs8|
   cs'4.-4  b8-4
   as4. g8
   g16 (a g fs) fs4~
   %bf8 a a4~
   fs2~
   fs2~
   fs2
   % end phrase

   b,8 cs ds e
   e8 fs \tuplet 3/2{fs e ds}
   gs4. fs8
   e4. ds8
   ds4 cs~
   cs2~
   cs2~
   cs2~
   %e2 % am I an extra measure?

   \cadence


  }
   % needs pickup note for last section
   \alternative {
     {b8 b'8 as8-3 a-3 }
     {b,4. e8 }
   }
   \break
 \repeat volta 2{
   \mark \default
   ds8\prall c ds\prall c
   b16 c ds e fs8-> e
   %d8 fs a g   % maybe d fs
  ds8\prall c ds\prall c
   c16 b a b  b4


 }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b2*4
  e2*4
  b2*6
  gs2*2
  cs2*4:m
  b2*9
  %b
  e2*8
  b2*2
  fs2*6
  b4*7
  fs4*9:7
  b2*9
  b2*4
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
