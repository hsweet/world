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
melody = \relative c'' {
  \clef treble
  \key g \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    g4 r \grace fs'8 g4
    g,4 r \grace fs'8 g4
    d4 r d
    cs4 \prall bf a

    g4 r \grace fs'8 g4
    g,4 r \grace fs'8 g4
    c, d ef
    d2. \prall

    g,4 r \grace fs'8 g4
    g,4 r \grace fs'8 g4
    d4 r d
    cs4 \prall bf a

    c4. \prall b8 c d
    bf4. \prall a8 bf c
    a4.\prall g8 a bf
    g2.
    \break
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    <<
      {
        d'2 d4
        f2 ef8 d
        c4. d8 ef f
        d2.

        d2 d4
        g4. f8 ef d
        c4. d8 ef f
        d2.
      }
      \\
      {
        bf2 bf4
        d2 c8 bf
        a4. bf8 c d
        bf2.|

        bf2 bf4
        ef4. d8 c bf
        a4. bf8 c d
        bf2.|

        d4. g,8 a b
        d4. g,8 a b
        d4 r d
        cs4.\prall bf8 a g
        \break
      }
    >>
  }
  \alternative {
    {
      d'4. g,8 a bf
      d4. g,8 a bf
      a4.\prall g8 a bf
      g2.
    }
    {
      c4.\prall b8 c d
      bf4.\prall a8 bf c
      a4.\prall g8 a bf
      g2.
    }

  }
  \repeat volta 2{
  \mark \default
    <<
      {
        bf'4. a8 g f
        ef4. d8 c bf
        d4. g8 fs g
        d2.|

        bf'4. a8 g f
        ef4. d8 c bf
        a4.\prall g8 a bf
        g2.
      }
      \\
      {
        g'4. fs8 ef d
        c4. bf8 a g
        bf4. bf8 a bf
        bf2.


        g'4.fs8 ef d
        c4. bf8 a g
        fs4. d8 cs d
        g2.
      }
    >>
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  g4:m
  s4*8
  g4:dim
  s4*2
  g4:m
  s4*5
  c4:m
  s4*2
  d4:7
  s4*2
  g4:m
  s4*8
  g4:dim
  s4*2
  c4:m
  s4*2
  g4:m s4*2
  d4
  s4*2
  bf4 %Gm ?
  s4*2
  %b
  bf4
  s4*5
  f4
  s4*2
  bf4
  s4*5
  ef4
  s4*2
  f4
  s4*2
  bf4
  s4*2
  g4:m
  s4*8
  g4:dim
  s4*2
  %1st end
  g4:m
  s4*5
  d4
  s4*2
  g4:m
  s4*2
  %second end
  c4:m
  s4*2
  g4:m
  s4*2
  d4
  s4*2
  g4:m
  s4*2
  %c
  g4:m
  s4*2
  c4:m
  s4*2
  d4:7
  s4*2
  g4:m
  s4*5
  c4:m
  s4*2
  d4
  s4*2
  g4:m


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
    title= "Biserka Hora"
    subtitle="Serbia"
    composer= ""
    instrument = "Violin"
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
