\version "2.18.0"
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
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody =  \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   a2.~
   a4 cs d
   e2.~
   e4 cs a
   f'2.~
   f4  e d   % we were
   a'2.~     % wed

   a4 r a
   bf2.~
   bf4 a4 g
   a2.~
   a4 g f
   e2.~
   e4 f e
   d2.~
   d2.
  }
  \break


  \repeat volta 2{
   \mark \default
   d'4 d d
   d4 d d
   d4 c b
   c2.
   bf4 bf bf
   bf bf bf
   bf a gs%?
   a2.
   %% missign a phrase
   g4 g g
   g g g
   g f e
   d2 d'4 %???????????
   bf4 g e
   f2 e4
   d2.~
   d2.
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  e2.*4:7
  a2.*4:m
  d2.*2:m
  a2.*2:m
  e2.*2:7
  a2.*2:m
  %B
  f2.*3
  c2.
  d2.*3:m
  a2.:m
  d2.*3:m
  a2.:m
  d2.:m
  a2:m e4:7
  a2.*2:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff  \transpose d a \melody
  >>
  \header{
    title= "Anniversary Song"
    subtitle=""
    composer= ""
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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

%{
Oh, how we danced on the night we were wed
We vowed our true love though a word wasn't said
The world was in bloom, there were stars in the skies
Except for the few that were there in your eyes

Dear, as I held you close in my arms
Angels were singing a hymn to your charms
Two hearts gently beating, murmuring low
"Darling, I love you so"

The night seemed to fade into blossoming dawn
The sun shone anew but the dance lingered on
Could we but recall that sweet moment sublime
We'd find that our love is unaltered by time

Dear, as I held you close in my arms
Angels were singing a hymn to your charms
Two hearts gently beating, murmuring low
"Darling, I love you so"
%}