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
   g16(af) b8 b b
   b16 (d)c8 c c
   b8 c d16(ef) c(ef)
   d4 g

   g,16(af) b8 b b
   b16 (d)c8 c c
   c16(f,) g af b(c) b af
   af16(g) g4.
  }

 % \break
  \repeat volta 2{
   \mark \default
   f'16(ef) ef(d) d4
   d16(c) c(b) b4
   d16(c) c(b) b(af) af(g)
   g8 [b d g]

   f16(ef) ef(d) d4
   d16(c) c(b) b4
   d16(c) c(b) b(af) af(g)
   g4 r8 g
    \break
  }


  \repeat volta 2{
  \mark \default
  b16(d) c8 c c
  c16 (b) af g f4
  e16(f) g af  b(c) d ef %not marked?
  f16(ef) d c b(af) g f

  b16(d) c8 c c
  f16(ef) d c b4
  d16(c) c(b) b(af) af(g)
   g4 r8 g

  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  g2
  c2:m
  g2*4
  f2:m
  g2
  %b
  g2*6
  \parenthesize f2:m
  g2
  %c
  c2:m
  f2*3:m
  c4*3:m
  g4
  \parenthesize f2:m
  g2


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
