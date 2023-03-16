\version "2.18.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }

global = {
  \clef treble
  \key c \minor
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
%melody =  \transpose c d \relative c' {  %transpose for clarinet
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes
  \mark \default
  % top line

  g16 af b c  d b c af b c c b af g d' g, |
  g af b c  d b c a  b c c b af g g8|
  g16 af b c d b c af  b c c b  af g d' g,|
  g16 af b c d b c af  b c c b  a g g8|

  \break
  \repeat volta 2{
    %bottom Line
    \mark \default
    c,8 c d c b16 c d8(d4)|
    % f8 f g f e16(f g8) (g4)    top line m2
    a8 a b a g16(a b8)(a4)  %more stuff
    c8 c d c g16(a) b8 a g |
    f8 a g f g g4 r8|
  }

}


%################################# Lyrics #####################
\addlyrics{
  \repeat unfold 62{\skip 2}
  \set stanza = #"1. "
  Ush -- ti ush -- ti ba -- ba
  O da -- vul -- ja ma -- ren
  O da -- vul -- ja ma -- ren ba -- ba me phen  -- ja -- ke a -- ven
}
\addlyrics{
  \repeat unfold 62{\skip 2}
  \set stanza = #"2. "
  Me phen -- ja -- ke av -- en
  O da -- vul --ja mar -- en,
  O da -- vul -- ja mar -- en, ba --ba,
  Me phen -- ja --ke av -- en.
}
%################################# Chords #######################
harmonies = \chordmode {
  g1 f2:m g2
  g1 f2:m g2
  %b
  c2:m g2
  f2:m g2
  c2:m g2
  f2:m g2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Ushti, Ushti, Baba"
    subtitle="Wake Up, Papa"
    composer= ""
    instrument =""
    arranger= "Macedonian Rom"
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}

%\markup{\vspace #4}
% more verses:

%\markup{-}

\markup {
  \pad-around #4.0
  \larger

  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line { "3."
              \column {
                "Me phenjake aven,"
                "E najsukarjakje,"
                "E najsukarjakje, baba,"
                "E najtiknorjakje."
              }
      }
      \hspace #0.2 % vertical distance between verses
      \line { "4."
              \column {
                "Ushti baba, usti,"
                "O cheizi ikal,"
                "O cheizi ikal, baba,"
                "E najtiknorjakje."
              }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line { "1."
              \column {
                " Wake up, wake up, father,"
                "The drum is beating,"
                "The drum is beating."
                "They’re coming for my sister"
              }
      }
      \hspace #0.2 % distance between verses
      \line { "2."
              \column {
                "They’re coming for my sister,"
                "The most beautiful one,"
                "The most beautiful one, father,"
                "The smallest one."
              }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}


%{
Ushti Ushti, baba
O davulja maren,
O davulja maren, baba,
Me phenjake aven. / x2

Me phenjake aven
O davulja maren,
O davulja maren, baba,
Me phenjake aven. / x2

Me phenjake aven,
E najsukarjakje,
E najsukarjakje, baba,
E najtiknorjakje. / x2

Ushti baba, usti,
O cheizi ikal,
O cheizi ikal, baba,
E najtiknorjakje. / x2

 *********************
Wake up, wake up, father,
The drum is beating,
The drum is beating.
They’re coming for my sister.

They’re coming for my sister,
The most beautiful one,
The most beautiful one, father,
The smallest one.

Wake up, wake up, father,
The dowry is being taken out,
The dowry is being taken out,
The smallest one.

Wake up, wake up, father,
The drum is beating,
The drum is beating,
They’re coming for my sister.

%}
