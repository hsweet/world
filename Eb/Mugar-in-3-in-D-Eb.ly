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
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  b2.
  <<\parenthesize b2. e2>>
  e16 fs8.(fs4) d16 [e8.]|
  fs2.

  r4. a,8 d fs|
  a16 a8.(a4 a8) [gs]|
  b4. g8 g [fs]
  fs16 b8.(b4) r|
  r2.
  %b
  b8 fs(fs2)
  g8 e(e2)
  fs8 d(d2)
  cs8 a(a2)

  cs8 d d4 r8 cs
  e4. c8 c b|
  \tuplet 4/3 {b4 cs d e}
  \tuplet 4/3 {es4 fs gs as}

  b8 fs(fs2)
  g8 e(e2)
  fs8 d(d2)
  cs8 a(a2)

  cs8 d d4 r8 cs|
  e4. c8 c b
  b2.  % measure 24
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

bass = \relative c''{
  \global
  %\clef bass
  b2.
  b2.
  gs2.
  fs2 e4
  d'2.
  d2 fs4
  as,2 cs4
  b2.
  r2.

  b2.
  cs2.
  d2.
  <<
    {cs2. } %e2 r %   more stuff here
    {a'4 gs g}
  >>
  f2.
  fs2.
  b,2.
  b2.
  fs2.
  g2.
  gs2.
  a2.
  b2.
  as2.
  b2.

}



%################################# Chords #######################
harmonies = \chordmode {
  b4*3:m
  e4*3
  d2.*3
  a2.
  a4*3:dim
  %cs2.:7
  b2.:m
  s2.
  %b Ia Fate etc
  b2.:m
  e2.:m
  e2.:7
  a2.
  g2.
  fs2.:7
  b2.*2:m
  b2.:m
  e2.:m
  e2.:7
  a2.
  g2.
  fs2.:7
  b2.:m

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