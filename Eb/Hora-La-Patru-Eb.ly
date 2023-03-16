\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   ds16 fs b,8 c ds~
   ds16 c e ds c b c a
   ds16 fs b,8 c ds~
   ds16 c e ds c b c a

   ds16 fs b,8 c ds~
   ds16 c e ds c b a gs
   a16b c ds e fs ds8~
  }
  \alternative {
    {ds16 b c a b ds fs8 }
    {ds16 b c a b8 r}
  }
  \break
  \repeat volta 2{
   \mark \default
   b16 e8 e16 e8 e
   e4(e16) ds e fs
   g16 fs e ds e fs g fs
   e16 fs ds8(ds16)c b a|

   b16 c8 c16 c8 c
   c4(c16) b c ds|
   fs16 e e ds c b c a
  }
   \alternative {
     { b16 c ds e fs8 b,}
     { b16 c a c b8 r}
   }

}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b2*6
  a2:m
  b2
  a4:m b4
  %b
  e2*3:m
  b2
  a2*3:m
  b2
  b8 a8:m
  b4
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Hora La Patru"
    subtitle=""
    %composer= "Wallachia"
    instrument =""
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
