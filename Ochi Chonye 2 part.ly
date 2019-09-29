\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key a \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 4*2 ds4 e  %lead in notes

  % \repeat volta 2{
  % \mark \default
  \bar "||"
  f4. e8 e4~
  e4 ds e|
  f4. e8 e4~
  e4 e a

  a4. gs8 gs4~|
  gs4-2 b-2 c
  b4. a8 a4~
  a4 c d|

  c4. b8 f4-3~
  f4 b-2 c|
  b4. a8 e4-2~|
  e4 ds e

  f4. e8 e4~
  e4 b e
  d4 cs c~
  c4 r 2 %\parenthesize a
  \bar "||"
  \break
  %} repeat end
  r2^\markup{\italic {"Interlude a tempo"}} e4
  b2.~
  b2 e4
  c2.~
  c2 a'4
  g2.~
  g4 d f
  f4. e8 e4~
  e4 e c'
  c4. b8 b4~
  b4 b c|
  b4. a8 a4~|
  a4 ds, e|
  f4. e8 e4~|
  e4 b c|
  a2.~
  a4 r2|
}
\addlyrics {
  O -- chi chor -- ny -- e
  o -- chi strat -- ny -- e
  O - zhgu -- chi -- a
  i pre -- kras -- ny -- e,
  Kak liu -- blia ia vas,
  kak bo -- ius' ia vas.
  Znat' u -- vid -- ela vas
  ia vne dob -- ryi chas,
}

secund = \relative c' {
  \global
  \partial 4*2 ds4 e  %lead in notes
  a,4 a' c
  e4 ds, e
  a,4 a' c
  e4 d, c

  b4 e d'
  e4 fs, gs  %up 8va from orig.
  a,4 a' c
  e4 f, e

  d4 a' d
  f4 e, d
  c4 a' c

  e4 ds, e
  gs,4 b' d
  e4 fs, gs  %up 8va from orig.
  a,4 a' c
  e4 a r


  % Interlude
  r4*3
  e,8[gs] d'[e] d[gs,]|
  b,8[gs']d'[e] d[gs,]
  a,8[a']c[e]c[a]
  c,8[a']c[e]c[a]

  b,8[g']d'[f]d[g,]
  g,8[g']a,[g']b,[g']
  c,8[g']c[e]c[g]
  g,8[g'] c[e]c[g]

  gs,8[e'']d[e]d[e]
  e,8[gs]d'[e] d[gs]
  f,8[c]e[a]c[f]
  d,4 ds e
  e8[gs]d[e]d[gs]
  r4 r2
  <<
    {
      a8[gs]a[b]c[e]
      a4 r2
    } \\
    {c,,2.~ c4 r2}
  >>
}


%################################# Chords #######################
harmonies = \chordmode {
  \skip 2
  a4*12:m
  e4*6:7
  a4*6:m
  d4*6:m
  a4*6:m
  e4*6:7
  a4*6:m
  % Interlude
  s4*3
  e4*6:7
  a4*6:m
  g4*6:7
  c4*6
  e4*6:7
  f4*6
  e4*6:7
  a4*6:m

}



\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
    \new Staff \secund
  >>
  \header{
    title= "Ochi Chornye"
    subtitle=""
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
