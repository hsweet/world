\version "2.20.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key c \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 8 c8    %lead in notes

  \repeat volta 2{
    \mark \default
    c8 c gs' f~
    f2
    f8 f f f
    f f g c,~
    c4.c8
    f8 f f f
    f8 bf4 bf8
    gs8 g f g
    bf8 gs4.~
    gs2

  }
  \alternative {
    { }
    { }
  }

  \repeat volta 2{
    \mark \default
    c8, c gs' f~
    f2
    f16 f f f
    f f r8
    g c,~
    c4.c8
    f8 f f f
    f8 bf4 bf8
    gs8 g f g
    bf8 gs4.~
    gs2
  }
  \alternative {
    { }
    { }
  }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Mashke"
    subtitle=""
    composer= ""\version "2.22.2"

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
  \font-size #2
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