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
  \key g \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 8*3  c8 bf c  %lead in notes

  \repeat volta 2{
    \mark \default
    bf8.\prall a16 g8 a |
    bf8.\prall a16 g8 a |
    bf8 a c-> r

    r8 f, g a
    bf a c a
    bf g a f


  }
  \alternative{
    {g2~ g8 c bf c}
    {g2 ~ g2}
  }

  \repeat volta 2{
    \mark \default
    g'4->  d8.\upbow c16\upbow|
    b8 c d ef|
    d c b c|
    d4 g8-> r|

    r8 f, g a
    bf a c a
    bf g a f|
    g2
  }
  \break
  \mark \default
  f'2-3  (f)
  e2  (e)
  d4->r
  d4 -> r|
  d4-> d4->
  d4-> r%7 beats + r?
  g4 d8\upbow-. d\upbow-.
  g4 d8 d
  g4 d8 d|
  d8 c c r
  f4 c8 c
  c8 b b a
  a2 (a4) c|
  \tuplet 3/2{c8 (b a)} \tuplet 3/2{a8 (g f)}
  f2
  c2
  \break
  \repeat volta 2{
    \mark \default
    e16  f g gs b8.\prall as16|
    c16 b gs g g8 f
    e16 f g gs b8.\prall gs16|
    c16 b gs g g8 f
    e16 f g gs b8.\prall as16|
    c16 b gs g g f e f
    g2 (g4)r
    g16 f e f g f e f
    g16 f e f g f e f
    g2 (g4)r
  }
}
harmonies = \chordmode {
  c8*3:m g2:m g2:m g4:m
  c4*7:m
  %r2*3
  g4*3:m
  c4:m
  g2*2:m
  %b=============
  g2*4
  %r2*3
  c2*3:m
  %r2*2
  g2:m
  %c==============
  f2*2:m
  %r2
  e2*2:m
  %r2
  g2*7
  %r2*6
  c2 f2*6
  %r2*5
  c2
  %d===============
  a4 g4 c4 f4
  a4 g4 c4 f4
  a4 g4 c4 g4

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
