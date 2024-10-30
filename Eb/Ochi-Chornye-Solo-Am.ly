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
intro = \transpose d a \relative c'{
  \global
  s2
  g8 [(cs e a)] cs,[( e a cs)]
  e,8[( a cs e)] \harmonicsOn a4
  \breathe e \breathe
  d4 \harmonicsOff r r2
}

melody = \transpose d a \relative c, ' {
  \global\partial 4*2 gs4 \downbow  a \upbow   %lead in notes
  bf4.(a8) a2~
  a4 r gs a
  bf4.(a8) a2~
  a4 r a  d

  d4.(cs8) cs2~
  cs4 r a e'|
  e4.(d8) d2~|
  d4 r d f

  f4.(e8) e2~|
  e4 r e f
  e4.(d8) d2~|
  d4 r gs, a

  bf4.(a8) a2~
  a4 r e f
  d1~
  d2 r


}

improv = \transpose d a  \relative c {
  \global
  \partial 4*2 gs4 \downbow  a \upbow   %lead in notes

  \repeat volta 2{
    %\mark \default
    bf8\downbow[ bf a] r bf[bf(a)] r
    %bf8 \downbow bf[bf(a)] r bf[ bf(a)]
    cs8 [e(g) bf](a)[ g f e]
    e8 [e(d)] r e\downbow[d r a]~
    a2 d4 -. \upbow d -. \upbow

    f8 [e] r4 e4. \upbow \breathe d8 \downbow
    cs8 [e(g) bf](a)[ g f e]
    f8 [d  a] r d8\upbow [a f] r
    d2 f'4\upbow f \upbow

    f8\downbow[ e\upbow (r bf)] f'[g(f)] r
    f2 e4\upbow f\upbow
    e8 \downbow [e(r a)] e\downbow [f(e)] r
    d2 gs,4\upbow (a4)\upbow

    bf8\downbow [a c bf] (a)[g(f) e]
    e4 e f e
    e2\downbow d8[d r d]~
    d2 r2|

    %{
    a8\downbow [b cs] r cs\upbow[e g] r  %17
    a,8\downbow [b cs] r cs\upbow[e g] r
    d8\downbow [e f a  ]cs[e r cs \upbow]
    d8 [a f d](d2)

    \tuplet 3/2 {e8[ (f e]} d) [e]\upbow f[g a] r|
    bf8 \upbow [a r cs] r e\upbow [r g\upbow]
    f8\downbow [f r f] r e\upbow [ r d]~
    d2 a'4\upbow (bf)\upbow

    a8[g] r4 d8\downbow [bf r g] ~
    g2 g'4 \upbow (a4 \upbow)
    g8\downbow [f r d] a [r f d] ~|
    d2. \breathe d4 \upbow

    e8 [f g a] (bf)[a (g) f]
    e8[d cs] r a'4\upbow(a4 \upbow)
    \tuplet 3/2 {e8 [(f e]} d4 \tuplet 3/2 {e8 [(f e]} d4
    d2  r
    %}

  }

}
improvtwo =\transpose d a  \relative c {
  \global
  \partial 4*2 gs4 \downbow  a \upbow   %lead in notes
  a8\downbow [b cs] r cs\upbow[e g] r  %17
  a,8\downbow [b cs] r cs\upbow[e g] r
  d8\downbow [e f a  ]cs[e r cs \upbow]
  d8 [a f d](d2)

  \tuplet 3/2 {e8[ (f e]} d) [e]\upbow f[g a] r|
  bf8 \upbow [a r cs] r e\upbow [r g\upbow]
  f8\downbow [f r f] r e\upbow [ r d]~
  d2 a4\upbow (bf)\upbow

  a8[g] r4 d8\downbow [bf r g] ~
  g2 g'4 \upbow (a4 \upbow)
  g8\downbow [f r d] a [r f d] ~|
  d2. \breathe d4 \upbow

  e8 [f g a] (bf)[a (g) f]
  e8[d cs] r a'4\upbow(a4 \upbow)
  \tuplet 3/2 {e8 [(f e]} d4 \tuplet 3/2 {e8 [(f e]} d4
  d2  r
}
%################################# Lyrics #####################
%\addlyrics{  }
text = \lyricmode {

}
%################################# Chords #######################
harmonies = \transpose d a  \chordmode {
  s2
  a1*2:7
  d1*2:m
  a1*2:7
  d1*2:m
  g1*2:m
  d1*2:m
  a1*2:7
  d1*2:m

  %{
 a1*2:7
 d1*2:m
 a1*2:7
 d1*2:m
 g1*2:m
 d1*2:m
 a1*2:7
 d1*2:m
  %}
}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff = "zero"
    instrumentName = "Intro"
  }  { \autoBeamOff \intro }
  \new Staff = "one"
  instrumentName = "Melody"
}  { \autoBeamOff \melody }
\new Staff  = "two"
instrumentName = "Improv1"} { \autoBeamOff \improv }
\new Staff = "three"
instrumentName = "Improv2"}{ \autoBeamOff \improvtwo }
\new Lyrics \lyricsto "one" \text
>>
\header{
  title= "Ochi Chorney"
  subtitle=""
  composer= ""
  instrument = "Eb"
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
	}\version "2.18.0"
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
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
  }
  \alternative {
    { }
    { }
  }

  \repeat volta 2{
   \mark \default
  }
   \alternative {
     { }
     { }
   }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {\transpose c a
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
      \melody
  >>
  \header{
    title= ""
    subtitle=""
    composer= ""
    instrument = "Eb"
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

}

      }
    }
    \hspace #0.1 % distance to right margin
  }
}

%}
