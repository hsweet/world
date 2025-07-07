\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  g8 g fs g af g(g4)
  f8 ef d ef d c(c4)
  c'8 c b c d c b c
  <<d,1 f b d>>

  ef8 d c b d c(c 4)
  c8 bf af  g bf af(af4)
  g8 g bf af g f ef d
  c2 r

  ef4 c r8 ef d c|
  f4 ef8 d(d4) r| %error in original ***********
  d4 b r8 d c b|
  ef4 d8 c (c4) r|  % and here

 c4 af r8 c b c|
 ef4 d8 c(c) g fs g
 ef'2 d
 c2 af'

 g8 g fs g af g(g4)
 f8 ef d ef d c(c4)
 af'8 af b af d c b c|
 <<d,1 f b d>>

ef8 d c b d c(c4)
c8 bf af g bf af(af4)
g8 g bf af g f ef d
c4 g' a b   % chords

ef8 d c b d c(c4)
c8 bf af g bf af(af4)
g8 g fs g ef d c b
<<c1 ef g c>>






  \repeat volta 2{
    \mark \default
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
    title= "Murka"
    subtitle=""
    composer= ""

    instrument =""
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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