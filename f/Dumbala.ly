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
  a'8 a a a
  g fs fs fs
  fs fs e d
  e d d d

  e a a a
  g fs fs fs
  fs e d e
  e d d d

  f4 d8 d
  e d d e
  f e e d
  e d d a

  r f' d d
  e d d e
  f e e d
  e d d d
}
global = {
  \clef treble
  \key d \major

  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
}

%#################################### Melody ########################
melody = \relative c' {
  \global
  %\partial 4 g4    %lead in notes
  \repeat volta 2{
    \mark \default
    e16 fs g a fs8. d16
    e16 fs g d fs8. d16
    e16 fs g r fs16 e e cs
    fs16 e e cs d fs a fs

    e16 fs g a fs8. d16
    e16 fs g a fs8. d16
    e16 fs g r a g g fs
  }
  \alternative {
    {fs16 e e cs d fs a fs }
    {
      fs e e cs d8 cs
      d8 a' a, a'
      d,8 a' a, a'
    }
  }
  \break
  a4.(a8)
  fs8 fs fs4
  e8 fs e e16(d)
  e8 d d16( cs d8)

  r8 a'4(a8)
  fs8 fs fs4
  e8 fs e e16(d)
  e8 d d4

  f8 f16 f e8d
  e8 d d e
  r8 f16 f e8 e
  d8 d d a

  f'8 f16 f e8 d
  e8 d d e
  r8 f16 f e8 e
  d8 d d e
  \bar "||"
  \break

  %Dum take....
  fs8 fs 16 a e e e d
  e8 d16 d d8 e
  fs8 fs16 a e e e d
  e8 d16 d d8 a

  r8 f' e16 e e d|
  e8 d16 d d8 e
  fs16 e e e e e e d
  e8 d16 d d8 d
  \bar "||"
  \break
  \verse
  \break
  % chorus
  \repeat volta 2{
    r8 a'4(g8)
    fs8 fs16 fs fs8 fs
    fs8 fs16 fs e e e d

  }
  \alternative {
    {e8 d16 d d8 d}
    {e8 d16 d d8 e}
  }
  fs16 fs fs fs e e e e
  e8 d16 d d8 e
  fs8 fs16 fs e e e d
  e8 d16 d d8 a

  r8 f' e16 e e e|
  e8 d16 d d8 e
  fs16 e e e e e e d
  e8 d16 d d8 d
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
  d2*11  %intro
  d4*15  %verse
  d2*8:m
  d4

  %%  chorus
  d2*4
  d2:m
  d2*3

  %%
  d4*15
  d2*8:m
  d4

  %%
  d2*9
  d2:m
  d2*4



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