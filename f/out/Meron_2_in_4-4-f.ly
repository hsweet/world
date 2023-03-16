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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \repeat volta 2{
    %intro
    %a8. a'16 (a) a8 a|
    e'8 ^Intro e'(e16) e e e d4-> e->|
    e,8 e'(e16) e e e d8 e f16 e d8|
    e,8 e'(e16) e e e d4-> e->|
    \tuplet 3/2 {d8 c b} \tuplet 3/2{c b a} \tuplet 3/2{b a gs} f8 d|
  }
  \break
  \repeat volta 2{
    \mark \default
    e4 \segno e8. e16 f e d8 e4
    e8 gs b e b16 c b a gs8 f
    e4 e8. e16 f e d8 e4
    gs16 a b a gs8. f16 f8 e(e4)|
  }
  \break
  \repeat volta 2{
    \mark \default
    gs'16  a b8(b) d b16 c b a gs8 f16 e|
    d16 e f8(f) a gs16 a gs f e d e8|
    gs16 a b8(b) d b16 c b a gs f e d|
  }
  \alternative {
    {e8. e16 f e d8 e4 e }
    {e8. e16 f e d8 e4. a8| }
  }
  \break

  \mark \default
  gs8.  f16 e8 a gs16 a gs f e8 a|
  gs16 a gs f e d e f gs a gs f e8 a|
  gs16 a gs f e d e a gs a gs f e8 a|
  gs16 a gs f e d e f gs a gs f e4|

  \bar"||" %2 lines
  e8. e16 e8 e(e) d d4|
  d8. c16 c8 c(c) b b4|
  b8. a16 a8 a gs16 a b a gs4
  gs16 a b a gs8. f16 e8-> gs-> b-> e->

  e8. e16 e8 e(e) d d4
  f8 e d c b16 c d8 c16 d e8|
  d16 e f8 (f16) e d c b c b a gs4|
  gs16 a b a gs8 f f e4 a8|

  %{
  \alternative {
  {cs16 d e d cs8 bf bf a4 d8|}
  {cs16 d e d cs8 bf bf a4.^"al Segno" \bar"||" }
  }
  %}

}
Cpartmotif = { b,16 c b, a, gs, f gs, a, b, c b, a, gs,8 c }

second = \relative c' {
  \global
  r1*4
  \repeat volta 2{
    gs4 gs8. gs16 a gs f8 gs4|
    gs8 b e b d16 e d c b8 a
    gs4 gs8. gs16 a gs f8 gs4|
    b16 c d c b8. a16 a8 gs(gs4)|
  }
  \repeat volta 2{
    b'16 c d8(d) f d16 e d c b8 a16 gs|
    f16 gs a8(a)c gs16 c gs f e d e8|
    b'16 c d8(d) f d16 e d c b a gs f
  }
  \alternative{
    {gs8. gs16 a gs fs8 gs 4 gs}
    {gs8. gs16 a gs fs8 gs4. b8|}
  }
  \repeat volta 2{
    b8. a16 gs8 c b16 c b a gs8 c|
    \Cpartmotif
    \Cpartmotif
    \Cpartmotif

    b8. a16 gs8 c b16 c b a gs8 c|
    \Cpartmotif
    \Cpartmotif
    \Cpartmotif%bar17
    gs8. f16 e8 a gs16 a gs f e8 a|
    gs16 a gs f e d e f gs a gs f e8 a|
    gs16 a gs f e d e f gs a gs f e8 a|
  }
  \alternative{
    {gs16 a gs f e d e f gs a gs f e4| }
    {gs16 a gs f e d e f gs a gs f e4| }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  % Intro 4 measures
  e2 d4:m e4
  e2 d2:m
  e2 d4:m e4
  d4:m a4:m e4 d4:m
  %A   %%%%%%%%%%%%%%%%%%%%
  e2:
  d4:m
  e4
  e2
  d4:m
  e4
  e2
  d4:m
  e4
  e2
  d4:m
  e4
  %B %%%%%%%%%%%%%%
  e2
  d2*2:m
  e2*2
  d2:m
  e4 d4:m e2 %or dm
  e4 d8*5:m a8:m

%%%%%%%%%%%%%%%%

  %c***********
  %a1*4
  e8*3 a8:m e8*3 a8:m	%14
  e4 d4:m e8*3 a8:m	%15
  e4 d4:m e8*3 a8:m	%16
  e4 d4:m e2		%17

  a4*3:m d4:m  %	%18
  r4 c4*2 e4   %	%19
  %a1*2
  e4 a4:m e2   %	%20
  e1			%21
  a4*3:m d4:m		%22
  d4*3:m a4:m		%23

  d2:m a4:m e4		%24
  e8*7 a8:m		%25
  e1

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
    %\new Staff \second
    %\new Staff \partcombine \second \melody
  >>
  \header{
    title= "Meron #2"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 80

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
