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
  \key e \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global

  \partial 4*1 b4    %lead in notes
  \mark \default
  e8. fs16 gs4 gs gs
  gs8 a fs gs e2
  fs8. e16 fs8 gs a gs fs e
  gs1

  e8. fs16 gs4 gs gs
  gs8 a fs gs e2
  fs8. e16 fs8 gs a gs fs gs
  e1

  \repeat volta 2{
    \mark \default
    gs8. a16 b4 b  b|
    cs4 b a e
    a8. gs16 a8 gs a cs b a
    gs1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    gs8. b16 a4 a a16 gs a as|
    b4 gs fs e
    fs8. e16 fs8 gs a gs fs e

  }
  \alternative { {gs1 }{e1 } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  s4
  e4*5
  b4
  e2
  b1
  e4*9
  b4
  e2
  b1
  e1
  %
  e1
  a4
  e4
  b4 %?
  e4
  a1
  e1
  %
  e4
  a4*3
  b2
  e2
  b1
  e1*2

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
