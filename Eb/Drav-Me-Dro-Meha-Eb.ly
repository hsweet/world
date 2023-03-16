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
melody = \relative c'' {
  \clef treble
  \key a \minor
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes


  %\alternative { { }{ } }

  \repeat volta 2{
    a4. c8
    d4.  c8
    a2~
    a2

    a4. c8
    d4.  c8
    e2~
    e4. e8

    e8 d d c
    d4. c8|
    d8 c c a
    c4. d8

    e8 d d c
    d8 c d  e %
    g4. a16 g|
    f4. e8|

    e8 d d c
    d4. c8|
    d8 c c a
    c4. d8

    e8 d d c
    d c c b

    a2~a2|
  }
  % \alternative { { }{ } }
  %2nd tune
  \time 4/4
  \break
  \repeat volta 2{
    g'8 ^"Sa-Me"r16 g  g8 g g g g4|
    g8 r16 g  g8 g g g g4|
    f8 r16 f f8 f e d f4|
    f8 r16 f f8 f e d c d|
  }

  g1 ~
  g1
  r8 a g f e d c d|
  %af8 g f ef ef f g4~
  g1 ~


  g8 r8 f e d c c d~|
  e1~

  e8 r8 f e d c c d~|
  g1~

  g8 r8 f e d c c d~|%?
  e1
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2:m
  e2
  a2
  s2*2
  fss2%%?
  bs2:m
  s2
  d2:m
  s2
  bs2:m   %11
  s2

  d2:m
  s2
  bs2:m
  e2

  d2:m
  s2
  bs2:m
  s2
  d2:m
  s2
  a2:m

  %Sa-me

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
    title= "Dzav Me Dro Meha"
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
