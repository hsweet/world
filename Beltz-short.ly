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
melody = \relative c'' {
  \global
  %\partial 4 g4    %lead in notes

   \repeat volta 2{

   g1~
   g4 g a8 g a4
   g1~
   g4 g a8 g a4

   b4 a8 b a4 g8(a)
   g8 fs e4 a8 a e4
   }

   \alternative {
   { g8 fs e4 a8( a) e4
     g1~
     g2 r
   }
   {g8 fs e4 a4 a
     e1~
   e2  d}
   }

   b'4 b c8 b c4
   d2 e8 d c4
   b4 g a d,
   g2. g4

   b4 b4 c8 b c4
   d4 d ef8 d c4
   b4 b a8(g) a4
   b1
   \bar "||"
   % recap
   g1~
   g4 g a8 g a4
   g1~
   g4 g a8 g a4

   b4 a8 b a4 g8(a)
   g8 fs e4 c'8 c b4
   e1~ e1

}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
Belz mayn sht -- ete -- le Belz,
Mayn hey -- me -- le, vu ikh hob
may -- ne kinder -- she yorn far -- brakht.
Zayt ir a mol ge -- ven in.

}
\addlyrics{ \set stanza = #"2. "
Belz, mayn sht -- ete -- le Belz,
In o -- re -- men shti -- be -- le
mit ale kind -- er -- lekh dort ge -- lakht.
}




%################################# Chords #######################
harmonies = \chordmode {
  e4*6:m
  a2:m
  e2*5:m
  a2:m
  e2:m a2:m
  e1*3:m       %1st end
  e2*5:m d2:7  % 2nd end
  % next part
  g2 d2:7
  g2 c2
  g2 d2:7
  g2*3
  d2:7
  g2 c2:m
  g1
  b1:7
  % Belz again
  e2*3:m
  a2:m
  e2*3:m
  a2:m
  e2:m a2:m
  e2:m
  a4:m b4:7
  e1*2:m



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
    title= "Belz"
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