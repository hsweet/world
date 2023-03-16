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
  \key d \minor
  \time 3/4
  \set Score.markFormatter = #format-mark-box-alphabet

  %\partial 16*3 a16 d f   %lead in notes

  \repeat volta 2{
  \mark \default
    d4 r \grace cs'8 d4
    d,4 r \grace cs'8 d4
    a4 r a
    gs4 \prall f e

    d4 r \grace cs'8 d4
    d,4 r \grace cs'8 d4
    g, a bf
    a2. \prall

    d,4 r \grace cs'8 d4
    d,4 r \grace cs'8 d4
    a4 r a
    gs4 \prall f e

    g4. \prall fs8 g a
    f4. \prall e8 f g
    e4.\prall d8 e f
    d2.
    \break
  }
  %\alternative { { }{ } }

  \repeat volta 2{
  \mark \default
    <<
      {
        a'2 a4
        c2 bf8 a
        g4. a8 bf c
        a2.

        a2 a4
        d4. c8 bf a
        g4. a8 bf c
        a2.
      }
      \\
      {
        f2 f4
        a2 g8 f
        e4. f8 g a
        f2.|

        f2 f4
        bf4. a8 g f
        e4. f8 g a
        f2.|

        a4. d,8 e fs
        a4. d,8 e fs
        a4 r a
        gs4.\prall f8 e d
        \break
      }
    >>
  }
  \alternative {
    {
      a'4. d,8 e f
      a4. d,8 e f
      e4.\prall d8 e f
      d2.
    }
    {
      g4.\prall fs8 g a
      f4.\prall e8 f g
      e4.\prall d8 e f
      d2.
    }

  }
  \repeat volta 2{
  \mark \default
    <<
      {
        f'4. e8 d c
        bf4. a8 g f
        a4. d8 cs d
        a2.|

        f'4. e8 d c
        bf4. a8 g f
        e4.\prall d8 e f
        d2.
      }
      \\
      {
        d'4. cs8 bf a
        g4. f8 e d
        f4. f8 e f
        f2.


        d'4.cs8 bf a
        g4. f8 e d
        cs4. a8 gs a
        d2.
      }
    >>
  }

}
%################################# Lyrics #####################
%\addlyrics{  }
%################################# Chords #######################
harmonies = \chordmode {
  d4:m
  s4*8
  d4:dim
  s4*2
  d4:m
  s4*5
  g4:m
  s4*2
  a4:7
  s4*2
  d4:m
  s4*8
  d4:dim
  s4*2
  g4:m
  s4*2
  d4:m s4*2
  a4
  s4*2
  f4 %Gm ?
  s4*2
  %b
  f4
  s4*5
  c4
  s4*2
  f4
  s4*5
  bf4
  s4*2
  c4
  s4*2
  f4
  s4*2
  d4:m
  s4*8
  d4:dim
  s4*2
  %1st end
  d4:m
  s4*5
  a4
  s4*2
  d4:m
  s4*2
  %second end
  g4:m
  s4*2
  d4:m
  s4*2
  a4
  s4*2
  d4:m
  s4*2
  %c
  d4:m
  s4*2
  g4:m
  s4*2
  a4:7
  s4*2
  d4:m
  s4*5
  g4:m
  s4*2
  a4
  s4*2
  d4:m


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
