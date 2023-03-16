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

concert = {
  \repeat volta 2{
    \mark \default
    b4 fs'8 b fs' b fs' b|  %change from Pete's
    d'4 a8 d' a d' a d'|  %d's => c's
    fs'4 d'8 fs' e'4 cs'8 e'
  }
  \alternative { {d'4 b8 d' cs'4 fs' }{d'4 cs' b a } }

  \repeat volta 2{
    \mark \default
    r8 fs'' g' a g' fs' e' d'|
    r8 fs' g' a g' fs' e' d'|
    r8 fs' g' a b a g' fs'|
    e'4 g'8 fs' e'2|

    r8 e' fs' g' fs' g' fs' e'
  }
  \alternative {
    {
      d'4 fs'8 e' d'4. d'8
      d'8 a a d' d' c' c' b
      b4 bf a2|
    }
    {
      d'4 fs'8 e' d'4. fs'8
      fs'8 e' e' d' d' cs' cs' b
      b2 r8 fs'' gs' as|
    }
  }

  \repeat volta 2{
    \mark \default
    b8 r4 fs'8 a g' fs' e'|
    d'8 cs' b4 r8 b cs' d'
    e'4 g' fs'8 e' d' e'
    fs'2 r8 fs' gs' as %?

    b8 fs'4 a8~a g' fs' e'|
    d'8 cs' b4 r8 b cs' d'
    e'4 g' fs'8 e' d' cs'
  }
  \alternative { {b2 r8 fs'' gs' as }{b,1 } }
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \concert

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  %{ Sokolow's
 d1*2:m
 d2:m g2:m
 d2:m
 a2:7
 d4:m a4:7 d4:m c4:7
  %}
  %Meghan's
  b1:m
  d1
  b2:m e2:m
  b2:m fs2:7
  b4:m fs4:7 e4:m a4:7
  %B
  d1*2
  d2
  b2:7
  e1:m
  a1:7
  %1st end
  d1
  d2
  a2:m
  b4:m
  bf4:7
  a2:7
  %2nd end
  d1
  fs1:7
  b2:m
  fs2:7
  %c
  b2:m
  e2:m
  b1:m
  e2:m
  fs2:7
  b2:m
  fs2:7
  b2:m
  e2:m
  b1:m
  e2:m
  fs2:7
  %1st end
  b2:m
  fs2:m
  b1:m

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
    title= "7:40"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "Sokolow"
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

%{
convert-ly (GNU LilyPond) 2.12.3
Processing `'...
Applying conversion: 2.12.3


%}
