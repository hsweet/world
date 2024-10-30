\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
melody = \relative c''' {
  \global
  \partial 8*3  a8 g a  %lead in notes

  \repeat volta 2{
    \mark \default
    g8.\prall fs16 e8 fs |
    g8.\prall fs16 e8 fs |
    g8 fs a-> r

    r8 d, e fs
    g fs a fs
    g e fs d


  }
  \alternative{
    {e2~ e8 a g a}
    {e2 ~ e2}
  }

  \repeat volta 2{
    \mark \default
    e'4->  b8.\upbow a16\upbow|
    gs8 a b c|
    b a gs a|
    b4 e8-> r|

    r8 d, e fs
    g fs a fs
    g e fs d|
    e2
  }
  \break
  \mark \default
  d'2-3  (d)
  cs2  (cs)
  b4->r
  b4 -> r|
  b4-> b4->
  b4-> r%7 beats + r?
  e4 b8\upbow-. b\upbow-.
  e4 b8 b
  e4 b8 b|
  b8 a a r
  d4 a8 a
  a8 gs gs fs
  fs2 (fs4) a|
  \tuplet 3/2{a8 (gs fs)} \tuplet 3/2{fs8 (e d)}
  d2
  a2
  \break
  \repeat volta 2{
    \mark \default
    cs16  d e es gs8.\prall fss16|
    a16 gs es e e8 d
    cs16 d e es gs8.\prall es16|
    a16 gs es e e8 d
    cs16 d e es gs8.\prall fss16|
    a16 gs es e e d cs d
    e2 (e4)r
    e16 d cs d e d cs d
    e16 d cs d e d cs d
    e2 (e4)r
  }
}
harmonies = \chordmode {
  a8*3:m e2:m e2:m e4:m
  a4*7:m
  %r2*3
  e4*3:m
  a4:m
  e2*2:m
  %b=============
  e2*4
  %r2*3
  a2*3:m
  %r2*2
  e2:m
  %c==============
  d2*2:m
  %r2
  cs2*2:m
  %r2
  e2*7
  %r2*6
  a2 d2*6
  %r2*5
  a2
  %d===============
  fs4 e4 a4 d4
  fs4 e4 a4 d4
  fs4 e4 a4 e4

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
    title= "Serba Populaire"
    subtitle=""
    composer= ""
    instrument = "Eb Instrument"
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
