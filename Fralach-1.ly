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
melody = \relative c'{
  \clef treble
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    d8 [c b c]
    d4 ef
    d2~
    d2

    fs8 [ef d ef]
    fs4  g
    a2~
    a2

    a8 bf c r
    c8 r c r
    c8 [(bf) bf (a)] |
    a8[(g)g(fs)]

    fs8 g a r|
    a8 r a r
    a8[(g)g(fs)]
    fs[(ef) ef (d)]

    c8 [b c d]
    ef8 [g fs ef]
  }
  \alternative { {d2~d4 r }{d2~d4 r8 d } }

  \repeat volta 2{
  \mark \default
    g4.  d16 g
    bf4. g16 bf
    d2~
    d2

    d8 \prall [(c) c \prall (bf])
    bf8 \prall [(a)a\prall (g)]
    a2~
    a8 [d, (ef d)] %add a grace

    a'4. bf8
    c4. d8
    ef2~
    ef2

    d8[(c)c(bf)]
    bf[(a)a(g)]


  }
  \alternative {
    {
      bf2
      \tuplet 3/2{d8 c bf}
      \tuplet 3/2 {bf a g}

    }
    {
      g4. a16 bf
      g2
    }
  }

  \repeat volta 2{
  \mark \default
    a8  g fs4 ->
    fs8 ef d4 ->
    d8 [g fs g]
    a8 r d->r

    a8 g fs4 ->
    fs8 ef d4 ->
    ef8 [d c g'-]
    d8 r d r|

  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d2*8
  %r2*15
  %maybe
  %r2*7
  c2*4:m
  %r2*3
  d2*4
  %r2*3
  %end maybe
  c2*2:m
  %r2
  d2*4
  %r2*3
  %b
  g2*6:m
  %r2*5
  d2*4
  %r2*3
  c2*2:m
  %r2
  d2*2
  %r2
  g2*4:m
  %r2*3
  %c
  d2*6
  %r2*5
  c2:m
  d2
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
    title= "No. 1 Frailach"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= "Kammen"
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
