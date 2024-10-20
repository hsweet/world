\version "2.22.0"
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
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
cadence = {
  e8 g fs e e4 d
  g4 a b8 a g fs
}

melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default

  b8 e16 e e8 e e4 r8 b
  \cadence


  }
  \alternative {
    {e8 e16 e e8 e a2  }
    {e8 e16 e e8 e e2  }
  }

  \repeat volta 2{
    \mark \default
    a4 b a4. e8
    \cadence

  }
  \alternative {
    {e8 e16 e e8 e a2  }
    {e8 e16 e e8 e e2  }
  }

   a2 a
   a4 a a a8 a16 a
   a8 g g a16 a  a8 b b a
   a8 a d d a4 r8 a16 a|


   a8 g g a a b b a
   a8 a d d a4 r8 a16 a
   a8 g g a a b b a
   c4 b8 a e'4 r8 a,16 a

   a8 a a a  a a  a4|
   d8 d d4 c a4
   c8 c c b  a4 r|



}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
  Ay dai dai dai dai dai
  Ek -- ho -- d mi yo -- de -- a
  Ek -- hod, ekh _ -- od _  mi _ _ yoy -- de -- a

    _ _ _ _ _ _
  Yay day day,
  Der nes fun zu -- mer shprenk -- len
  Un di na -- ye kvey -- tn fun an  _ eln -- tn boym

   _ _ _ _ _ _
  Yay day Yay day day day,

  Di _ shar -- fe layd fun an ersh -- te li -- be
A -- ni yoy -- de -- o
Keyn _ loyb -- ge -- zan -- gn far di gri --ber
A -- ni maam -- in -- o
Der bag -- in vos ef -- nt klo -- re oy --gn
Oy ikh ken zen
Di _ eyn -- sts -- el -- ne re -- ges vos sha -- fn a le -- bn
A -- ni maam -- in -- o
}
\addlyrics {
   Ay dai dai dai dai dai
  Ek -- ho -- d ani yo -- de -- a
  Ekh -- od a -- ni yoy -- de _ _ _ _  _ _ a

  _ _ _ _ _
  Yay day day,
  der fin-- kl fun mayn tre -- rn
  Ekh -- od a -- ni ma -- ami  _ _ _ _ _ _ no

   _ _ _ _ _
   A shors -- tik strup af a vey -- khe vund
Ekh -- od ani yoy -- de -- o
Der blu -- tik royt fun a gesh -- pal -- te  -- ne flo -- ym
A -- ni maam -- i - no
Der ba -- gin vos ef -- nt klo -- re oy -- gn
Oy ikh ken zen
Di eyn -- sts -- el -- ne re  -ges vos sha  -- fn a le -- bn
A -- ni maam -- i - no

}

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
    title= "Echod Me Yodea"
    subtitle=""
    composer= "Sarah Gordon"

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