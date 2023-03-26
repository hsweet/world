\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ A A B A B Fine}

global = {
  \clef treble
  \key d \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
diddle = { a16 b cs d e d cs b }

melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    \grace cs16 (d4)(d8->) e -.fs-. [e-.] d-. [cs-.]|
    d4-> fs16\upbow e fs e d4.\upbow(ds8)
    e4->(e8) fs-. g-. fs--\turn e [ds]|
    e16(fs) gs->(fs) e16(fs) gs->(fs)  e4(e16) e, fs gs|

    a8-. cs-. e-. [a, --]  a8-. cs-. e-. [a, --]
    a8-. cs-. e-. [fs-.] g4.-> fs8
    \grace g16(a8--) a-. cs,-. [cs --] cs-. a-. b-.[cs-.]

  }
  \alternative {
    {  d8 <a d,>4.  <a d,>4 <a d,>}
    {  d8 <a d,>4.  <a d,>4 (a16) e fs gs}
  }

  \repeat volta 2{
    \mark \default
    a8-. cs-. e16 d cs b \diddle
    \diddle \diddle
    \diddle a16 b cs d e8 cs16 b |  %add a slur
    a8-. [b-.]  e-. [fs-.] g(g4) fs8-.|
    a8 a-. cs,-. [cs --] cs-. a-. b-.[cs-.]



  }
  \alternative {
    { d8 <a d,>4.  <a d,>4 <a d,>}
    { d8 <a d,>4.  <a d,>4 r }
  }
  \bar"||"
  e2^\markup{\italic{Fine}} cs
  d2 r
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d1*2
  e1:m
  e1
  a2*3
  a2:7
  a1
  d1*2
  %b
  a2*7
  a2*3:7
  d1*2
  a1
  d1
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
    title= "Verbunk"
    subtitle=""
    composer= ""
    instrument = "Violin"
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
