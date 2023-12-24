\version "2.18.0"
\include "english.ly"
%\pointAndClickOff
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }
\markup{ ABC, ABC, A }

%#################################### Melody ########################
melody = \relative c'''{
  \clef treble
  \key a \major
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet
  
  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
    \mark \default
    gs16 a e g fs ds e8|
    gs16 a e g fs ds e8|
    gs16 a e g fs ds e g|
    fs16 ds e c cs a e'8|


  }
  \alternative {
    {fs16 ds e c cs a e'8| }
    {fs16 ds e c cs  gs a8^Fine|}
  }

  \repeat volta 2{
    \mark \default
    cs16 ds e fs g ds e g
    fs16 ds e g fs ds e8|
    cs16 ds e fs g ds e g
    fs16 ds e c cs a e'8|


  }
  \alternative {
    {fs16 ds e c cs a e'8| }
    {  fs16 ds e c cs gs a8|}

  }
  \repeat volta 2{
    % \break
    \mark \default
    \autoBeamOff a->a-> a-> \autoBeamOn e'16 fs|
    g16 ds e c cs a e'8|
    \autoBeamOff  a,8-> a-> a-> \autoBeamOn e'16 fs|
    g16 ds e c cs a e'8|

  }
  \alternative{
    {g16 ds e c cs a e'8|}
    {g16 ds e c cs gs a8|}
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  a2
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmonies
    }
    \new Staff
    \melody
  >>
  \header{
    title= "Balta"
    subtitle="Romania"
    composer= ""
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
