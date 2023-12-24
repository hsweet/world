\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key f \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 4*4 r8 c f e f g a bf|
  %lead in notes

  \repeat volta 2{
    \mark \default
    c4 c8 bf c4 c8 bf
    c4 c8 bf c d bf c|
    a1~

    a8 c, f e f g a bf|
    c4 c8 bf c4 c8 bf
    c4 c8 bf a bf g a|
    f1


  }
  %\alternative { { }{ } }

  \repeat volta 2{
    r4 c' d e
    f1~
    f4 e8 f g4 f|
    e1~
    e4 d8 e f4 e|
    d1~


  }
  \alternative {
    {
      d4 c8 d e4 c
      a1
    }

    {
      d4 c8 d e4 c
      f1
    }
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Never On A Sunday"
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
