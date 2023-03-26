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
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody =  \transpose e d \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  b4. c8
  b4 as
  b4. g8
  fs4 e
  %\break

  b8 e fs g
  a8 g fs e
  c'4 b
  fs4 r
  \break
  b4. c8
  b4 as
  b4. g8
  fs4 e
  %\break
  b8 e fs g|
  a8 g fs e
  ds4 fs
  e4 r
  % \break
  %page 2
  \repeat volta 2{
    \mark \default
    e'8 b e b
    e8 d c b
    c4 b
    a4 r
    %\break
    d8 d, e fs
    g8 a b c
    b4 g
    fs4 ^"Ad Lib, 4 meas" r
    % \break
    b4. c8
    b4 as
    b4. g8
    fs4 e
    % \break

    b8 e fs g
    a8 g fs e
    ds4 fs
    e4 r %?a b or c above
  }
  %\alternative { { }{ } }


}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
%harmonies = \chordmode {
harmonies = \transpose e d \chordmode {
  e4*3:m
  fs4
  e8*3:m
  as8:dim
  b4:7
  e4*5:m

  a4:m
  e4:m
  b2:7

  e4*3:m
  fs4
  e8*3:m
  as8:dim
  b4:7
  e4*4:m

  a8:m
  as8:dim
  b2:7
  e4*5:m

  %page2
  e4:7
  a4:m
  e4:7
  a4:m
  a4:7

  d4
  d4:7 %D/C
  g8*3 %G/B
  ds8:dim
  e4:m
  as4:dim
  b2:7

  e4*3:m
  fs4
  e2:m
  a4:m
  as4:dim

  e2*2:m
  b2:7
  e2:m
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
    title= "Szép a Rózsám"
    subtitle="My Rose Is Beautiful"
    composer= ""
    instrument = "Violin"
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
