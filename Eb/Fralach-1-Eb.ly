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

%#################################### Melody ########################
melody = \relative c''{
  \clef treble
  \key e \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    b8 [a gs a]
    b4 c
    b2~
    b2

    ds8 [c b c]
    ds4  e
    fs2~
    fs2

    fs8 g a r
    a8 r a r
    a8 [(g) g (fs)] |
    fs8[(e)e(ds)]

    ds8 e fs r|
    fs8 r fs r
    fs8[(e)e(ds)]
    ds[(c) c (b)]

    a8 [gs a b]
    c8 [e ds c]
  }
  \alternative { {b2~b4 r }{b2~b4 r8 b } }

  \repeat volta 2{
  \mark \default
    e4.  b16 e
    g4. e16 g
    b2~
    b2

    b8 \prall [(a) a \prall (g])
    g8 \prall [(fs)fs\prall (e)]
    fs2~
    fs8 [b, (c b)] %add a grace

    fs'4. g8
    a4. b8
    c2~
    c2

    b8[(a)a(g)]
    g[(fs)fs(e)]


  }
  \alternative {
    {
      g2
      \tuplet 3/2{b8 a g}
      \tuplet 3/2 {g fs e}

    }
    {
      e4. fs16 g
      e2
    }
  }

  \repeat volta 2{
  \mark \default
    fs8  e ds4 ->
    ds8 c b4 ->
    b8 [e ds e]
    fs8 r b->r

    fs8 e ds4 ->
    ds8 c b4 ->
    c8 [b a e'-]
    b8 r b r|

  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  b2*8
  %r2*15
  %maybe
  %r2*7
  a2*4:m
  %r2*3
  b2*4
  %r2*3
  %end maybe
  a2*2:m
  %r2
  b2*4
  %r2*3
  %b
  e2*6:m
  %r2*5
  b2*4
  %r2*3
  a2*2:m
  %r2
  b2*2
  %r2
  e2*4:m
  %r2*3
  %c
  b2*6
  %r2*5
  a2:m
  b2
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
    title= "No. 1 Frailach"
    subtitle=""
    composer= ""
    instrument =""
    arranger= "Kammen"
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
