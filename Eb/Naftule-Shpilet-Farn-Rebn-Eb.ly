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
melody =  \relative c'' {
  \clef treble
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    %A B D and E flat!
    a2  f'
    d2 e|
    cs4 d bf cs
    a1

    a2 a'
    e2 f
    cs4 d e f
    d2. d4|

    d2 g4. d8|
    g4 f e d
    cs2 e4. cs8|
    d4 cs8 bf cs4 bf8 a|

    g2 \tuplet 3/2{f'8 e d} \tuplet 3/2{f e d}|
    cs4. bf8 a4 g
    a4. a'8 e4 cs
    a1
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    a2 a'
    a2 a
    g4. a8 bf a g4|
    a2 f

    g2 f
    e2 d
    \tuplet3/2 {cs4 d e} \tuplet 3/2{f e d}
    e4. g,8 g4 g|

    g4. g8 cs4 g
    cs4. cs8 d4 cs8 bf|
    a2 a'
    g4 f e d

    \tuplet 3/2{cs4 d e}\tuplet 3/2{f e d}
    \tuplet 3/2{e4 d cs}\tuplet 3/2{d cs bf}
    a4. a'8 e4 cs
    a1|
  }
  % \alternative { { }{ } }
  \repeat volta 2{
  \mark \default
    d4. e8 fs2|
    fs2 fs
    e4. fs8 g8 fs e4|
    fs2 d

    fs4 g a2|
    a4. g8 \tuplet 3/2{bf4 a g}|
    fs4. d8 d e f4|
    e2. e4

    e4. e8 \tuplet 3/2{a4 gs f}|
    e4. d8 d cs d ds|
    e4. d8 fs e d cs
    b2 r8 a8 d e|  %regroup?

    \tuplet 3/2{f4 e d}\tuplet 3/2{e d cs}
    d4. d8 d a b cs
    d4. d8 d a f' e
    d2 r4 d|

    cs8 d4 d8 d4 d|
    cs4. bf8 bf a a g
    g4. g8 f' e d cs
    d2 r4 d|

    d2g
    g4 f e  d
    cs2 e
    d4 cs bf a

    g4. g8 \tuplet3/2{f'8 e d}\tuplet3/2{f e d}
    cs4. bf8 a4 g|
    a4. a'8 e4 cs
    a1|

  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  %a
  d2*3:m
  a1
  g2:m
  a1*2
  a2:7
  d2:m
  a1:7
  d1:m
  g1*2:m
  a1*2
  g1*2:m

  a2*4

  %b
  f1*2
  %r1
  c1:7
  f:1
  a2:7
  d2:m
  a2:7
  d2:m
  a1
  g1*3:m
  %r1*2
  a1
  g1:m
  a2
  d2:m
  a2
  g2:m
  a1*2
  %r1

  %c 28 measures
  d1*2
  %r1
  a1:7
  d1*2
  %r1
  g1:m
  d2
  d2:m
  e1*3
  %r1*2
  e2:m
  fs2:7
  b1:m
  d2:m
  a2:7
  d4*7:m
  %r4*3
  a4:7
  d1:m
  a1*2:m
  %r1
  g2:m
  a2:7
  d1:m
  g1*2:m
  %r1
  a1*2
  %r1
  g1*2:m
  %r1
  a

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose a b \harmonies
    }
    \new Staff
   \transpose a b \melody
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
