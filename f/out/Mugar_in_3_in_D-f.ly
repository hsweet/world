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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  a2.
  <<\parenthesize a2. d2>>
  d16 e8.(e4) c16 [d8.]|
  e2.

  r4. g,8 c e|
  g16 g8.(g4 g8) [fs]|
  a4. f8 f [e]
  e16 a8.(a4) r|
  r2.
  %b
  a8 e(e2)
  f8 d(d2)
  e8 c(c2)
  b8 g(g2)

  b8 c c4 r8 b
  d4. bf8 bf a|
  \tuplet 4/3 {a4 b c d}
  \tuplet 4/3 {ds4 e fs gs}

  a8 e(e2)
  f8 d(d2)
  e8 c(c2)
  b8 g(g2)

  b8 c c4 r8 b|
  d4. bf8 bf a
  a2.  % measure 24
  %r2.

}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "
  Mugur mugur mu - - gu -rel
  _ _ _  Mugur \skip2 \skip2  mu -  gu -  rel
  \skip1
  I -- a fa -- te mai mar -- i -- cel
  Mu -- gur \skip2 \skip2  mu -- gur \skip2 \skip2  rel...
  \repeat unfold 7{\skip 2}
  I -- a fa -- te mai mar -- i -- cel
  Mu -- gur \skip2 \skip2  mu -- gur \skip2 \skip2  rel...
}

\addlyrics{
  \set stanza = #"2. "
Că ne -- am săturat de iar -- nă,
\repeat unfold 12{\skip 2}
Și de rău --- ta -- te-n ța -- ră,
\repeat unfold 16{\skip 2}
Și de rău -- ta -- te-n ța -- ră,
}

\addlyrics{
  \set stanza = #"3. "
  Batei Doamne pe cio -- co  \skip 2 li
  \repeat unfold 12{\skip 2}
  Cum ne bat si ei pe no -- i
  \repeat unfold 16{\skip 2}
  Cum ne bat si ei pe no -- i

}

bass = \relative c'{
  \global
  %\clef bass
  a2.
  a2.
  fs2.
  e2 d4
  c'2.
  c2 e4
  gs,2 b4
  a2.
  r2.

  a2.
  b2.
  c2.
  <<
    {b2. } %e2 r %   more stuff here
    {g'4 fs f}
  >>
  ef2.
  e2.
  a,2.
  a2.
  e2.
  f2.
  fs2.
  g2.
  a2.
  gs2.
  a2.

}



%################################# Chords #######################
harmonies = \chordmode {
  a4*3:m
  d4*3
  c2.*3
  g2.
  g4*3:dim
  %cs2.:7
  a2.:m
  s2.
  %b Ia Fate etc
  a2.:m
  d2.:m
  d2.:7
  g2.
  f2.
  e2.:7
  a2.*2:m
  a2.:m
  d2.:m
  d2.:7
  g2.
  f2.
  e2.:7
  a2.:m

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff  \melody
    \new Staff  \bass
  >>
  \header{
    title= "Mugar Mugurel"
    subtitle="Little Buds"
    composer= ""
    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120
    % alignAboveContext = "staff" }

    % \midi { }
  }
}

% more verses:
\markup{}
\markup {
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line {
        "1."
        \column {
          "Translation:"
          "Sprout little sprout"
          "Just grow a little bit"
          "Sprout, little sprout"
          "Mugur mugurel"
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        "2."
        \column {
          "Because we are tired of winter"
          "Sprout little sprout"
          "and the malice within our country"
          "Mugur mugurel"
        }
      }

    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        "3."
        \column {
          "G-d punish the bootlickers"
          "Mugur mugurel"
          "Like they punish us"
          "Mugur mugurel".
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        "4."
        \column {
          "Sprout little sprout"
          "Just grow a little bit"
          "Sprout, little sprout"
          "Mugur mugurel"
        }
      }

    }
    \hspace #0.1 % distance to right margin
  }
}


%{
http://lyricstranslate.com/en/mugur-mugurel-sprout-you-little-sprout.html
Mugur, mugur, mugurel,
Mugur, mugurel,
Ia fă-te mai măricel,
Mugur, mugurel,
Ia fă-te mai măricel,
Mugur, mugurel.

Că ne-am săturat de iarnă,
Mugur, mugurel,
Și de răutate-n țară,
Mugur, mugurel,
Și de răutate-n țară,
Mugur, mugurel.

Bate-i, Doamne, pe ciocoi,
Mugur, mugurel,
Cum ne bat și ei pe noi,
Mugur, mugurel,
Cum ne bat și ei pe noi,
Mugur, mugurel.

Mugur, mugur, mugurel,
Mugur, mugurel,
Ia fă-te mai măricel,
Mugur, mugurel,
Ia fă-te mai măricel,
Mugur, mugurel.

%}