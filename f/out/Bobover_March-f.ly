\version "2.18.0"
\include "english.ly"
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
  \key d \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global

  \partial 4*1 a4    %lead in notes
  \mark \default
  d8. e16 fs4 fs fs
  fs8 g e fs d2
  e8. d16 e8 fs g fs e d
  fs1

  d8. e16 fs4 fs fs
  fs8 g e fs d2
  e8. d16 e8 fs g fs e fs
  d1

  \repeat volta 2{
    \mark \default
    fs8. g16 a4 a  a|
    b4 a g fs
    g8. fs16 g8 fs g b a g
    fs1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    fs8. a16 g4 g g16 fs g gs|
    a4 fs e d
    e8. d16 e8 fs g fs e d

  }
  \alternative { {fs1 }{d1 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s4
  d4*5
  a4
  d2
  a1
  d4*9
  a4
  d2
  a1
  d1
  %
  d1
  g4
  d4
  a4 %?
  d4
  g1
  d1
  %
  d4
  g4*3
  a2
  d2
  a1
  d1*2

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Bobover March"
    subtitle="Chasiddik"
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
