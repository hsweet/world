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
  \key a \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c' {
  \global
   d4 d8 d d d a4
   d8 a d fs a2
   e4 e e8 e cs4|
   e8 d cs b a4. a'8

   a8 a fs a e cs a a
   a'8 a fs a e cs a a
   a4 cs a'4. e8
   e4 cs a2
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
 d2*3 a2
 e2*3 a2
  d2 a2
  d2 a2 *4
  d2

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
