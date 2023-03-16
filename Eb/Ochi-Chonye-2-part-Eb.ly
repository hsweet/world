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
  \key fs \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  \partial 4*2 bs4 cs  %lead in notes

  % \repeat volta 2{
  % \mark \default
  \bar "||"
  d4. cs8 cs4~
  cs4 bs cs|
  d4. cs8 cs4~
  cs4 cs fs

  fs4. es8 es4~|
  es4-2 gs-2 a
  gs4. fs8 fs4~
  fs4 a b|

  a4. gs8 d4-3~
  d4 gs-2 a|
  gs4. fs8 cs4-2~|
  cs4 bs cs

  d4. cs8 cs4~
  cs4 gs cs
  b4 as a~
  a4 r 2 %\parenthesize a
  \bar "||"
  \break
  %} repeat end
  r2^\markup{\italic {"Interlude a tempo"}} cs4
  gs2.~
  gs2 cs4
  a2.~
  a2 fs'4
  e2.~
  e4 b d
  d4. cs8 cs4~
  cs4 cs a'
  a4. gs8 gs4~
  gs4 gs a|
  gs4. fs8 fs4~|
  fs4 bs, cs|
  d4. cs8 cs4~|
  cs4 gs a|
  fs2.~
  fs4 r2|
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

secund = \relative c'' {
  \global
  \partial 4*2 bs4 cs  %lead in notes
  fs,4 fs' a
  cs4 bs, cs
  fs,4 fs' a
  cs4 b, a

  gs4 cs b'
  cs4 ds, es  %up 8va from orig.
  fs,4 fs' a
  cs4 d, cs

  b4 fs' b
  d4 cs, b
  a4 fs' a

  cs4 bs, cs
  es,4 gs' b
  cs4 ds, es  %up 8va from orig.
  fs,4 fs' a
  cs4 fs r


  % Interlude
  r4*3
  cs,8[es] b'[cs] b[es,]|
  gs,8[es']b'[cs] b[es,]
  fs,8[fs']a[cs]a[fs]
  a,8[fs']a[cs]a[fs]

  gs,8[e']b'[d]b[e,]
  e,8[e']fs,[e']gs,[e']
  a,8[e']a[cs]a[e]
  e,8[e'] a[cs]a[e]

  es,8[cs'']b[cs]b[cs]
  cs,8[es]b'[cs] b[es]
  d,8[a]cs[fs]a[d]
  b,4 bs cs
  cs8[es]b[cs]b[es]
  r4 r2
  <<
    {
      fs8[es]fs[gs]a[cs]
      fs4 r2
    } \\
    {a,,2.~ a4 r2}
  >>
}


%################################# Chords #######################
harmonies = \chordmode {
  \skip 2
  fs4*12:m
  cs4*6:7
  fs4*6:m
  b4*6:m
  fs4*6:m
  cs4*6:7
  fs4*6:m
  % Interlude
  s4*3
  cs4*6:7
  fs4*6:m
  e4*6:7
  a4*6
  cs4*6:7
  d4*6
  cs4*6:7
  fs4*6:m

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
