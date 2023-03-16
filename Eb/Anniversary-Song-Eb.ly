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
  \key b \minor
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
   fs2.~
   fs4 as b
   cs2.~
   cs4 as fs
   d'2.~
   d4  cs b   % we were
   fs'2.~     % wed

   fs4 r fs
   g2.~
   g4 fs4 e
   fs2.~
   fs4 e d
   cs2.~
   cs4 d cs
   b2.~
   b2.
  }
  \break


  \repeat volta 2{
   \mark \default
   b'4 b b
   b4 b b
   b4 a gs
   a2.
   g4 g g
   g g g
   g fs es%?
   fs2.
   %% missign a phrase
   e4 e e
   e e e
   e d cs
   b2 b'4 %???????????
   g4 e cs
   d2 cs4
   b2.~
   b2.
  }


}
%################################# Lyrics #####################
%\addlyrics{ \set stanza = #"1. " }
%################################# Chords #######################
harmonies = \chordmode {
  cs2.*4:7
  fs2.*4:m
  b2.*2:m
  fs2.*2:m
  cs2.*2:7
  fs2.*2:m
  %B
  d2.*3
  a2.
  b2.*3:m
  fs2.:m
  b2.*3:m
  fs2.:m
  b2.:m
  fs2:m cs4:7
  fs2.*2:m


}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff  \transpose b fs' \melody
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