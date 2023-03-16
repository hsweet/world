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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    a8. [b16 c8 c] c [c c8.\prall b16]|
    c16 b a gs a b c a b4 e|
    gs,8 [a b8.\prall a16] b8[c d8.\prall b16]
    c16 b a c b a gs b
  }
  \alternative {
    {a16 e fs gs a8 e }
    {
      \time 2/4
      a8 [b c d]
      \time 4/4
      e8 e4. \grace ds16 (e2)|
      \grace ds16 (e2) \grace ds16 (e2)
    }
  }

  \repeat volta 2{
    \mark \default
    \grace ds16(e8.) d16 c8 c b a16 gs a8 a|
    a8. [f16 f8 f] e8 d16 cs d8 r|
    e16 e e8 gs16 gs gs8 b16 b b8 d16 d d8|
    e,16 e e8 a16 a a8 c16 c c8 e4|

    \grace ds16(e8.) d16 c8 c b a16 gs a8 a|
    a8. f16 f8 f e8 d16 cs d8 r|
    e16 e e8 gs16 gs gs8 b b d8. b16|
    c16 b a c b a gs b
  }
  \alternative {
    {a16 e fs gs a b c d }
    {a16 e fs gs a4 }
  }

}

secund = \relative c'{
  \global
  a8 c-> a c-> a8 c-> a c->
  a8 c-> a c-> b gs-> b gs->
  b8 gs-> b gs-> b gs-> b gs->
  b8 gs-> b gs-> a e-> a e->

  \time 2/4
  a8 e-> a e->
  \time 4/4
  a8 c-> e c-> a8 c-> e c->
  a8 c-> e c-> a8 c-> e c->
  a8 c-> a c-> a cs4 cs8|
  a8 cs4->cs8-> a <f d'>-> a<f d'>-> |

  a8 <gs b>-> a8 <gs b>-> a8 <gs b>-> a8 <gs b>->
  a8 e->  a8 e->  a8 e->  a8 e->
  a8 e->  a8 e-> a cs4-> cs8->|
  a8 cs4-> cs8 a<ds, f>-> a' <ds, f>->|

  a'8 <gs b>-> a8 <gs b>-> a8 <gs b>-> a8 <gs b>->
  b8 <gs b>->b <gs b>-> a e-> a e->
  a8 e-> a e->



}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
    \new Staff \secund
  >>
  \header{
    title= "Hora"
    subtitle=""
    composer= "Feher Marton"
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
