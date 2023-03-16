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
  \key fs \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    es16 fs cs e ds bs cs8|
    es16 fs cs e ds bs cs8|
    es16 fs cs e ds bs cs e|
    ds16 bs cs a as fs cs'8|


  }
  \alternative {
    {ds16 bs cs a as fs cs'8| }
    {ds16 bs cs a as  es fs8^Fine|}
  }

  \repeat volta 2{
    \mark \default
    as16 bs cs ds e bs cs e
    ds16 bs cs e ds bs cs8|
    as16 bs cs ds e bs cs e
    ds16 bs cs a as fs cs'8|


  }
  \alternative {
    {ds16 bs cs a as fs cs'8| }
    {  ds16 bs cs a as es fs8|}

  }
  \repeat volta 2{
    % \break
    \mark \default
    \autoBeamOff fs->fs-> fs-> \autoBeamOn cs'16 ds|
    e16 bs cs a as fs cs'8|
    \autoBeamOff  fs,8-> fs-> fs-> \autoBeamOn cs'16 ds|
    e16 bs cs a as fs cs'8|

  }
  \alternative{
    {e16 bs cs a as fs cs'8|}
    {e16 bs cs a as es fs8|}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  fs2
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
