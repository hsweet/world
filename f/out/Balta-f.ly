\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
\markup{ ABC, ABC, A }

%#################################### Melody ########################
melody = \relative c''{
  \clef treble
  \key e \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    ds16 e b d cs as b8|
    ds16 e b d cs as b8|
    ds16 e b d cs as b d|
    cs16 as b g gs e b'8|


  }
  \alternative {
    {cs16 as b g gs e b'8| }
    {cs16 as b g gs  ds e8^Fine|}
  }

  \repeat volta 2{
    \mark \default
    gs16 as b cs d as b d
    cs16 as b d cs as b8|
    gs16 as b cs d as b d
    cs16 as b g gs e b'8|


  }
  \alternative {
    {cs16 as b g gs e b'8| }
    {  cs16 as b g gs ds e8|}

  }
  \repeat volta 2{
    % \break
    \mark \default
    \autoBeamOff e->e-> e-> \autoBeamOn b'16 cs|
    d16 as b g gs e b'8|
    \autoBeamOff  e,8-> e-> e-> \autoBeamOn b'16 cs|
    d16 as b g gs e b'8|

  }
  \alternative{
    {d16 as b g gs e b'8|}
    {d16 as b g gs ds e8|}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Balta"
    subtitle="Romania"
    composer= ""
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
