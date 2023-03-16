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
  \key cs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody =  \transpose cs' b \relative c''' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  gs4. a8
  gs4 fss
  gs4. e8
  ds4 cs
  %\break

  gs8 cs ds e
  fs8 e ds cs
  a'4 gs
  ds4 r
  \break
  gs4. a8
  gs4 fss
  gs4. e8
  ds4 cs
  %\break
  gs8 cs ds e|
  fs8 e ds cs
  bs4 ds
  cs4 r
  % \break
  %page 2
  \repeat volta 2{
    \mark \default
    cs'8 gs cs gs
    cs8 b a gs
    a4 gs
    fs4 r
    %\break
    b8 b, cs ds
    e8 fs gs a
    gs4 e
    ds4 ^"Ad Lib, 4 meas" r
    % \break
    gs4. a8
    gs4 fss
    gs4. e8
    ds4 cs
    % \break

    gs8 cs ds e
    fs8 e ds cs
    bs4 ds
    cs4 r %?a b or c above
  }
  %\alternative { { }{ } }


}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
%harmonies = \chordmode {
harmonies = \transpose cs' b \chordmode {
  cs4*3:m
  ds4
  cs8*3:m
  fss8:dim
  gs4:7
  cs4*5:m

  fs4:m
  cs4:m
  gs2:7

  cs4*3:m
  ds4
  cs8*3:m
  fss8:dim
  gs4:7
  cs4*4:m

  fs8:m
  fss8:dim
  gs2:7
  cs4*5:m

  %page2
  cs4:7
  fs4:m
  cs4:7
  fs4:m
  fs4:7

  b4
  b4:7 %D/C
  e8*3 %G/B
  bs8:dim
  cs4:m
  fss4:dim
  gs2:7

  cs4*3:m
  ds4
  cs2:m
  fs4:m
  fss4:dim

  cs2*2:m
  gs2:7
  cs2:m
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
