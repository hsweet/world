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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   e16(f) gs8 gs gs
   gs16 (b)a8 a a
   gs8 a b16(c) a(c)
   b4 e

   e,16(f) gs8 gs gs
   gs16 (b)a8 a a
   a16(d,) e f gs(a) gs f
   f16(e) e4.
  }

 % \break
  \repeat volta 2{
   \mark \default
   d'16(c) c(b) b4
   b16(a) a(gs) gs4
   b16(a) a(gs) gs(f) f(e)
   e8 [gs b e]

   d16(c) c(b) b4
   b16(a) a(gs) gs4
   b16(a) a(gs) gs(f) f(e)
   e4 r8 e
    \break
  }


  \repeat volta 2{
  \mark \default
  gs16(b) a8 a a
  a16 (gs) f e d4
  cs16(d) e f  gs(a) b c %not marked?
  d16(c) b a gs(f) e d

  gs16(b) a8 a a
  d16(c) b a gs4
  b16(a) a(gs) gs(f) f(e)
   e4 r8 e

  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e2
  a2:m
  e2*4
  d2:m
  e2
  %b
  e2*6
  \parenthesize d2:m
  e2
  %c
  a2:m
  d2*3:m
  a4*3:m
  e4
  \parenthesize d2:m
  e2


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
    title= "Chusidl"
    subtitle="p.84"
    composer= "Chuidl : )"
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
