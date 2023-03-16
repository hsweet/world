\version "2.20.0"
\include "english.ly"
\paper{
  tagline = #ff
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\markup{ \italic{ \date }  }

%\markup{ Got something to say? }
verse = {
  e'8 e e e
  d cs cs cs
  cs cs b, a,
  b, a, a, a,

  b, e e e
  d cs cs cs
  cs b, a, b,
  b, a, a, a,

  c4 a,8 a,
  b, a, a, b,
  c b, b, a,
  b, a, a, e

  r c' a, a,
  b, a, a, b,
  c b, b, a,
  b, a, a, a,
}
global = {
  \clef treble
  \key a \major

  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
  \repeat volta 2{
    \mark \default
    b16 cs d e cs8. a16
    b16 cs d a cs8. a16
    b16 cs d r cs16 b b gs
    cs16 b b gs a cs e cs

    b16 cs d e cs8. a16
    b16 cs d e cs8. a16
    b16 cs d r e d d cs
  }
  \alternative {
    {cs16 b b gs a cs e cs }
    {
      cs b b gs a8 gs
      a8 e' e, e'
      a,8 e' e, e'
    }
  }
  \break
  e4.(e8)
  cs8 cs cs4
  b8 cs b b16(a)
  b8 a a16( gs a8)

  r8 e'4(e8)
  cs8 cs cs4
  b8 cs b b16(a)
  b8 a a4

  c8 c16 c b8a
  b8 a a b
  r8 c16 c b8 b
  a8 a a e

  c'8 c16 c b8 a
  b8 a a b
  r8 c16 c b8 b
  a8 a a b
  \bar "||"
  \break

  %Dum take....
  cs8 cs 16 e b b b a
  b8 a16 a a8 b
  cs8 cs16 e b b b a
  b8 a16 a a8 e

  r8 c' b16 b b a|
  b8 a16 a a8 b
  cs16 b b b b b b a
  b8 a16 a a8 a
  \bar "||"
  \break
  \verse
  \break
  % chorus
  \repeat volta 2{
    r8 e'4(d8)
    cs8 cs16 cs cs8 cs
    cs8 cs16 cs b b b a

  }
  \alternative {
    {b8 a16 a a8 a}
    {b8 a16 a a8 b}
  }
  cs16 cs cs cs b b b b
  b8 a16 a a8 b
  cs8 cs16 cs b b b a
  b8 a16 a a8 e

  r8 c' b16 b b b|
  b8 a16 a a8 b
  cs16 b b b b b b a
  b8 a16 a a8 a
} %end music block

%################################# Lyrics #####################
\addlyrics{
  \repeat unfold 68{\skip2}
  \set stanza = #"1. "
  Hai dad -- ma -- le,
  Mar -- ga -- re -- to'n
  toar -- ce -- te

  oi dad -- ma -- le,
  Mar -- ga -- re -- to'n
  toar -- ce -- te

  În -- to -- ar -- cete a
  şa la mi -- ne,
  a -- mîn -- doi so
  fri -- gem bi -- ne.

  În -- to -- ar -- cete a
  şa la mi -- ne,
  a -- mîn -- doi so
  fri -- gem bi -- ne.

  Dum ta -- ke du -- me  -la --ke dai du -- ma -- la -- la
  Dum ta -- ke du -- me  -la --ke dai du -- ma -- la -- la
  dai du -- me -- la -- ke dai du -- la -- la -- la
  re -- ke -- da -- ke du -- ma -- la -- ke  dai du -- me -- la -- ke

  %2nd verse
  \set stanza = #"2. "
  Bă -- lă -- lău e man -- da -- ta --re
  la In -- ter -- con -- ti -- nen -- ta -- le
  vin -- de -- car -- ne fă -- ră oa -- se
  la ga -- gi  -ci -- le fru -- moa -- se

  Hai dum -- ba dum -- ba dum -- ba
  si-o vin -- de  cu trie lei ciun -- ga
  Bai dum -- ba dum -- ba dum -- ba
  si-o vin -- de  cu trie lei ciun -- ga

  %2nd chorus
  O, da du -- ma  -- la -- la
  dum ta -- ke du -- me -- la -- la
  dai du -- ma  -- la -- la,
  dai du -- ma  -- la -- la.

  re -- ge -- da -- ke du -- ma -- la -- ke
  dai du -- ma  -- la  la,
  dum ta -- ke du -- me -- la -- ke
  dai du -- ma  -- la  la,
  dai du -- me -- la -- ke
  dai du -- ma  -- la  la,
  re -- ge -- da -- ke du -- ma -- la -- ke
  dai du -- ma  -- la  la.

}
blank = {
  \clef bass
  \repeat unfold 35{s2}
}


verse = \relative c'' {
  \global
  \repeat unfold 11{ s2}
  \verse

}
%################################# Chords #######################
harmonies = \chordmode {
  a2*11  %intro
  a4*15  %verse
  a2*8:m
  a4

  %%  chorus
  a2*4
  a2:m
  a2*3

  %%
  a4*15
  a2*8:m
  a4

  %%
  a2*9
  a2:m
  a2*4



}

\score {
  % transpose score below
  %\transpose c d
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff   \melody
    %\new Staff   \verse
    % \new Staff    \blank
  >>
  \header{
    title= "Dumbala Dumba"
    subtitle=""
    composer= "Tarif De Haiduks"

    instrument =""
    arranger= ""
  }
  \layout{indent = 1.0\cm}
  \midi {
    \tempo 4 = 120

    % \midi { }
  }
}

% more verses:
\markup{}
\markup {
  %\font-size #2
  \fill-line {
    \hspace #0.1 % distance from left margin
    \column {
      \line {
        "1."
        \column {
          "Nu te uita că sînt mică,"
          "că scot gardul din pămînte,"
          "nam desfac, că sînt brunetă,"
          "ditamai baro talento"
        }
      }
      \hspace #0.2 % vertical distance between verses
      \line {
        "2."
        \column {
          "Ai dhoronon, dai dai dhoronon"
          "dai dai dai dai"
          "dhoronon dai la,"
          "Ai dhoronon,"
          "dai dia dho-ronon,"
          "dai dai dai dai"
          "dhoronon dai la."
        }
      }
    }
    \hspace #0.1  % horiz. distance between columns
    \column {
      \line {
        ""
        \column {
          ""
        }
      }
      \hspace #0.2 % distance between verses
      \line {
        ""
        \column {
          ""
        }
      }
    }
    \hspace #0.1 % distance to right margin
  }
}



%{
"Nu te uita că sînt mică,"
"că scoŃ gar- dul din pă- mînte,"
"nam des- fac, că sînt brunetă,"
"ditamai baro talento"

"Ai dhoronon, dai dai dhoronon"
"dai dai dai dai"
"dhoronon dai la,"
"Ai dhoronon,"
"dai dia dho-ronon,"
"dai dai dai dai"
"dhoronon dai la."
%}