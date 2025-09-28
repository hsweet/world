\version "2.24.0"
\include "english.ly"
%\pointAndClickOff
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
  \key d \minor
  \time 4/4
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes

  \repeat volta 2{
    \mark \default
    a4 f' d4 r
    a4 f' d4 r8 d8
    e4. (d8) e4. (d8)
    e4 g f8 (e) d4

    a4 f' d4 r
    a'4 a d, r
    e4. d8 e4 g8 f

  }
  \alternative {
    {e4 d r2}
    {e4 d r4 f8 g }
  }

  \repeat volta 2{
    \mark \default
    a2 a
    g2 f4. f8
    g4. (f8) g4 a
    c4 a g f8 g

    a2 a
    g2 f4. f8
    g8 (f g f) g4 a |
    g f d r

  }
  \alternative {
    { }
    { }
  }

  \break
  \repeat volta 2{
    \mark \default
    f2 a
    g8 (a g f) d4. d8
    e4. (d8) e4. (d8)
    e4 g f8 (e) d4

    f2 a
    g8 (a g f) d4. d8
    e4 d e g8 (f)
    e4 d r2
  }
  \break
  \repeat volta 2{
    \mark English
    a'4 a8 a d4 c
    a2. a8 a|
    a8 a a a g4 f|

    \alternative{
      {d2 r4 a'8 a }
      {d,2 r4 f8 g}
    }

  }

  \repeat volta 2{
    a2 a
    g2 f2
    g4. f8 g4 a
    c4 a g f8 g

    a2 a
    g2 f4. f8
    g8 (f g f) g4 a |
    g f d r
  }
}
%################################# Lyrics #####################
\addlyrics{
  \set stanza = #"1. "

  Mip -- ne -- ma
  Mip -- ne -- ma
  Yo -- re -- do  ha -- nes -- o -- mo
  Mip -- ne -- ma
  Mip -- ne -- ma
  Yo -- re -- do  han -- es -- o -- mo
  _ _
  m -- e -- ig -- ro ro -- mo
  Le -- vi -- ro a -- m -- ik -- to
  m -- e -- ig -- ro ro -- mo
  Le -- vi -- ro a -- m -- ik -- to

  %
  Ha -- ye -- ri -- do
  Ts -- oy -- rehk al -- i  -- o -- ti
  Ha -- ye -- ri -- do
  Ts -- oy -- rehk al -- i  -- o -- ti

}

\addlyrics {
  \set stanza = #"2. "
  Tell me why
  tell me how
  the Hu -- man soul has fall -- en

  Tell me why
  tell me how
  the Hu -- man soul has fall -- en _ _
  From the
  \repeat unfold 46 {\skip 2}
  top of the high -- est hill
  to the bot -- tom of the deep -- est well
  From the

  well. _ _
  I have fall -- en
  So that I can rise back up again
}
%################################# Chords #######################
harmonies = \chordmode {
  d1*2:m
  a1:m
  g4:m  a4:m d2:m
  d1*2:m
  a2:m
  g2:m
  d1:m
  d1:m
  %
  d1:m
  g2:m d2:m
  g1:m
  a2:m d2:m
  d1:m
  g2:m d2:m
  g1:m
  a2:m d2:m
  %
  d1:m
  a2:m d2:m
  g1:m
  a2:m d2:m
  d1:m
  a2:m d2:m
  g2:m
  a2:m d1:m
  % english
  d1:m
  g1*2:m
  d1:m
  d1:m
  %
  d1:m
  g2:m d2:m
  g1:m
  a2:m d2:m

  d1:m
  g2:m d2:m
  g1:m
  a2:m d2:m


}

\score {
  % transpose score below
  %\transpose g d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
  >>
  \header{
    title= "Mipney Ma"
    subtitle="(draft)"
    composer= ""

    instrument =""
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
}

%{
Tell me why
tell me how
the Human soul has fallen

 From the top of the highest hill
 to the bottom of the deepest well

 I have fallen
 So that I can rise back up again
}
%{
% more verses:
\markup{}
\markup {
  \font-size #2
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
