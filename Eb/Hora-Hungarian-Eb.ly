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
  \time 4/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c'' {
  \global
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    b8. [cs16 d8 d] d [d d8.\prall cs16]|
    d16 cs b as b cs d b cs4 fs|
    as,8 [b cs8.\prall b16] cs8[d e8.\prall cs16]
    d16 cs b d cs b as cs
  }
  \alternative {
    {b16 fs gs as b8 fs }
    {
      \time 2/4
      b8 [cs d e]
      \time 4/4
      fs8 fs4. \grace es16 (fs2)|
      \grace es16 (fs2) \grace es16 (fs2)
    }
  }

  \repeat volta 2{
    \mark \default
    \grace es16(fs8.) e16 d8 d cs b16 as b8 b|
    b8. [g16 g8 g] fs8 e16 ds e8 r|
    fs16 fs fs8 as16 as as8 cs16 cs cs8 e16 e e8|
    fs,16 fs fs8 b16 b b8 d16 d d8 fs4|

    \grace es16(fs8.) e16 d8 d cs b16 as b8 b|
    b8. g16 g8 g fs8 e16 ds e8 r|
    fs16 fs fs8 as16 as as8 cs cs e8. cs16|
    d16 cs b d cs b as cs
  }
  \alternative {
    {b16 fs gs as b cs d e }
    {b16 fs gs as b4 }
  }

}

secund = \relative c''{
  \global
  b8 d-> b d-> b8 d-> b d->
  b8 d-> b d-> cs as-> cs as->
  cs8 as-> cs as-> cs as-> cs as->
  cs8 as-> cs as-> b fs-> b fs->

  \time 2/4
  b8 fs-> b fs->
  \time 4/4
  b8 d-> fs d-> b8 d-> fs d->
  b8 d-> fs d-> b8 d-> fs d->
  b8 d-> b d-> b ds4 ds8|
  b8 ds4->ds8-> b <g e'>-> b<g e'>-> |

  b8 <as cs>-> b8 <as cs>-> b8 <as cs>-> b8 <as cs>->
  b8 fs->  b8 fs->  b8 fs->  b8 fs->
  b8 fs->  b8 fs-> b ds4-> ds8->|
  b8 ds4-> ds8 b<es, g>-> b' <es, g>->|

  b'8 <as cs>-> b8 <as cs>-> b8 <as cs>-> b8 <as cs>->
  cs8 <as cs>->cs <as cs>-> b fs-> b fs->
  b8 fs-> b fs->



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
