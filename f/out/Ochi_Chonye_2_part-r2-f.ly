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
  \key e \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  \partial 4*2 as4 b  %lead in notes

  \repeat volta 2{
    \mark \default
    %\bar "||"
    c4. b8 b4~
    b4\breathe as b|
    c4. b8 b4~
    b4\breathe b e

    e4. ds8 ds4~|
    ds4-2\breathe fs-2 g
    fs4. e8 e4~
    e4\breathe g a|

    g4. fs8 c4-3~
    c4 fs-2 g|
    fs4. e8 b4-2~|
    b4 as b

    c4. b8 b4~
    b4 fs b
    a4 gs g~

  }
  \alternative{
    {g4 r 2 }
    {g4 r b}
  }
  % \bar "||"
  %\break
  %} repeat end
  \repeat volta 2{
    \mark \default
    % r2^\markup{\italic {"Interlude a tempo"}} e4
    fs2.~
    fs2 b4
    g2.~
    g2 e'4
    d2.~
    d4 a c
    c4. b8 b4~
    b4 b g'
    g4. fs8 fs4~
    fs4 fs g|
    fs4. e8 e4~|
    e4 as, b|
    c4. b8 b4~|
    b4 fs g|
    e2.~
    e4 r2|
  }
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
  \partial 4*2 as4 b  %lead in notes
  \repeat volta 2{
    e,4 e' g
    b4 as, b
    e,4 e' g
    b4 a, g

    fs4 b a'
    b4 cs, ds  %up 8va from orig.
    e,4 e' g
    b4 c, b

    a4 e' a
    c4 b, a
    g4 e' g

    b4 as, b
    ds,4 fs' a
    b4 cs, ds  %up 8va from orig.
    e,4 e' g
  }
  \alternative{
    { b4 e r}
    {b4 e r}
  }


  % Interlude
  \repeat volta 2{
    %r4*3
    b,8[ds] a'[b] a[ds,]|
    fs,8[ds']a'[b] a[ds,]
    e,8[e']g[b]g[e]
    g,8[e']g[b]g[e]

    fs,8[d']a'[c]a[d,]
    d,8[d']e,[d']fs,[d']
    g,8[d']g[b]g[d]
    d,8[d'] g[b]g[d]

    ds,8[b'']a[b]a[b]
    b,8[ds]a'[b] a[ds]
    c,8[g]b[e]g[c]
    a,4 as b
    b8[ds]a[b]a[ds]
    r4 r2
    <<
      {
        e8[ds]e[fs]g[b]
        e4 r2
      } \\
      {g,,2.~ g4 r2}
    >>
  }
}


%################################# Chords #######################
harmonies = \chordmode {
  \skip 2
  e4*12:m
  b4*6:7
  e4*6:m
  a4*6:m
  e4*6:m
  b4*6:7
  e4*6:m
  % Interlude
  s4*3
  b4*6:7
  e4*6:m
  d4*6:7
  g4*6
  b4*6:7
  c4*6
  b4*6:7
  e4*6:m

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
    subtitle="33"
    composer= "r-2"
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
