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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    d8. [e16 f8 f] f [f f8.\prall e16]|
    f16 e d cs d e f d e4 a|
    cs,8 [d e8.\prall d16] e8[f g8.\prall e16]
    f16 e d f e d cs e
  }
  \alternative {
    {d16 a b cs d8 a }
    {
      \time 2/4
      d8 [e f g]
      \time 4/4
      a8 a4. \grace gs16 (a2)|
      \grace gs16 (a2) \grace gs16 (a2)
    }
  }

  \repeat volta 2{
    \mark \default
    \grace gs16(a8.) g16 f8 f e d16 cs d8 d|
    d8. [bf16 bf8 bf] a8 g16 fs g8 r|
    a16 a a8 cs16 cs cs8 e16 e e8 g16 g g8|
    a,16 a a8 d16 d d8 f16 f f8 a4|

    \grace gs16(a8.) g16 f8 f e d16 cs d8 d|
    d8. bf16 bf8 bf a8 g16 fs g8 r|
    a16 a a8 cs16 cs cs8 e e g8. e16|
    f16 e d f e d cs e
  }
  \alternative {
    {d16 a b cs d e f g }
    {d16 a b cs d4 }
  }

}

secund = \relative c'{
  \global
  d8 f-> d f-> d8 f-> d f->
  d8 f-> d f-> e cs-> e cs->
  e8 cs-> e cs-> e cs-> e cs->
  e8 cs-> e cs-> d a-> d a->

  \time 2/4
  d8 a-> d a->
  \time 4/4
  d8 f-> a f-> d8 f-> a f->
  d8 f-> a f-> d8 f-> a f->
  d8 f-> d f-> d fs4 fs8|
  d8 fs4->fs8-> d <bf g'>-> d<bf g'>-> |

  d8 <cs e>-> d8 <cs e>-> d8 <cs e>-> d8 <cs e>->
  d8 a->  d8 a->  d8 a->  d8 a->
  d8 a->  d8 a-> d fs4-> fs8->|
  d8 fs4-> fs8 d<gs, bf>-> d' <gs, bf>->|

  d'8 <cs e>-> d8 <cs e>-> d8 <cs e>-> d8 <cs e>->
  e8 <cs e>->e <cs e>-> d a-> d a->
  d8 a-> d a->



}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {

}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
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
    instrument = "Violin"
    arranger= ""
  }
  \midi{\tempo 4 = 120}
  \layout{indent = 1.0\cm}
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
