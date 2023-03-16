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
  \key d \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \transpose d' e'\relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    d8. e16 f8 f
    f8 -> f f4|
    \tuplet 3/2{f8-> e d} e-> f% \tuplet 3/2{g af bf}
    gs8 a \tuplet 3/2{f( e) d}
    d8. e16 f8 f
    f8 f f4|
    \tuplet 3/2{f8 e d} e8 f
    e8 d r4

  }
  % \break

  \repeat volta 2{
    \mark \default
    f4 a
    e8 e g4
    \tuplet 3/2{f8 e d} e f%\tuplet 3/2{g af bf}
    gs8 a \tuplet 3/2{f (e) d}
    f4 a
    e8 e g4
    \tuplet 3/2{f8 e d} e8 f
    e8 d r4

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
harmonies = \transpose d' e'\chordmode {
  d2*3:m
  a2
  d4*5:m
  a4:7
  d2:m
  %b
  d2:m
  g2:m
  d2:m
  a2
  d4*2:m
  g2:m
  d4:m
  a4:7
  d2:m
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
