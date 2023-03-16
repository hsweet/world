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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   d16(ef) fs8 fs fs
   fs16 (a)g8 g g
   fs8 g a16(bf) g(bf)
   a4 d

   d,16(ef) fs8 fs fs
   fs16 (a)g8 g g
   g16(c,) d ef fs(g) fs ef
   ef16(d) d4.
  }

 % \break
  \repeat volta 2{
   \mark \default
   c'16(bf) bf(a) a4
   a16(g) g(fs) fs4
   a16(g) g(fs) fs(ef) ef(d)
   d8 [fs a d]

   c16(bf) bf(a) a4
   a16(g) g(fs) fs4
   a16(g) g(fs) fs(ef) ef(d)
   d4 r8 d
    \break
  }


  \repeat volta 2{
  \mark \default
  fs16(a) g8 g g
  g16 (fs) ef d c4
  b16(c) d ef  fs(g) a bf %not marked?
  c16(bf) a g fs(ef) d c

  fs16(a) g8 g g
  c16(bf) a g fs4
  a16(g) g(fs) fs(ef) ef(d)
   d4 r8 d

  }
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d2
  g2:m
  d2*4
  c2:m
  d2
  %b
  d2*6
  \parenthesize c2:m
  d2
  %c
  g2:m
  c2*3:m
  g4*3:m
  d4
  \parenthesize c2:m
  d2


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
