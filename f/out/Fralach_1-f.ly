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

%#################################### Melody ########################
melody = \relative c''{
  \clef treble
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    a8 [g fs g]
    a4 bf
    a2~
    a2

    cs8 [bf a bf]
    cs4  d
    e2~
    e2

    e8 f g r
    g8 r g r
    g8 [(f) f (e)] |
    e8[(d)d(cs)]

    cs8 d e r|
    e8 r e r
    e8[(d)d(cs)]
    cs[(bf) bf (a)]

    g8 [fs g a]
    bf8 [d cs bf]
  }
  \alternative { {a2~a4 r }{a2~a4 r8 a } }

  \repeat volta 2{
  \mark \default
    d4.  a16 d
    f4. d16 f
    a2~
    a2

    a8 \prall [(g) g \prall (f])
    f8 \prall [(e)e\prall (d)]
    e2~
    e8 [a, (bf a)] %add a grace

    e'4. f8
    g4. a8
    bf2~
    bf2

    a8[(g)g(f)]
    f[(e)e(d)]


  }
  \alternative {
    {
      f2
      \tuplet 3/2{a8 g f}
      \tuplet 3/2 {f e d}

    }
    {
      d4. e16 f
      d2
    }
  }

  \repeat volta 2{
  \mark \default
    e8  d cs4 ->
    cs8 bf a4 ->
    a8 [d cs d]
    e8 r a->r

    e8 d cs4 ->
    cs8 bf a4 ->
    bf8 [a g d'-]
    a8 r a r|

  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2*8
  %r2*15
  %maybe
  %r2*7
  g2*4:m
  %r2*3
  a2*4
  %r2*3
  %end maybe
  g2*2:m
  %r2
  a2*4
  %r2*3
  %b
  d2*6:m
  %r2*5
  a2*4
  %r2*3
  g2*2:m
  %r2
  a2*2
  %r2
  d2*4:m
  %r2*3
  %c
  a2*6
  %r2*5
  g2:m
  a2
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
    title= "No. 1 Frailach"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "Kammen"
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
