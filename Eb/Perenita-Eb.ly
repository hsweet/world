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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    as8 b as b
    as8 b gs4
    as8 b as b
    gs2

    as8 b d b
    as b gs4
    as8 b as b
    gs2|

  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    e8 b e b
    e8 fs gs4
    e8 b fs' e
    gs4 gs

    e8 b e b
    e8 fs gs4
    \tuplet 3/2{b8 a gs} \tuplet 3/2{a gs fs}
    e4 e \break|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
    \mark \default
    \tuplet 3/2{a8 gs a} \tuplet 3/2{cs b a}
    \tuplet 3/2{gs fss gs} \tuplet 3/2{b a gs}
    \tuplet 3/2{fs es fs} \tuplet 3/2{a gs fs}
    e8 gs b4
    \tuplet 3/2{a8 gs a} \tuplet 3/2{cs b a}
    \tuplet 3/2{gs fss gs} \tuplet 3/2{b a gs}
    \tuplet 3/2{fs es fs} \tuplet 3/2{a gs fs}
    e4 e


  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e2*2
  %r2
  b2
  e2*3
  %r2*2
  b2
  e2
  %B
  e2*6
  %r2*5
  b2
  e2
  %C
  a2
  e2
  b2
  e4
  e4:7
  a2
  e2
  b2
  e2
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
    title= "Perenita"
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
