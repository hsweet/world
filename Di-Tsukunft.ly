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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  a4.b8 c b a [gs]
  a4 e2 r4
  a4.b8 c b a [gs]
  a4 e2 r4

  c'4. c8 d c b [a]
  e'4 b2 r4
  b4. e,8 c'(b) a(gs)
  a2. r4|


}
%################################# Lyrics #####################
\addlyrics{ \set stanza = #"1. "
            O, di velt vet ve -- rn ying -- er,
            Un dos le -- bn laykh -- ter, gring -- er,
            Ye -- der klog -- er vet a zing -- er
            Ve -- rn, brid -- er, bald!
}
\addlyrics { \set stanza = #"2. "
             Loz dos folk nor ve -- rn klig -- er,
             Un far -- yg  -- on dem ba -- trig -- er,
             Im, dem fuks, un oykh dem tig -- er
             Fun zayn shay -- nen veld.
}

\addlyrics {
   O, di velt vet ve -- rn shen -- er,
Li -- be gres -- er, si -- ne klen -- er,
Tsvi -- shn froy -- en, tsvi -- shn men -- er,
Tsvis -- hn land un land.
}
%################################# Chords #######################
harmonies = \chordmode {
  a2:m e2
  a2*3:m f4 e4:7
  a2*3:m d2:m
  e2*4
  a2:m
}

\score {
  \transpose a g
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Di Tsukunft"
    subtitle="The Future"
    composer= ""
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
