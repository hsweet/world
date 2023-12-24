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
  \key g \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    cs8 d cs d
    cs8 d b4
    cs8 d cs d
    b2

    cs8 d f d
    cs d b4
    cs8 d cs d
    b2|

  }
  %\alternative { { }{ } }

  \repeat volta 2{
    \mark \default
    g8 d g d
    g8 a b4
    g8 d a' g
    b4 b

    g8 d g d
    g8 a b4
    \tuplet 3/2{d8 c b} \tuplet 3/2{c b a}
    g4 g \break|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
    \mark \default
    \tuplet 3/2{c8 b c} \tuplet 3/2{e d c}
    \tuplet 3/2{b as b} \tuplet 3/2{d c b}
    \tuplet 3/2{a gs a} \tuplet 3/2{c b a}
    g8 b d4
    \tuplet 3/2{c8 b c} \tuplet 3/2{e d c}
    \tuplet 3/2{b as b} \tuplet 3/2{d c b}
    \tuplet 3/2{a gs a} \tuplet 3/2{c b a}
    g4 g


  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g2*2
  %r2
  d2
  g2*3
  %r2*2
  d2
  g2
  %B
  g2*6
  %r2*5
  d2
  g2
  %C
  c2
  g2
  d2
  g4
  g4:7
  c2
  g2
  d2
  g2
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
    title= "Perenita"
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
