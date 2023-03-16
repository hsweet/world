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
melody = \relative c' {
  \clef treble
  \key g \minor
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes


  %\alternative { { }{ } }

  \repeat volta 2{
    g4. bf8
    c4.  bf8
    g2~
    g2

    g4. bf8
    c4.  bf8
    d2~
    d4. d8

    d8 c c bf
    c4. bf8|
    c8 bf bf g
    bf4. c8

    d8 c c bf
    c8 bf c  d %
    f4. g16 f|
    ef4. d8|

    d8 c c bf
    c4. bf8|
    c8 bf bf g
    bf4. c8

    d8 c c bf
    c bf bf a

    g2~g2|
  }
  % \alternative { { }{ } }
  %2nd tune
  \time 4/4
  \break
  \repeat volta 2{
    f'8 ^"Sa-Me"r16 f  f8 f f f f4|
    f8 r16 f  f8 f f f f4|
    ef8 r16 ef ef8 ef d c ef4|
    ef8 r16 ef ef8 ef d c bf c|
  }

  f1 ~
  f1
  r8 g f ef d c bf c|
  %af8 g f ef ef f g4~
  f1 ~


  f8 r8 ef d c bf bf c~|
  d1~

  d8 r8 ef d c bf bf c~|
  f1~

  f8 r8 ef d c bf bf c~|%?
  d1
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g2:m
  d2
  g2
  s2*2
  es2%%?
  as2:m
  s2
  c2:m
  s2
  as2:m   %11
  s2

  c2:m
  s2
  as2:m
  d2

  c2:m
  s2
  as2:m
  s2
  c2:m
  s2
  g2:m

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
