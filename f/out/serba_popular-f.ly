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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 8*3  g8 f g  %lead in notes

  \repeat volta 2{
    \mark \default
    f8.\prall e16 d8 e |
    f8.\prall e16 d8 e |
    f8 e g-> r

    r8 c, d e
    f e g e
    f d e c


  }
  \alternative{
    {d2~ d8 g f g}
    {d2 ~ d2}
  }

  \repeat volta 2{
    \mark \default
    d'4->  a8.\upbow g16\upbow|
    fs8 g a bf|
    a g fs g|
    a4 d8-> r|

    r8 c, d e
    f e g e
    f d e c|
    d2
  }
  \break
  \mark \default
  c'2-3  (c)
  b2  (b)
  a4->r
  a4 -> r|
  a4-> a4->
  a4-> r%7 beats + r?
  d4 a8\upbow-. a\upbow-.
  d4 a8 a
  d4 a8 a|
  a8 g g r
  c4 g8 g
  g8 fs fs e
  e2 (e4) g|
  \tuplet 3/2{g8 (fs e)} \tuplet 3/2{e8 (d c)}
  c2
  g2
  \break
  \repeat volta 2{
    \mark \default
    b16  c d ds fs8.\prall es16|
    g16 fs ds d d8 c
    b16 c d ds fs8.\prall ds16|
    g16 fs ds d d8 c
    b16 c d ds fs8.\prall es16|
    g16 fs ds d d c b c
    d2 (d4)r
    d16 c b c d c b c
    d16 c b c d c b c
    d2 (d4)r
  }
}
harmonies = \chordmode {
  g8*3:m d2:m d2:m d4:m
  g4*7:m
  %r2*3
  d4*3:m
  g4:m
  d2*2:m
  %b=============
  d2*4
  %r2*3
  g2*3:m
  %r2*2
  d2:m
  %c==============
  c2*2:m
  %r2
  b2*2:m
  %r2
  d2*7
  %r2*6
  g2 c2*6
  %r2*5
  g2
  %d===============
  e4 d4 g4 c4
  e4 d4 g4 c4
  e4 d4 g4 d4

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
    title= "Serba Populaire"
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
