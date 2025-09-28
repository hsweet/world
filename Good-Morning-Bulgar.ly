\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \key g \minor
  \time 2/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}
%\include "Good-Morning.ly"
%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   d8 ef d ef
   d8 ef fs4
   fs8 g fs g
   fs8 g a4

   a8 bf4(a8)
   g8 [bf d bf]
   a4.(g8)|
   fs8 ef d4

   d8 ef d ef
   d8 ef fs4
   fs8 g fs g
   fs8 g a4

   fs8g4(fs8)
   fs8(ef) \tuplet 3/2{ef8(d c)}
   d2~

  }
  \alternative {
    { d4 r8 d}
    {d4 r }
  }

  \repeat volta 2{
   \mark \default

   c'8 d4(c8)
   \tuplet 3/2 {ef8 (d c)} c4
   f,8 g4 (f8)
   \tuplet 3/2{ a8(g f)} f4

   c'8 d4(c8)
   \tuplet 3/2 {ef8 (d c)} c4
   f2
   f,2
   c'8 d4(c8)
   \tuplet 3/2 {ef8 (d c)} c4

   f,8 g4 (f8)
   \tuplet 3/2{ a8(g f)} f4
   fs8 g4(fs8)
   fs8(ef) \tuplet 3/2 {ef8(d c)}
   d2~
   d4 r
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  d2*5
  g2:m
  d2*7
  c2:m
  d2*3
  %b
  f2*2
  g4*3 f4
  f2*8
  c2*2:m %or maybe E dim?
  d2*2
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
    title= "Good Morning Bulgar"
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
