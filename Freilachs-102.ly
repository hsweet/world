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
  \key a \minor
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
   e8 a4  c16(e)
   e16(d) c d c4
   c16(b) a b c(d) c b
   a8 a' a a

   e,8 a4 c16(e)
   e16(d) c d c4
   c16(b) a b c(d) b c
   a4 a'
  }


  \repeat volta 2{
   \mark \default
   g,8 c4 c16(e)
   e16(d) d(c) g'4
   g16(a) a(g) g(f) f(e)
   e8. d16 e(d) c8

   g8 c4 c16(e)
   e16(d) d(c) g'4
   g16(a) a(g) g(f) f(e)
   e2
  }

 \repeat volta 2{
 \mark \default
 e16(a) e (a) e8. d16
 d8 c16 b c4
 c16(b) a b c(d) c b
 a8 a' a a

 e16(a) e (a) e8. d16
 d8 c16 b c4
 c16(b) a b c(d) c b
 %a4 a'
 }
 \alternative{
   {a4 a'}
   {a,4 a'}
}
}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a2*8:m
  c2*8
  a2*7:m
  a2:m
  a4:m d4:7

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
    instrument = "Violin"
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
