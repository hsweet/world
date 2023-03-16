\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ 1A Cello/Mando B Clar| 2A Acc. B tutti}

global = {
  \clef treble
  \key f \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \transpose f g\relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    f8. g16 af8 af
    af8 -> af af4|
    \tuplet 3/2{af8-> g f} g-> af% \tuplet 3/2{g af bf}
    b8 c \tuplet 3/2{af( g) f}
    f8. g16 af8 af
    af8 af af4|
    \tuplet 3/2{af8 g f} g8 af
    g8 f r4

  }
  % \break

  \repeat volta 2{
    \mark \default
    af4 c
    g8 g bf4
    \tuplet 3/2{af8 g f} g af%\tuplet 3/2{g af bf}
    b8 c \tuplet 3/2{af (g) f}
    af4 c
    g8 g bf4
    \tuplet 3/2{af8 g f} g8 af
    g8 f r4

  }
  \alternative {
    { }
    { }
  }

}
%################################# Lyrics #####################
\addlyrics{
  Bal -- e -- bos -- te zis -- en -- ke
  zis -- en -- ke zis -- en Bal -- e -- bos -- te
  Bal -- e -- bos -- te zis -- en -- ke
  zis -- en -- ke Bal -- e -- bos -- te

  Bal -- e -- bos -- ten -- ke
  zis -- en -- ke zis -- en Bal -- e -- bos -- te
  Bal -- e -- bos -- ten -- ke
  zis -- en -- ke Bal -- e -- bos -- te

}
%################################# Chords #######################
harmonies = \transpose f g\chordmode {
  f2*3:m
  c2
  f4*5:m
  c4:7
  f2:m
  %b
  f2:m
  bf2:m
  f2:m
  c2
  f4*2:m
  bf2:m
  f4:m
  c4:7
  f2:m
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
    title= "Baleboste"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 60

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
