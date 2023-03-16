\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ A A B A B Fine}

global = {
  \clef treble
  \key b \major
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
diddle = { fs'16 gs' as b cs' b as gs' }

melody = \relative c''' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    \grace as16 (b4)(b8->) cs -.ds-. [cs-.] b-. [as-.]|
    b4-> ds16\upbow cs ds cs b4.\upbow(bs8)
    cs4->(cs8) ds-. e-. ds--\turn cs [bs]|
    cs16(ds) es->(ds) cs16(ds) es->(ds)  cs4(cs16) cs, ds es|

    fs8-. as-. cs-. [fs, --]  fs8-. as-. cs-. [fs, --]
    fs8-. as-. cs-. [ds-.] e4.-> ds8
    \grace e16(fs8--) fs-. as,-. [as --] as-. fs-. gs-.[as-.]

  }
  \alternative {
    {  b8 <fs b,>4.  <fs b,>4 <fs b,>}
    {  b8 <fs b,>4.  <fs b,>4 (fs16) cs ds es}
  }

  \repeat volta 2{
    \mark \default
    fs8-. as-. cs16 b as gs \diddle
    \diddle \diddle
    \diddle fs16 gs as b cs8 as16 gs |  %add a slur
    fs8-. [gs-.]  cs-. [ds-.] e(e4) ds8-.|
    fs8 fs-. as,-. [as --] as-. fs-. gs-.[as-.]



  }
  \alternative {
    { b8 <fs b,>4.  <fs b,>4 <fs b,>}
    { b8 <fs b,>4.  <fs b,>4 r }
  }
  \bar"||"
  cs2^\markup{\italic{Fine}} as
  b2 r
}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b1*2
  cs1:m
  cs1
  fs2*3
  fs2:7
  fs1
  b1*2
  %b
  fs2*7
  fs2*3:7
  b1*2
  fs1
  b1
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Verbunk"
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
