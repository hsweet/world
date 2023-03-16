\version "2.18.0"
\include "english.ly"
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
  \key c \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    %A B D and E flat!
    g2  ef'
    c2 d|
    b4 c af b
    g1

    g2 g'
    d2 ef
    b4 c d ef
    c2. c4|

    c2 f4. c8|
    f4 ef d c
    b2 d4. b8|
    c4 b8 af b4 af8 g|

    f2 \tuplet 3/2{ef'8 d c} \tuplet 3/2{ef d c}|
    b4. af8 g4 f
    g4. g'8 d4 b
    g1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    g2 g'
    g2 g
    f4. g8 af g f4|
    g2 ef

    f2 ef
    d2 c
    \tuplet3/2 {b4 c d} \tuplet 3/2{ef d c}
    d4. f,8 f4 f|

    f4. f8 b4 f
    b4. b8 c4 b8 af|
    g2 g'
    f4 ef d c

    \tuplet 3/2{b4 c d}\tuplet 3/2{ef d c}
    \tuplet 3/2{d4 c b}\tuplet 3/2{c b af}
    g4. g'8 d4 b
    g1|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
  \mark \default
    c4. d8 e2|
    e2 e
    d4. e8 f8 e d4|
    e2 c

    e4 f g2|
    g4. f8 \tuplet 3/2{af4 g f}|
    e4. c8 c d ef4|
    d2. d4

    d4. d8 \tuplet 3/2{g4 fs ef}|
    d4. c8 c b c cs|
    d4. c8 e d c b
    a2 r8 g8 c d|  %regroup?

    \tuplet 3/2{ef4 d c}\tuplet 3/2{d c b}
    c4. c8 c g a b
    c4. c8 c g ef' d
    c2 r4 c|

    b8 c4 c8 c4 c|
    b4. af8 af g g f
    f4. f8 ef' d c b
    c2 r4 c|

    c2f
    f4 ef d  c
    b2 d
    c4 b af g

    f4. f8 \tuplet3/2{ef'8 d c}\tuplet3/2{ef d c}
    b4. af8 g4 f|
    g4. g'8 d4 b
    g1|

  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  %a
  c2*3:m
  g1
  f2:m
  g1*2
  g2:7
  c2:m
  g1:7
  c1:m
  f1*2:m
  g1*2
  f1*2:m

  g2*4

  %b
  ef1*2
  %r1
  bf1:7
  ef:1
  g2:7
  c2:m
  g2:7
  c2:m
  g1
  f1*3:m
  %r1*2
  g1
  f1:m
  g2
  c2:m
  g2
  f2:m
  g1*2
  %r1

  %c 28 measures
  c1*2
  %r1
  g1:7
  c1*2
  %r1
  f1:m
  c2
  c2:m
  d1*3
  %r1*2
  d2:m
  e2:7
  a1:m
  c2:m
  g2:7
  c4*7:m
  %r4*3
  g4:7
  c1:m
  g1*2:m
  %r1
  f2:m
  g2:7
  c1:m
  f1*2:m
  %r1
  g1*2
  %r1
  f1*2:m
  %r1
  g

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose g, a, \harmonies
    }
    \new Staff
   \transpose g, a, \melody
  >>
  \header{
    title= "Naftule Shpielt Far'n Reb'n"
    subtitle="Turkish"
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
