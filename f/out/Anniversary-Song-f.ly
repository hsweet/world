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
  \key a \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody =  \relative c {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   e2.~
   e4 gs a
   b2.~
   b4 gs e
   c'2.~
   c4  b a   % we were
   e'2.~     % wed

   e4 r e
   f2.~
   f4 e4 d
   e2.~
   e4 d c
   b2.~
   b4 c b
   a2.~
   a2.
  }
  \break


  \repeat volta 2{
   \mark \default
   a'4 a a
   a4 a a
   a4 g fs
   g2.
   f4 f f
   f f f
   f e ds%?
   e2.
   %% missign a phrase
   d4 d d
   d d d
   d c b
   a2 a'4 %???????????
   f4 d b
   c2 b4
   a2.~
   a2.
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  b2.*4:7
  e2.*4:m
  a2.*2:m
  e2.*2:m
  b2.*2:7
  e2.*2:m
  %B
  c2.*3
  g2.
  a2.*3:m
  e2.:m
  a2.*3:m
  e2.:m
  a2.:m
  e2:m b4:7
  e2.*2:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff  \transpose a, e \melody
  >>
  \header{
    title= "Anniversary Song"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 180

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