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
  \key e \minor
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
   b8 c b c
   b8 c ds4
   ds8 e ds e
   ds8 e fs4

   fs8 g4(fs8)
   e8 [g b g]
   fs4.(e8)|
   ds8 c b4

   b8 c b c
   b8 c ds4
   ds8 e ds e
   ds8 e fs4

   ds8e4(ds8)
   ds8(c) \tuplet 3/2{c8(b a)}
   b2~

  }
  \alternative {
    { b4 r8 b}
    {b4 r }
  }

  \repeat volta 2{
   \mark \default

   a'8 b4(a8)
   \tuplet 3/2 {c8 (b a)} a4
   d,8 e4 (d8)
   \tuplet 3/2{ fs8(e d)} d4

   a'8 b4(a8)
   \tuplet 3/2 {c8 (b a)} a4
   d2
   d,2
   a'8 b4(a8)
   \tuplet 3/2 {c8 (b a)} a4

   d,8 e4 (d8)
   \tuplet 3/2{ fs8(e d)} d4
   ds8 e4(ds8)
   ds8(c) \tuplet 3/2 {c8(b a)}
   b2~
   b4 r
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b2*5
  e2:m
  b2*7
  a2:m
  b2*3
  %b
  d2*2
  e4*3 d4
  d2*8
  a2*2:m %or maybe E dim?
  b2*2
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
