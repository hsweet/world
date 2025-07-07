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
  \key d \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
cadence = {
  d8 f e d d4 c
  f4 g a8 g f e
}

melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default

  a8 d16 d d8 d d4 r8 a
  \cadence


  }
  \alternative {
    {d8 d16 d d8 d g2  }
    {d8 d16 d d8 d d2  }
  }

  \repeat volta 2{
    \mark \default
    g4 a g4. d8
    \cadence

  }
  \alternative {
    {d8 d16 d d8 d g2  }
    {d8 d16 d d8 d d2  }
  }
  \break
\mark \default
   g2 g
   g4 g g g8 g16 g
   g8 f f g16 g  g8 a a g
   g8 g c c g4 r8 g16 g|


   g8 f f g g a a g
   g8 g c c g4 r8 g16 g
   g8 f f g g a a g
   bf4 a8 g c4 r8 g16 g

   g8 g g g  g g  g4|
   c8 c c4 bf g4
   bf8 bf bf a  g4 r|



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
Keyn _ loyb -- ge -- zan -- gn far di gri -- ber
A -- ni maam -- in -- o
Der bag -- in vos ef -- nt klo -- re oy -- gn
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
  d4*7:m c4:m
  f4 g4:m
  a2:7 d2:m g2:m
  d1:m   %end end
  %b
  g1:m
  d4*3:m c4:m
  f4 g4:m a2:7
  d2:m g2
  d1:m % 2nd end
  %c
  g2*15:m c2*5:m
  d2:m  g2:m

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