\version "2.18.0"
\include "english.ly"
\paper{
  tagline = ##f
  print-all-headers = ##t
  #(set-paper-size "letter")
}
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%\markup{ \italic{ " Updated " \date  }  }

\markup{ C section not written }

%#################################### Melody ########################
melody = \relative c''' {
  \clef treble
  \key fs \minor
  \time 2/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    cs8->  cs bs cs
    s2
    cs8-> cs bs cs
    s2

    b4 b8 b
    cs4. cs8
    fs,2~
    fs2
    \break
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    d'8-.  [d-. d-. e-.]
    fs8-. [fs-. e-. d-.]
    fs4 cs~
    cs4 cs

    cs8 [cs cs cs ] %was [f e e e]
    d4 cs
    \glissando a'2~
    a2

    d,8-.  [d-. d-. e-.]
    fs8-. fs-. e-. d-.
    fs4 cs~
    cs4 d8 cs

    cs4 cs %d4 d
    cs4 cs
    fs,2~
    fs2
  }
  % \alternative { { }{ } }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  fs2:m s2*3
  b2:m
  cs2
  fs2:m s2
  %b
  b2:m s2
  fs2:m s2
  cs2 s2
  fs2:m s2
  b2:m s2*2
  fs2:m s2
  cs2
  fs2:m

  %{old chords
   a2:m
    s2*3
    d2:m
    e2
    a2
    s2
    %b part
    d2:m
    s2
    a2
    s2*3
    f2
    s2
    d2:m
    s2*2
    a2:m
    s2
    e2
    a2:m
  %}

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
    title= "Romanscuago"
    subtitle=""
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
