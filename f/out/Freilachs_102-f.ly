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
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   b8 e4  g16(b)
   b16(a) g a g4
   g16(fs) e fs g(a) g fs
   e8 e' e e

   b,8 e4 g16(b)
   b16(a) g a g4
   g16(fs) e fs g(a) fs g
   e4 e'
  }


  \repeat volta 2{
   \mark \default
   d,8 g4 g16(b)
   b16(a) a(g) d'4
   d16(e) e(d) d(c) c(b)
   b8. a16 b(a) g8

   d8 g4 g16(b)
   b16(a) a(g) d'4
   d16(e) e(d) d(c) c(b)
   b2
  }

 \repeat volta 2{
 \mark \default
 b16(e) b (e) b8. a16
 a8 g16 fs g4
 g16(fs) e fs g(a) g fs
 e8 e' e e

 b16(e) b (e) b8. a16
 a8 g16 fs g4
 g16(fs) e fs g(a) g fs
 %a4 a'
 }
 \alternative{
   {e4 e'}
   {e,4 e'}
}
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e2*8:m
  g2*8
  e2*7:m
  e2:m
  e4:m a4:7

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
    title= "Freilachs"
    subtitle="Ultimate Klezmer p. 102"
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
