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
  \key b \minor
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
    fs8 ^Intro fs'(fs16) fs fs fs e4-> fs->|
    fs,8 fs'(fs16) fs fs fs e8 fs g16 fs e8|
    fs,8 fs'(fs16) fs fs fs e4-> fs->|
    \tuplet 3/2 {e8 d cs} \tuplet 3/2{d cs b} \tuplet 3/2{cs b as} g8 e|
  }
  \break
  \repeat volta 2{
    \mark \default
    fs4 \segno fs8. fs16 g fs e8 fs4
    fs8 as cs fs cs16 d cs b as8 g
    fs4 fs8. fs16 g fs e8 fs4
    as16 b cs b as8. g16 g8 fs(fs4)|
  }
  \break
  \repeat volta 2{
    \mark \default
    as'16  b cs8(cs) e cs16 d cs b as8 g16 fs|
    e16 fs g8(g) b as16 b as g fs e fs8|
    as16 b cs8(cs) e cs16 d cs b as g fs e|
  }
  \alternative {
    {fs8. fs16 g fs e8 fs4 fs }
    {fs8. fs16 g fs e8 fs4. b8| }
  }
  \break

  \mark \default
  as8.  g16 fs8 b as16 b as g fs8 b|
  as16 b as g fs e fs g as b as g fs8 b|
  as16 b as g fs e fs b as b as g fs8 b|
  as16 b as g fs e fs g as b as g fs4|

  \bar"||" %2 lines
  fs'8. fs16 fs8 fs(fs) e e4|
  e8. d16 d8 d(d) cs cs4|
  cs8. b16 b8 b as16 b cs b as4
  as16 b cs b as8. g16 fs8-> as-> cs-> fs->

  fs8. fs16 fs8 fs(fs) e e4
  g8 fs e d cs16 d e8 d16 e fs8|
  e16 fs g8 (g16) fs e d cs d cs b as4|
  as16 b cs b as8 g g fs4 b8|

  %{
  \alternative {
  {cs16 d e d cs8 bf bf a4 d8|}
  {cs16 d e d cs8 bf bf a4.^"al Segno" \bar"||" }
  }
  %}

}
Cpartmotif = { cs'16 d' cs' b as g' as b cs' d' cs' b as8 d' }

second = \relative c'' {
  \global
  r1*4
  \repeat volta 2{
    as4 as8. as16 b as g8 as4|
    as8 cs fs cs e16 fs e d cs8 b
    as4 as8. as16 b as g8 as4|
    cs16 d e d cs8. b16 b8 as(as4)|
  }
  \repeat volta 2{
    cs'16 d e8(e) g e16 fs e d cs8 b16 as|
    g16 as b8(b)d as16 d as g fs e fs8|
    cs'16 d e8(e) g e16 fs e d cs b as g
  }
  \alternative{
    {as8. as16 b as gs8 as 4 as}
    {as8. as16 b as gs8 as4. cs8|}
  }
  \repeat volta 2{
    cs8. b16 as8 d cs16 d cs b as8 d|
    \Cpartmotif
    \Cpartmotif
    \Cpartmotif

    cs8. b16 as8 d cs16 d cs b as8 d|
    \Cpartmotif
    \Cpartmotif
    \Cpartmotif%bar17
    as8. g16 fs8 b as16 b as g fs8 b|
    as16 b as g fs e fs g as b as g fs8 b|
    as16 b as g fs e fs g as b as g fs8 b|
  }
  \alternative{
    {as16 b as g fs e fs g as b as g fs4| }
    {as16 b as g fs e fs g as b as g fs4| }
  }
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  % Intro 4 measures
  fs2 e4:m fs4
  fs2 e2:m
  fs2 e4:m fs4
  e4:m b4:m fs4 e4:m
  %A   %%%%%%%%%%%%%%%%%%%%
  fs2:
  e4:m
  fs4
  fs2
  e4:m
  fs4
  fs2
  e4:m
  fs4
  fs2
  e4:m
  fs4
  %B %%%%%%%%%%%%%%
  fs2
  e2*2:m
  fs2*2
  e2:m
  fs4 e4:m fs2 %or dm
  fs4 e8*5:m b8:m

%%%%%%%%%%%%%%%%

  %c***********
  %a1*4
  fs8*3 b8:m fs8*3 b8:m	%14
  fs4 e4:m fs8*3 b8:m	%15
  fs4 e4:m fs8*3 b8:m	%16
  fs4 e4:m fs2		%17

  b4*3:m e4:m  %	%18
  r4 d4*2 fs4   %	%19
  %a1*2
  fs4 b4:m fs2   %	%20
  fs1			%21
  b4*3:m e4:m		%22
  e4*3:m b4:m		%23

  e2:m b4:m fs4		%24
  fs8*7 b8:m		%25
  fs1

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
