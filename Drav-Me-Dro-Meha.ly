\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \key c \minor
  \time 2/4

  %\partial 16*3 a16 d f   %lead in notes


  %\alternative { { }{ } }

  \repeat volta 2{
    c4. ef8
    f4.  ef8
    c2~
    c2

    c4. ef8
    f4.  ef8
    g2~
    g4. g8

    g8 f f ef
    f4. ef8|
    f8 ef ef c
    ef4. f8

    g8 f f ef
    f8 ef f  g %
    bf4. c16 bf|
    af4. g8|

    g8 f f ef
    f4. ef8|
    f8 ef ef c
    ef4. f8

    g8 f f ef
    f ef ef d

    c2~c2|
  }
  % \alternative { { }{ } }
  %2nd tune
  \time 4/4
  \break
  \repeat volta 2{
    bf'8 ^"Sa-Me"r16 bf  bf8 bf bf bf bf4|
    bf8 r16 bf  bf8 bf bf bf bf4|
    af8 r16 af af8 af g f af4|
    af8 r16 af af8 af g f ef f|
  }

  bf1 ~
  bf1
  r8 c bf af g f ef f|
  %af8 g f ef ef f g4~
  bf1 ~


  bf8 r8 af g f ef ef f~|
  g1~

  g8 r8 af g f ef ef f~|
  bf1~

  bf8 r8 af g f ef ef f~|%?
  g1
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  c2:m
  g2
  c2
  s2*2
  as2%%?
  ds2:m
  s2
  f2:m
  s2
  ds2:m   %11
  s2

  f2:m
  s2
  ds2:m
  g2

  f2:m
  s2
  ds2:m
  s2
  f2:m
  s2
  c2:m

  %Sa-me

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
    title= "Dzav Me Dro Meha"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
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
