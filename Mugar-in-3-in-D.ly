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
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  d2.
  <<\parenthesize d2. g2>>
  g16 a8.(a4) f16 [g8.]|
  a2.

  r4. c,8 f a|
  c16 c8.(c4 c8) [b]|
  d4. bf8 bf [a]
  a16 d8.(d4) r|
  r2.
  %b
  d8 a(a2)
  bf8 g(g2)
  a8 f(f2)
  e8 c(c2)

  e8 f f4 r8 e
  g4. ef8 ef d|
  \tuplet 4/3 {d4 e f g}
  \tuplet 4/3 {gs4 a b cs}

  d8 a(a2)
  bf8 g(g2)
  a8 f(f2)
  e8 c(c2)

  e8 f f4 r8 e|
  g4. ef8 ef d
  d2.  % measure 24
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
  d2.
  d2.
  b2.
  a2 g4
  f'2.
  f2 a4
  cs,2 e4
  d2.
  r2.

  d2.
  e2.
  f2.
  <<
    {e2. } %e2 r %   more stuff here
    {c'4 b bf}
  >>
  af2.
  a2.
  d,2.
  d2.
  a2.
  bf2.
  b2.
  c2.
  d2.
  cs2.
  d2.

}



%################################# Chords #######################
harmonies = \chordmode {
  d4*3:m
  g4*3
  f2.*3
  c2.
  c4*3:dim
  %cs2.:7
  d2.:m
  s2.
  %b Ia Fate etc
  d2.:m
  g2.:m
  g2.:7
  c2.
  bf2.
  a2.:7
  d2.*2:m
  d2.:m
  g2.:m
  g2.:7
  c2.
  bf2.
  a2.:7
  d2.:m

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
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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