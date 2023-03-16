\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))


% \markup{ \italic{ \date }  }

%\markup{ Got something to say? }
\include "includes/Cyganca Sam Mala.ly"

global = {
  \clef treble
  \key e \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
   \mark \default
   b4 b' a g
   a8 a4 g8 fs2
   a8 a4 g8 fs[ a g fs]
   e1
  }
  %{
  \alternative {
    {
      \afterGrace g1{g'16 [d ef c] d [bf c a] g[d e fs] g[a bf c] }
    }


      {g'16 [d ef c] d [bf c a] g[d e fs] g [a g fs] }

  }
  %}

  \break

 \mark \default
  e2 gs
  %c8 [bf c d] ef16[  \footnote #'(-1 . 3) "Decoration"f ef d] a[bf f ef]
  a8[gs a b] c2
  d,2 fs
  g8[fs g a] b2
  %bf8[a bf c] d16[ef d c] bf[a g fs]


  %{
  \alternative {
    {
      \afterGrace g1 \coda ^\markup{D.C. al Coda}{g'16 [d ef c] d [bf c a] g[d e fs] g[a bf c] }

    }

    {g'16 [d ef c] d [bf c a] g[d e fs] g [a g fs] }
  }

  %}


   \break
   %g2 ^\markup{Coda}( \coda g8) r r4|
   %e4-.-> d-.-> g2->


}

%################################# Lyrics #####################

\addlyrics {
  E -- vo ban -- ke
  cig -- a -- ne moi
  cig -- a -- ne moi
  svir  -- aj mi ti
  %\repeat unfold 16 \skip2
  Ja cu, te -- bi Svi -- ra -- ti---
  %\repeat unfold 7 \skip2
  Ti Ces Me -- ne Slu -- sa -- ti
  %\repeat unfold 7 \skip2
  % E -- vo ban -- ke
  %cig -- a -- ne moi
 % cig -- a -- ne moi
  %svir  -- aj mi ti
}
\addlyrics{
  %\repeat unfold 16 \skip2
  Sam -- panj ce -- mo ot -- vo -- ri -- ti
  %\repeat unfold 7 \skip2
Ot -- vo -- ri -- ti I po -- pi -- ti
}

\addlyrics{
  \repeat unfold 16 \skip2
  A Kad Do -- de On -- aj Cas
  %\repeat unfold 7 \skip2
  Sam -- panj O -- bo -- rit Ce Nas
}
%{
Sampanj cemo otvoriti
Otvoriti I popiti

A Kad Dode Onaj Cas
Sampanj Oborit Ce Nas
%}
%################################# Chords #######################
harmonies = \chordmode {
    e1:m
    b1*2:7
    %c2:m d2:7
    e1:m
    %b
    e1 %g2:7
    a1:m
    d2 d2:7
    g4*4 %d2:7


    %c
    %{
    g1:m
    d1:7
    c2:m d2:7 g1:m
    %d
    g2 g2:7 c1:m
    f2 f2:7
    bf4*3 d4:7
    g1:m
    d1:7
    c2:m d2:7
    g1:m
    %}
    %coda
    %g1:m
    %c4:m d4:7 g2:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \transpose e' fs' \harmonies
    }
    \new Voice = "one" { \autoBeamOff \transpose e' fs' \melody }
  >>
  \header{
    title= "Evo Banke"
    subtitle=""
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{ }
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

%}

