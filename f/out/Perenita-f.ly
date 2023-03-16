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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    gs8 a gs a
    gs8 a fs4
    gs8 a gs a
    fs2

    gs8 a c a
    gs a fs4
    gs8 a gs a
    fs2|

  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    d8 a d a
    d8 e fs4
    d8 a e' d
    fs4 fs

    d8 a d a
    d8 e fs4
    \tuplet 3/2{a8 g fs} \tuplet 3/2{g fs e}
    d4 d \break|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
    \mark \default
    \tuplet 3/2{g8 fs g} \tuplet 3/2{b a g}
    \tuplet 3/2{fs es fs} \tuplet 3/2{a g fs}
    \tuplet 3/2{e ds e} \tuplet 3/2{g fs e}
    d8 fs a4
    \tuplet 3/2{g8 fs g} \tuplet 3/2{b a g}
    \tuplet 3/2{fs es fs} \tuplet 3/2{a g fs}
    \tuplet 3/2{e ds e} \tuplet 3/2{g fs e}
    d4 d


  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d2*2
  %r2
  a2
  d2*3
  %r2*2
  a2
  d2
  %B
  d2*6
  %r2*5
  a2
  d2
  %C
  g2
  d2
  a2
  d4
  d4:7
  g2
  d2
  a2
  d2
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
