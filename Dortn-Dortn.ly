\version "2.20.0"
\include "english.ly"
%\pointAndClickOff
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
  \partial 8 a8    %lead in notes

   e'8 d e(c)
   a4. c8
   e8 d16 d e8 c
   a4.e'8

   g8 g g4
   a4 g16 (f) e d
   e2 ~
   e4. c16 (e)

   g8 g g e
   c4. e16 f
   g16(f)
   e16 d e8(a)

   a4. g,8
   c8 e g(e)
   f8 d c b
   a4. r8
}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
 Oy, dor -- tn, dor -- tn
 i -- be -- rn _ va -- se -- rl,
 Oy, dor -- tn, dor -- tn,
 i -- be -- rn brik!

 Far tri -- bn hos -- tu mikh in di
 vay -- te -- ne len der,
 Un ben -- ken benk
 ihk nohk dir tsu -- rik!
}

\addlyrics{ \set stanza = #"2. "
Oy, vi -- fl ovn -- tn
tsu -- sa -- men _ ge -- ze -- sn,
Oy, vi -- fl ovn -- tn shpet in der nakht!
Un vi -- fl tre -- re -- lekh
mir _  hobn beyde far -- go -- sn
Ey -- der mir hobn(di) li -- be tsuzamen ge -- brakht!
}

\addlyrics{ \set stanza = #"3. "
Oy, helf mir, goten -- yu, oy got in _  hi  _-- ml
Helf mir got -- en -- yu, s'iz mir nit gut
Shoyn tsayt dray yor -- el -- ekh, vi mir shpiln a li _ -- be,
Un oysshpiln di li -- be kon -- en mir nit!
}
\addlyrics{ \set stanza = #"4. "

}
%################################# Chords #######################
harmonies = \chordmode {
  s8 a2*4:m
  c2
  f4 g4:7
  c2*4
  e4:m
  a4:m
  f2
  c2
  d4:m e4:7
  a2:m
}

\score {
  % transpose score below
  \transpose a c'
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Dortn, Dortn"
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
