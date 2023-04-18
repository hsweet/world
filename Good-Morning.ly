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
  \key g \minor
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
   d4(bf') \tuplet 3/2{bf8 (a g)}
   fs4 (g) \tuplet 3/2{bf8 (a g)}
   fs4 (d) \tuplet 3/2{ef8 (d c)}
   d2.

   d4 (d') \tuplet 3/2{c8 (d c)}
   a4 (bf) \tuplet 3/2{bf8 (a g)}
   a8.(d16) a8.(d16) a8.(d16)
   a2 a8.(bf16)

   c4. bf16 c \tuplet 3/2{bf8 (a g)}
   fs4 g a8 bf
   a4. g16 a \tuplet 3/2{g8 (fs ef)}
   d4 ef \tuplet 3/2{ef8 (d c)}

   c4 c' \tuplet 3/2{bf8 (a g)}
   fs4 c d8 ef
   d8.(ef16) d8.(ef16)d8.(ef16)
   d2.
  }
  \break
  \repeat volta 2{
   \mark \default
   d'4 cs d
   bf2.
   d8(cs) e d cs bf
   a2.

   d8(g,)a bf cs d
   cs4. bf16(cs) \tuplet 3/2{bf8 a g}|
   fs4.(d8) d'16 c bf a
  }
   \alternative {
     {g8.(fs16) g8 a bf cs |}
     {g2. }
   }

   \repeat volta 2{
   \mark \default
   bf'8.(a16) g8 fs g bf
   a8. g16 fs8 d fs a|
   g8.(fs16) g8 fs ef d
   c2.

   c8 d ef4 \tuplet 3/2{fs8 (g a)}
   c8 bf a g fs ef
   d8 c d ef fs g
  }
   \alternative {
     {a16(bf) g (bf)a2 }
     { d,2.}
   }


}


%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  g4*6:m
  d4*6
  g4*6:m
  d4*6
  c4*6:m
  d4*6
  c4*6:m
  d4*6
  %B
  g4*9:m
  d4*3
  g4*6:m
  d4*3
  g4*6:m
  %C
  g4*3:m
  d4*3
  c4*12:m
  d4*9
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody


  >>
  \header{
    title= "Good Morning"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
