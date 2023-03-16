\version "2.18.0"
\include "english.ly"

\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ Drone low A }

first=  \relative c''' {
  \clef treble

  \key fs \minor
  \time 4/4


  %s1*4
  fs8    [es8 ] fs [es]  fs [es] fs [es]
  fs8 [es] fs [es] fs [es] d [ cs]
  b8 d16 d d8 [d] e [ d ] d [cs]
  b8 cs16 cs cs8 [cs] cs4 cs|

  e,4. ds8 e ds e [cs] ~|
  cs8 d4 cs8 d a b4|
  b8 cs d e fs e d cs
  b8 cs4 cs8  cs4 cs|

}

second = {
  \repeat volta 2{
    fs'8    [es'8 ] fs' [es']  fs' [es'] fs' [es']
    fs'8 [es'] fs' [es'] fs' [es'] d' [ cs']
    b8 d'16 d' d'8 [d'] e' [ d' ] d' [cs']
    b8 cs'16 cs' cs'8 [cs'] cs'4 cs'|
  }

  \repeat volta 2{
    cs'4.   bs8 cs' bs cs' [as]~|
    as8 b4 as8 b fss' fs'4
    fs'8 as b cs' d' cs' b as|
    gs' as4 a8 a4 a

  }

  \repeat volta 2{
    cs'8   fs'16 fs' fs'8[es'] fs'[es'] fs'[es']|
    fs'8[es'] fs'[es'] fs'[es'] d'[cs']|
    b8 d'16 d' d'8 d' e'[d' d' cs']
    b8 cs'16 cs' cs'8 cs' cs'4 cs'
  }
}

melody = \relative c'' {
  \clef treble

  \key fs \minor
  \time 4/4

  <<
    \second
    \\
  >>
}
%************************Lyrics Block****************
%\addlyrics{ Doe a deer }

harmonies = \chordmode {
  b1:m s1 e1:m fs1:m
  e1:m b1:m e1:m fs1:m
  b1:m s1 e1:m fs1:m
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff \with {
      instrumentName = "First"
    } \first
    \new Staff \with {
      instrumentName = "Second"
    } \melody
    %\new Staff  \transpose c'' c''' \melody
  >>
  \header{
    title= "Rumelaj"
    subtitle="Balkan Gypsy"
    arranger= " "
  }
  \layout{indent = 1.0\cm}
  \midi{
    \tempo 4 = 120
  }
}
