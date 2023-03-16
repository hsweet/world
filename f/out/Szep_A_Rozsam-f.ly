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
  \key b \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody =  \transpose b, a, \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  fs4. g8
  fs4 es
  fs4. d8
  cs4 b
  %\break

  fs8 b cs d
  e8 d cs b
  g'4 fs
  cs4 r
  \break
  fs4. g8
  fs4 es
  fs4. d8
  cs4 b
  %\break
  fs8 b cs d|
  e8 d cs b
  as4 cs
  b4 r
  % \break
  %page 2
  \repeat volta 2{
    \mark \default
    b'8 fs b fs
    b8 a g fs
    g4 fs
    e4 r
    %\break
    a8 a, b cs
    d8 e fs g
    fs4 d
    cs4 ^"Ad Lib, 4 meas" r
    % \break
    fs4. g8
    fs4 es
    fs4. d8
    cs4 b
    % \break

    fs8 b cs d
    e8 d cs b
    as4 cs
    b4 r %?a b or c above
  }
  %\alternative { { }{ } }


}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
%harmonies = \chordmode {
harmonies = \transpose b, a, \chordmode {
  b4*3:m
  cs4
  b8*3:m
  es8:dim
  fs4:7
  b4*5:m

  e4:m
  b4:m
  fs2:7

  b4*3:m
  cs4
  b8*3:m
  es8:dim
  fs4:7
  b4*4:m

  e8:m
  es8:dim
  fs2:7
  b4*5:m

  %page2
  b4:7
  e4:m
  b4:7
  e4:m
  e4:7

  a4
  a4:7 %D/C
  d8*3 %G/B
  as8:dim
  b4:m
  es4:dim
  fs2:7

  b4*3:m
  cs4
  b2:m
  e4:m
  es4:dim

  b2*2:m
  fs2:7
  b2:m
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
    title= "Szép a Rózsám"
    subtitle="My Rose Is Beautiful"
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
