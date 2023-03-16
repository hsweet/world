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
  \key c \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \transpose c d\relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    c8. d16 ef8 ef
    ef8 -> ef ef4|
    \tuplet 3/2{ef8-> d c} d-> ef% \tuplet 3/2{g af bf}
    fs8 g \tuplet 3/2{ef( d) c}
    c8. d16 ef8 ef
    ef8 ef ef4|
    \tuplet 3/2{ef8 d c} d8 ef
    d8 c r4

  }
  % \break

  \repeat volta 2{
    \mark \default
    ef4 g
    d8 d f4
    \tuplet 3/2{ef8 d c} d ef%\tuplet 3/2{g af bf}
    fs8 g \tuplet 3/2{ef (d) c}
    ef4 g
    d8 d f4
    \tuplet 3/2{ef8 d c} d8 ef
    d8 c r4

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
harmonies = \transpose c d\chordmode {
  c2*3:m
  g2
  c4*5:m
  g4:7
  c2:m
  %b
  c2:m
  f2:m
  c2:m
  g2
  c4*2:m
  f2:m
  c4:m
  g4:7
  c2:m
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
