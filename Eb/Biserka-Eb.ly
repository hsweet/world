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

%#################################### Melody ########################
melody = \relative c' {
  \clef treble
  \key e \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    e4 r \grace ds'8 e4
    e,4 r \grace ds'8 e4
    b4 r b
    as4 \prall g fs

    e4 r \grace ds'8 e4
    e,4 r \grace ds'8 e4
    a, b c
    b2. \prall

    e,4 r \grace ds'8 e4
    e,4 r \grace ds'8 e4
    b4 r b
    as4 \prall g fs

    a4. \prall gs8 a b
    g4. \prall fs8 g a
    fs4.\prall e8 fs g
    e2.
    \break
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    <<
      {
        b'2 b4
        d2 c8 b
        a4. b8 c d
        b2.

        b2 b4
        e4. d8 c b
        a4. b8 c d
        b2.
      }
      \\
      {
        g2 g4
        b2 a8 g
        fs4. g8 a b
        g2.|

        g2 g4
        c4. b8 a g
        fs4. g8 a b
        g2.|

        b4. e,8 fs gs
        b4. e,8 fs gs
        b4 r b
        as4.\prall g8 fs e
        \break
      }
    >>
  }
  \alternative {
    {
      b'4. e,8 fs g
      b4. e,8 fs g
      fs4.\prall e8 fs g
      e2.
    }
    {
      a4.\prall gs8 a b
      g4.\prall fs8 g a
      fs4.\prall e8 fs g
      e2.
    }

  }
  \repeat volta 2{
  \mark \default
    <<
      {
        g'4. fs8 e d
        c4. b8 a g
        b4. e8 ds e
        b2.|

        g'4. fs8 e d
        c4. b8 a g
        fs4.\prall e8 fs g
        e2.
      }
      \\
      {
        e'4. ds8 c b
        a4. g8 fs e
        g4. g8 fs g
        g2.


        e'4.ds8 c b
        a4. g8 fs e
        ds4. b8 as b
        e2.
      }
    >>
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  e4:m
  s4*8
  e4:dim
  s4*2
  e4:m
  s4*5
  a4:m
  s4*2
  b4:7
  s4*2
  e4:m
  s4*8
  e4:dim
  s4*2
  a4:m
  s4*2
  e4:m s4*2
  b4
  s4*2
  g4 %Gm ?
  s4*2
  %b
  g4
  s4*5
  d4
  s4*2
  g4
  s4*5
  c4
  s4*2
  d4
  s4*2
  g4
  s4*2
  e4:m
  s4*8
  e4:dim
  s4*2
  %1st end
  e4:m
  s4*5
  b4
  s4*2
  e4:m
  s4*2
  %second end
  a4:m
  s4*2
  e4:m
  s4*2
  b4
  s4*2
  e4:m
  s4*2
  %c
  e4:m
  s4*2
  a4:m
  s4*2
  b4:7
  s4*2
  e4:m
  s4*5
  a4:m
  s4*2
  b4
  s4*2
  e4:m


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
    title= "Biserka Hora"
    subtitle="Serbia"
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
