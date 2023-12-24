\version "2.18.0"
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
  \key c \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
   f4 f8 f f f c4
   f8 c f a c2
   g4 g g8 g e4|
   g8 f e d c4. c'8

   c8 c a c g e c c'
   c8 c a c g e c c
   c4 e c'4. g8
   g4 e c2
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
 f2*3 c2
 g2*3 c2
  f2 c2
  f2 c2 *5

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
    title= "Yiddish Birthday Song"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
