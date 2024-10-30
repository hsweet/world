\version "2.18.0"
\include "english.ly"
\pointAndClickOff
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
  \key d \minor
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
    a8 ^Intro a'(a16) a a a g4-> a->|
    a,8 a'(a16) a a a g8 a bf16 a g8|
    a,8 a'(a16) a a a g4-> a->|
    \tuplet 3/2 {g8 f e} \tuplet 3/2{f e d} \tuplet 3/2{e d cs} bf8 g|
  }
  \break
  \repeat volta 2{
    \mark \default
    a4 \segno a8. a16 bf a g8 a4
    a8 cs e a e16 f e d cs8 bf
    a4 a8. a16 bf a g8 a4
    cs16 d e d cs8. bf16 bf8 a(a4)|
  }
  \break
  \repeat volta 2{
    \mark \default
    cs'16  d e8(e) g e16 f e d cs8 bf16 a|
    g16 a bf8(bf) d cs16 d cs bf a g a8|
    cs16 d e8(e) g e16 f e d cs bf a g|
  }
  \alternative {
    {a8. a16 bf a g8 a4 a }
    {a8. a16 bf a g8 a4. d8| }
  }
  \break

  \mark \default
  cs8.  bf16 a8 d cs16 d cs bf a8 d|
  cs16 d cs bf a g a bf cs d cs bf a8 d|
  cs16 d cs bf a g a d cs d cs bf a8 d|
  cs16 d cs bf a g a bf cs d cs bf a4|

  \bar"||" %2 lines
  a'8. a16 a8 a(a) g g4|
  g8. f16 f8 f(f) e e4|
  e8. d16 d8 d cs16 d e d cs4
  cs16 d e d cs8. bf16 a8-> cs-> e-> a->

  a8. a16 a8 a(a) g g4
  bf8 a g f e16 f g8 f16 g a8|
  g16 a bf8 (bf16) a g f e f e d cs4|
  cs16 d e d cs8 bf bf a4 d8|

  %{
  \alternative {
  {cs16 d e d cs8 bf bf a4 d8|}
  {cs16 d e d cs8 bf bf a4.^"al Segno" \bar"||" }
  }
  %}

}
Cpartmotif = { e16 f e d cs bf cs d e f e d cs8 f }

second = \relative c {
  \global
  r1*4
  \repeat volta 2{
    cs4 cs8. cs16 d cs bf8 cs4|
    cs8 e a e g16 a g f e8 d
    cs4 cs8. cs16 d cs bf8 cs4|
    e16 f g f e8. d16 d8 cs(cs4)|
  }
  \repeat volta 2{
    e'16 f g8(g) bf g16 a g f e8 d16 cs|
    bf16 cs d8(d)f cs16 f cs bf a g a8|
    e'16 f g8(g) bf g16 a g f e d cs bf
  }
  \alternative{
    {cs8. cs16 d cs b8 cs 4 cs}
    {cs8. cs16 d cs b8 cs4. e8|}
  }
  \repeat volta 2{
    e8. d16 cs8 f e16 f e d cs8 f|
    \Cpartmotif
    \Cpartmotif
    \Cpartmotif

    e8. d16 cs8 f e16 f e d cs8 f|
    \Cpartmotif
    \Cpartmotif
    \Cpartmotif%bar17
    cs8. bf16 a8 d cs16 d cs bf a8 d|
    cs16 d cs bf a g a bf cs d cs bf a8 d|
    cs16 d cs bf a g a bf cs d cs bf a8 d|
  }
  \alternative{
    {cs16 d cs bf a g a bf cs d cs bf a4| }
    {cs16 d cs bf a g a bf cs d cs bf a4| }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  % Intro 4 measures
  a2 g4:m a4
  a2 g2:m
  a2 g4:m a4
  g4:m d4:m a4 g4:m
  %A   %%%%%%%%%%%%%%%%%%%%
  a2:
  g4:m
  a4
  a2
  g4:m
  a4
  a2
  g4:m
  a4
  a2
  g4:m
  a4
  %B %%%%%%%%%%%%%%
  a2
  g2*2:m
  a2*2
  g2:m
  a4 g4:m a2 %or dm
  a4 g8*5:m d8:m

%%%%%%%%%%%%%%%%

  %c***********
  %a1*4
  a8*3 d8:m a8*3 d8:m	%14
  a4 g4:m a8*3 d8:m	%15
  a4 g4:m a8*3 d8:m	%16
  a4 g4:m a2		%17

  d4*3:m g4:m  %	%18
  r4 f4*2 a4   %	%19
  %a1*2
  a4 d4:m a2   %	%20
  a1			%21
  d4*3:m g4:m		%22
  g4*3:m d4:m		%23

  g2:m d4:m a4		%24
  a8*7 d8:m		%25
  a1

}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
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
    instrument = "Eb"
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
