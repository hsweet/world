\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}
%\include "Good-Morning.ly"
%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   a8 bf a bf
   a8 bf cs4
   cs8 d cs d
   cs8 d e4

   e8 f4(e8)
   d8 [f a f]
   e4.(d8)|
   cs8 bf a4

   a8 bf a bf
   a8 bf cs4
   cs8 d cs d
   cs8 d e4

   cs8d4(cs8)
   cs8(bf) \tuplet 3/2{bf8(a g)}
   a2~

  }
  \alternative {
    { a4 r8 a}
    {a4 r }
  }

  \repeat volta 2{
   \mark \default

   g'8 a4(g8)
   \tuplet 3/2 {bf8 (a g)} g4
   c,8 d4 (c8)
   \tuplet 3/2{ e8(d c)} c4

   g'8 a4(g8)
   \tuplet 3/2 {bf8 (a g)} g4
   c2
   c,2
   g'8 a4(g8)
   \tuplet 3/2 {bf8 (a g)} g4

   c,8 d4 (c8)
   \tuplet 3/2{ e8(d c)} c4
   cs8 d4(cs8)
   cs8(bf) \tuplet 3/2 {bf8(a g)}
   a2~
   a4 r
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  a2*5
  d2:m
  a2*7
  g2:m
  a2*3
  %b
  c2*2
  d4*3 c4
  c2*8
  g2*2:m %or maybe E dim?
  a2*2
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
    title= "Good Morning Bulgar"
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
