\version "2.20.0"
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
melody = \relative c {
  \global
  \partial 8 e8    %lead in notes

   b'8 a b(g)
   e4. g8
   b8 a16 a b8 g
   e4.b'8

   d8 d d4
   e4 d16 (c) b a
   b2 ~
   b4. g16 (b)

   d8 d d b
   g4. b16 c
   d16(c)
   b16 a b8(e)

   e4. d,8
   g8 b d(b)
   c8 a g fs
   e4. r8
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
  s8 e2*4:m
  g2
  c4 d4:7
  g2*4
  b4:m
  e4:m
  c2
  g2
  a4:m b4:7
  e2:m
}

\score {
  % transpose score below
  \transpose e g
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
