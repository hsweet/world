\version "2.18.0"
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
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
%\include "Good-Morning-Bulgar.ly"
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   a4(f') \tuplet 3/2{f8 (e d)}
   cs4 (d) \tuplet 3/2{f8 (e d)}
   cs4 (a) \tuplet 3/2{bf8 (a g)}
   a2.

   a4 (a') \tuplet 3/2{g8 (a g)}
   e4 (f) \tuplet 3/2{f8 (e d)}
   e8.(a16) e8.(a16) e8.(a16)
   e2 e8.(f16)

   g4. f16 g \tuplet 3/2{f8 (e d)}
   cs4 d e8 f
   e4. d16 e \tuplet 3/2{d8 (cs bf)}
   a4 bf \tuplet 3/2{bf8 (a g)}

   g4 g' \tuplet 3/2{f8 (e d)}
   cs4 g a8 bf
   a8.(bf16) a8.(bf16)a8.(bf16)
   a2.
  }
  \break
  \repeat volta 2{
   \mark \default
   a'4 gs a
   f2.
   a8(gs) b a gs f
   e2.

   a8(d,)e f gs a
   gs4. f16(gs) \tuplet 3/2{f8 e d}|
   cs4.(a8) a'16 g f e
  }
   \alternative {
     {d8.(cs16) d8 e f gs |}
     {d2. }
   }

   \repeat volta 2{
   \mark \default
   f'8.(e16) d8 cs d f
   e8. d16 cs8 a cs e|
   d8.(cs16) d8 cs bf a
   g2.

   g8 a bf4 \tuplet 3/2{cs8 (d e)}
   g8 f e d cs bf
   a8 g a bf cs d
  }
   \alternative {
     {e16(f) d (f)e2 }
     { a,2.}
   }


}


%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d4*6:m
  a4*6
  d4*6:m
  a4*6
  g4*6:m
  a4*6
  g4*6:m
  a4*6
  %B
  d4*9:m
  a4*3
  d4*6:m
  a4*3
  d4*6:m
  %C
  d4*3:m
  a4*3
  g4*12:m
  a4*9
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
    title= "Good Morning"
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
