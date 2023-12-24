\version "2.18.0"
\include "english.ly"
\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers= ##t
  #(set-paper-size "letter")
  obsolete-between-system-padding = #0.1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
  obsolete-between-system-space = #0.1  system-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing #'basic-distance = #(/ obsolete-between-system-space staff-space)
  ragged-last-bottom = ##f
  ragged-bottom = ##f

}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

%#################################### Melody ########################
melody =  \relative c' {
  \clef treble
  \key f \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    %A B D and E flat!
    c2  af'
    f2 g|
    e4 f df e
    c1

    c2 c'
    g2 af
    e4 f g af
    f2. f4|

    f2 bf4. f8|
    bf4 af g f
    e2 g4. e8|
    f4 e8 df e4 df8 c|

    bf2 \tuplet 3/2{af'8 g f} \tuplet 3/2{af g f}|
    e4. df8 c4 bf
    c4. c'8 g4 e
    c1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    c2 c'
    c2 c
    bf4. c8 df c bf4|
    c2 af

    bf2 af
    g2 f
    \tuplet3/2 {e4 f g} \tuplet 3/2{af g f}
    g4. bf,8 bf4 bf|

    bf4. bf8 e4 bf
    e4. e8 f4 e8 df|
    c2 c'
    bf4 af g f

    \tuplet 3/2{e4 f g}\tuplet 3/2{af g f}
    \tuplet 3/2{g4 f e}\tuplet 3/2{f e df}
    c4. c'8 g4 e
    c1|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
  \mark \default
    f4. g8 a2|
    a2 a
    g4. a8 bf8 a g4|
    a2 f

    a4 bf c2|
    c4. bf8 \tuplet 3/2{df4 c bf}|
    a4. f8 f g af4|
    g2. g4

    g4. g8 \tuplet 3/2{c4 b af}|
    g4. f8 f e f fs|
    g4. f8 a g f e
    d2 r8 c8 f g|  %regroup?

    \tuplet 3/2{af4 g f}\tuplet 3/2{g f e}
    f4. f8 f c d e
    f4. f8 f c af' g
    f2 r4 f|

    e8 f4 f8 f4 f|
    e4. df8 df c c bf
    bf4. bf8 af' g f e
    f2 r4 f|

    f2bf
    bf4 af g  f
    e2 g
    f4 e df c

    bf4. bf8 \tuplet3/2{af'8 g f}\tuplet3/2{af g f}
    e4. df8 c4 bf|
    c4. c'8 g4 e
    c1|

  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  %a
  f2*3:m
  c1
  bf2:m
  c1*2
  c2:7
  f2:m
  c1:7
  f1:m
  bf1*2:m
  c1*2
  bf1*2:m

  c2*4

  %b
  af1*2
  %r1
  ef1:7
  af:1
  c2:7
  f2:m
  c2:7
  f2:m
  c1
  bf1*3:m
  %r1*2
  c1
  bf1:m
  c2
  f2:m
  c2
  bf2:m
  c1*2
  %r1

  %c 28 measures
  f1*2
  %r1
  c1:7
  f1*2
  %r1
  bf1:m
  f2
  f2:m
  g1*3
  %r1*2
  g2:m
  a2:7
  d1:m
  f2:m
  c2:7
  f4*7:m
  %r4*3
  c4:7
  f1:m
  c1*2:m
  %r1
  bf2:m
  c2:7
  f1:m
  bf1*2:m
  %r1
  c1*2
  %r1
  bf1*2:m
  %r1
  c

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \transpose c d \harmonies
    }
    \new Staff
   \transpose c d \melody
  >>
  \header{
    title= "Naftule Shpielt Far'n Reb'n"
    subtitle="Turkish"
    composer= ""
    instrument = "F Horn"
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
