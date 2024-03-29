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
  \key g \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
   c4 c8 c c c g4
   c8 g c e g2
   d4 d d8 d b4|
   d8 c b a g4. g'8

   g8 g e g d b g g'
   g8 g e g d b g g
   g4 b g'4. d8
   d4 b g2
  }

%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
Tsu dayn ge -- boy -- rn -- tog
Tsu dayn yon -- tif haynt
Hobn zikh far -- zam -- lt al -- e day -- ne fraynd
Vi -- vat! Vi -- vat! Mir vint -- shn dir!
Vi -- vat! Vi -- vat! Mir vint -- shn dir!
Mir vint -- shn dir!
Ge -- zunt un glick!
}
%################################# Chords #######################
harmonies = \chordmode {
 c2*3 g2
 d2*3 g2
  c2 g2
  c2 g2 *5

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
    title= "Yiddish Birthday Song"
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

% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line {
	\column {
	  ""
"On your birthday"
"On your special day"
"All your good friends"
"have gathered together"
"Hurrah!  We wish you health and good luck"
	}
      }
      \hspace #0.2 % vertical distance between verses
      \line {
	\column {
	 ""
	}
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
	\column {
	  ""
	}
      }
      \hspace #0.2 % distance between verses
      \line {
	\column {
	 ""
	}
      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}
